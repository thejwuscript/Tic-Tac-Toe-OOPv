# frozen_string_literal: true

require_relative '../lib/board'
require_relative '../lib/players'

describe Players do
  describe '#check_victory' do
    context 'Three cross on the first row' do
      subject(:cross_win) { Players.new('cross') }

      before do
        cross_win.moves = %w[C1 B1 A1]
      end

      it 'updates @winner from 0 to 1' do
        allow(cross_win).to receive(:puts)
        cross_win.check_victory
        expect(cross_win.winner).to eq(1)
      end

      it 'outputs winner message to the console' do
        expect { cross_win.check_victory }.to output(" \ncross wins the game!\n").to_stdout
      end
    end

    context 'Three circles diagonally' do
      subject(:circle_win) { described_class.new('circles') }

      before do
        circle_win.moves = %w[A1 B2 C3]
      end

      it 'updates @winner to 1' do
        allow(circle_win).to receive(:puts)
        circle_win.check_victory
        expect(circle_win.winner).to eq(1)
      end

      it 'outputs winner message to console' do
        expect { circle_win.check_victory }.to output(" \ncircles wins the game!\n").to_stdout
      end
    end

    context 'No winning positions' do
      subject(:no_winner) { described_class.new('cross') }

      before do
        no_winner.moves = %w[B2]
      end

      it 'does not change @winner value' do
        expect { no_winner.check_victory }.not_to change { no_winner.winner }
      end
    end
  end

  describe '#validate_move' do
    context 'when user input is B2' do
      subject(:good_move) { described_class.new('cross') }
      input = 'B2'

      before do
        good_move.input = input
        Players.class_variable_set(:@@all, { input => ' ' })
      end

      it 'stores the input in @moves' do
        good_move.validate_move
        expect(good_move.moves).to include(input)
      end
    end

    context 'when user input is invalid' do
      subject(:great_move) { described_class.new('cross') }

      before do
        great_move.input = 'F7'
        allow(great_move).to receive(:gets).and_return('B1')
        Players.class_variable_set(:@@all, { 'B1' => ' ' })
      end

      it 'outputs invalid message to console' do
        expect { great_move.validate_move }.to output("Invalid play. Try again.\n").to_stdout
      end
    end
  end
end

describe Board do
  describe '.change_value' do
    it 'updates @@all hash to the specified key-value pair' do
      key = 'A2'
      value = 'O'
      all = Board.class_variable_set(:@@all, {})
      Board.change_value(key, value)
      expect(all).to eq({ 'A2' => 'O' })
    end
  end
end
