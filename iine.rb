# -*- coding: utf-8 -*-
# みくかわいいようゎあああああああああああああああああああああああああ

Module.new do
  Plugin.create(:angel_miku).add_event_filter(:command){ |menu|
    menu[:angel_miku] = {
      :slug => :angel_miku,
      :name => '俺のミクがこんなにかわいい',
      :condition => lambda{ |postbox| true },
      :exec => lambda{ |postbox| Post.services.first.update(:message => "ミクかわいいよミク") },
      :visible => true,
      :role => :postbox }
    [menu]
  }
end
