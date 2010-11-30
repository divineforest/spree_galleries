class SpreeGalleriesHooks < Spree::ThemeSupport::HookListener
  insert_after :admin_tabs do
    %(<%=  tab(:galleries)  %>)
  end
end
