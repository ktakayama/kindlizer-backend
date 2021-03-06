# -*- coding: utf-8 -*-

ENV['TDIARY_TOP'] = 'http://sho.tdiary.net/'

require File.expand_path('../../../../lib/kindlizer/generator/tdiary', __FILE__ )
require 'tmpdir'

describe 'tdiary generator' do
	context 'normal' do
		it 'makes OPF file' do
			Dir.mktmpdir do |dir|
				Kindlizer::Generator::Tdiary::new( dir ).generate( Time::now ) do |opf|
					opf.should eq "#{dir}/tdiary.opf"
				end
			end
		end
	end
end
