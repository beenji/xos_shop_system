[@{*
********************************************************************************
* project    : XOS-Shop, open source e-commerce system
*              http://www.xos-shop.com
*
* template   : osc-table
* version    : 1.0.7 for XOS-Shop version 1.0 rc7s
* descrip    : oscommerce default template with css-buttons and tables for layout                                                                     
* filename   : product_listing_a.tpl
* author     : Hanspeter Zeller <hpz@xos-shop.com>
* copyright  : Copyright (c) 2007 Hanspeter Zeller
* license    : This file is part of XOS-Shop.
*
*              XOS-Shop is free software: you can redistribute it and/or modify
*              it under the terms of the GNU General Public License as published
*              by the Free Software Foundation, either version 3 of the License,
*              or (at your option) any later version.
*
*              XOS-Shop is distributed in the hope that it will be useful,
*              but WITHOUT ANY WARRANTY; without even the implied warranty of
*              MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
*              GNU General Public License for more details.
*
*              You should have received a copy of the GNU General Public License
*              along with XOS-Shop.  If not, see <http://www.gnu.org/licenses/>. 
********************************************************************************
*}@]

<!-- product_listing_a --> 
<script type="text/javascript">
/* <![CDATA[ */
  if(document.getElementById("advanced-search-and-results-heading") != null) {
    document.getElementById("advanced-search-and-results-heading").style.display = "block";
  }
/* ]]> */  
</script>
[@{if $listing}@]
          <div class="clear">&nbsp;</div> 
          <div>
            [@{if $link_switch_view}@]          
            <div class="smallText" style="float: left; padding: 3px;">                       
              <b>&nbsp;</b>     
              <div class="smallText" style="padding: 3px 20px 0 0; white-space: nowrap;">
                <a href="[@{$link_switch_view}@]" class="button-switch-view" style="float: left" title=" [@{#button_title_switch_view#}@] "><span>[@{#button_text_switch_view#}@]</span></a>                       
              </div>                                   
            </div> 
            [@{/if}@]            
            [@{if $pull_down_menu_display_products}@]          
            <div class="smallText" style="float: left; padding: 3px;">                       
              <b>[@{#text_products_per_page#}@]</b>     
              <div class="smallText" style="padding: 4px 20px 0 0; white-space: nowrap;">
                <script type="text/javascript">
                /* <![CDATA[ */
                  document.write('[@{$pull_down_menu_display_products}@]');
                /* ]]> */  
                </script>
                <noscript>
                  [@{$pull_down_menu_display_products_noscript_begin}@]<img src="[@{$images_path}@]pixel_trans.gif" alt="" width="1" height="10" /><input type="submit" value="[@{#small_button_text_view#}@]" /><img src="[@{$images_path}@]pixel_trans.gif" alt="" width="20" height="10" />[@{$pull_down_menu_display_products_noscript_end}@]
                </noscript>                         
              </div>                                   
            </div> 
            [@{/if}@]           
            [@{if $pull_down_menu}@]          
            <div class="smallText" style="float: left; padding: 3px;">                       
              <b>[@{#text_show#}@]</b>     
              <div class="smallText" style="padding: 4px 20px 0 0; white-space: nowrap;">
                <script type="text/javascript">
                /* <![CDATA[ */
                  document.write('[@{$pull_down_menu}@]');
                /* ]]> */  
                </script>
                <noscript>
                  [@{$pull_down_menu_noscript_begin}@]<img src="[@{$images_path}@]pixel_trans.gif" alt="" width="1" height="10" /><input type="submit" value="[@{#small_button_text_view#}@]" /><img src="[@{$images_path}@]pixel_trans.gif" alt="" width="20" height="10" />[@{$pull_down_menu_noscript_end}@]
                </noscript>                         
              </div>                                   
            </div> 
            [@{/if}@]                                                                                         
            <div class="clear">&nbsp;</div>                                
          </div>  
[@{if $nav_bar_top}@]
<table border="0" width="100%" cellspacing="0" cellpadding="2">
  <tr>
    <td nowrap="nowrap" class="smallText">[@{$nav_bar_number}@]</td>
    <td nowrap="nowrap" class="smallText" align="right">[@{$nav_bar_result}@]</td>
  </tr>
</table>
[@{/if}@]
<table border="0" width="100%" cellspacing="0" cellpadding="0">
  <tr>
    <td><img src="[@{$images_path}@]pixel_trans.gif" alt="" width="100%" height="4" /></td>
  </tr>
</table>
<table border="0" width="100%" cellspacing="0" cellpadding="2" class="productListing">
  <tr>
    [@{foreach item=heading from=$table_heading}@]
    [@{if $heading.case == 'model'}@]<td nowrap="nowrap" class="productListing-heading">&nbsp;[@{$heading.text}@]&nbsp;</td>[@{/if}@]
    [@{if $heading.case == 'name'}@]<td nowrap="nowrap" class="productListing-heading">&nbsp;[@{$heading.text}@]&nbsp;</td>[@{/if}@]
    [@{if $heading.case == 'info'}@]<td nowrap="nowrap" class="productListing-heading">&nbsp;[@{$heading.text}@]&nbsp;</td>[@{/if}@]
    [@{if $heading.case == 'packing_unit'}@]<td nowrap="nowrap" class="productListing-heading">&nbsp;[@{$heading.text}@]&nbsp;</td>[@{/if}@]
    [@{if $heading.case == 'manufacturer'}@]<td nowrap="nowrap" class="productListing-heading">&nbsp;[@{$heading.text}@]&nbsp;</td>[@{/if}@]
    [@{if $heading.case == 'price'}@]<td nowrap="nowrap" align="right" class="productListing-heading">&nbsp;[@{$heading.text}@]&nbsp;</td>[@{/if}@]
    [@{if $heading.case == 'quantity'}@]<td nowrap="nowrap" align="right" class="productListing-heading">&nbsp;[@{$heading.text}@]&nbsp;</td>[@{/if}@]
    [@{if $heading.case == 'weight'}@]<td nowrap="nowrap" align="right" class="productListing-heading">&nbsp;[@{$heading.text}@]&nbsp;</td>[@{/if}@]
    [@{if $heading.case == 'image'}@]<td nowrap="nowrap" align="center" class="productListing-heading">&nbsp;[@{$heading.text}@]&nbsp;</td>[@{/if}@]
    [@{if $heading.case == 'buy_now'}@]<td nowrap="nowrap" align="center" class="productListing-heading">&nbsp;[@{$heading.text}@]&nbsp;</td>[@{/if}@]
    [@{/foreach}@]
  </tr>
  [@{foreach name=outer item=table_data from=$table_data_list}@]
  [@{if (($smarty.foreach.outer.iteration-1)%2) == 0}@]
  <tr class="productListing-odd">
  [@{else}@]
  <tr class="productListing-even">
  [@{/if}@]
    [@{foreach name=inner item=data from=$table_data.table_inner}@]
    [@{if $data.case == 'model'}@]<td class="productListing-data">&nbsp;[@{$data.products_model}@]&nbsp;</td>[@{/if}@]
    [@{if $data.case == 'name'}@]<td class="productListing-data" style="padding: 0 6px 0 6px;"><a href="[@{$data.products_link}@]">[@{$data.products_name}@]</a></td>[@{/if}@]
    [@{if $data.case == 'info'}@]<td class="productListing-data">[@{$data.products_info}@]&nbsp;</td>[@{/if}@]
    [@{if $data.case == 'packing_unit'}@]<td class="productListing-data">&nbsp;[@{$data.products_p_unit}@]&nbsp;</td>[@{/if}@]
    [@{if $data.case == 'manufacturer'}@]<td class="productListing-data">&nbsp;[@{if $data.manufacturers_name}@]<a href="[@{$data.manufacturers_link}@]">[@{$data.manufacturers_name}@]</a>[@{/if}@]&nbsp;</td>[@{/if}@]        
    [@{if $data.case == 'price'}@]
    <td align="right" class="productListing-data">
      [@{if $data.price_breaks}@]
      <table border="0" cellspacing="0" cellpadding="0">
        <tr>          
          <td class="price-label price-label price-label-border-radius-top" colspan="2" align="right"><table border="0" cellspacing="0" cellpadding="0">             
            <tr>
              <td id="toggle_arrow_[@{$data.products_id}@]" nowrap="nowrap" align="right" class="productListing-data"><a><img onmouseover="this.style.cursor='pointer'" src="[@{$images_path}@]icon_arrow_down.gif" height="10" width="13" alt="" /></a>&nbsp;&nbsp;&nbsp;&nbsp;</td>
              <td nowrap="nowrap" align="right" class="productListing-data"><b>[@{if $data.price_special}@]<span class="text-deco-line-through">[@{$data.price}@]</span> <span class="productSpecialPrice">[@{$data.price_special}@]</span>[@{else}@][@{$data.price}@][@{/if}@]</b></td>
            </tr>
          </table></td>             
        </tr>
        <tr id="toggle_[@{$data.products_id}@]">
          <td class="price-label price-label price-label-border-radius-none" colspan="2" align="right"><table border="0" width="100%" cellspacing="0" cellpadding="0">                
            [@{foreach name=inner_inner item=price_breaks from=$data.price_breaks}@]                             
            [@{if $smarty.foreach.inner_inner.first}@]
            <tr>                       
              <td colspan="2" nowrap="nowrap" class="productListing-data" align="center" valign="bottom"><img src="[@{$images_path}@]pixel_trans.gif" alt="" width="100%" height="4" /><br />[@{#text_price_breaks#}@]<br /><img src="[@{$images_path}@]pixel_white.gif" alt="" width="100%" height="1" /></td>
            </tr>                      
            <tr>
              <td nowrap="nowrap" class="productListing-data" align="right" valign="top">[@{#text_quantity_in_price_breaks#}@]</td>
              <td nowrap="nowrap" class="productListing-data" align="center" valign="top">[@{#text_price_in_price_breaks#}@]</td>
            </tr>                                                                   
            [@{/if}@]                                                     
            <tr>
              <td nowrap="nowrap" align="right" class="productListing-data">[@{$price_breaks.qty}@]<sup>+</sup>&nbsp;&nbsp;</td>
              <td nowrap="nowrap" align="right" class="productListing-data"><b>[@{if $price_breaks.price_break_special}@]<span class="text-deco-line-through">[@{$price_breaks.price_break}@]</span> <span class="productSpecialPrice">[@{$price_breaks.price_break_special}@]</span>[@{else}@][@{$price_breaks.price_break}@][@{/if}@]</b></td>
            </tr>                 
            [@{/foreach}@]                
          </table></td>
        </tr>
        <tr>
          <td class="price-label price-label price-label-border-radius-bottom" nowrap="nowrap" align="right">
            <div class="productListing-data">
              [@{$data.tax_description|replace:'SMARTY_TAX_WITHOUT_VAT':#text_tax_without_vat#|replace:'SMARTY_TAX_NO_VAT':#text_tax_no_vat#|replace:'SMARTY_TAX_INC_VAT':#text_tax_inc_vat#|replace:'SMARTY_TAX_PLUS_VAT':#text_tax_plus_vat#}@]<br />
              [@{if $link_filename_popup_content_5}@]                 
                <script type="text/javascript">
                /* <![CDATA[ */
                  document.write('[@{#text_plus#}@]&nbsp;<a href="[@{$link_filename_popup_content_5}@]" class="lightbox-system-popup" target="_blank"><span class="text-deco-underline">[@{#text_shipping#}@]</span></a><br />');
                /* ]]> */   
                </script>
                <noscript>
                  [@{#text_plus#}@]&nbsp;<a href="[@{$link_filename_popup_content_5}@]" target="_blank"><span class="text-deco-underline">[@{#text_shipping#}@]</span></a><br />
                </noscript>
              [@{else}@]
                [@{#text_plus#}@]&nbsp;[@{#text_shipping#}@]<br />
              [@{/if}@]               
            </div>
          </td>
        </tr>        
      </table>
      <script type="text/javascript">
      /* <![CDATA[ */
        $('#toggle_arrow_[@{$data.products_id}@]').click(function() {
          $('#toggle_[@{$data.products_id}@]').toggle();
          return false;
        });
        $('#toggle_[@{$data.products_id}@]').css('display','none');
      /* ]]> */  
      </script>          
      [@{else}@]
      <table border="0" cellspacing="0" cellpadding="0">
        <tr>           
          <td class="price-label price-label price-label-border-radius-top" align="right"><table border="0" cellspacing="0" cellpadding="0">             
            <tr>
              <td nowrap="nowrap" align="right" class="productListing-data"><b>[@{if $data.price_special}@]<span class="text-deco-line-through">[@{$data.price}@]</span> <span class="productSpecialPrice">[@{$data.price_special}@]</span>[@{else}@][@{$data.price}@][@{/if}@]</b></td>
            </tr>
          </table></td>             
        </tr>        
        <tr>
          <td class="price-label price-label price-label-border-radius-bottom" nowrap="nowrap" align="right">
            <div class="productListing-data">
              [@{$data.tax_description|replace:'SMARTY_TAX_WITHOUT_VAT':#text_tax_without_vat#|replace:'SMARTY_TAX_NO_VAT':#text_tax_no_vat#|replace:'SMARTY_TAX_INC_VAT':#text_tax_inc_vat#|replace:'SMARTY_TAX_PLUS_VAT':#text_tax_plus_vat#}@]<br />
              [@{if $link_filename_popup_content_5}@]                 
                <script type="text/javascript">
                /* <![CDATA[ */
                  document.write('[@{#text_plus#}@]&nbsp;<a href="[@{$link_filename_popup_content_5}@]" class="lightbox-system-popup" target="_blank"><span class="text-deco-underline">[@{#text_shipping#}@]</span></a><br />');
                /* ]]> */   
                </script>
                <noscript>
                  [@{#text_plus#}@]&nbsp;<a href="[@{$link_filename_popup_content_5}@]" target="_blank"><span class="text-deco-underline">[@{#text_shipping#}@]</span></a><br />
                </noscript>
              [@{else}@]
                [@{#text_plus#}@]&nbsp;[@{#text_shipping#}@]<br />
              [@{/if}@]               
            </div>
          </td>
        </tr>        
      </table>                           
      [@{/if}@]                
      </td>
    [@{/if}@]     
    [@{if $data.case == 'quantity'}@]<td align="center" class="productListing-data">&nbsp;[@{$data.products_quantity}@]&nbsp;</td>[@{/if}@]
    [@{if $data.case == 'weight'}@]<td align="right" class="productListing-data">&nbsp;[@{$data.products_weight}@]kg&nbsp;</td>[@{/if}@]
    [@{if $data.case == 'image'}@]<td align="center" class="productListing-data">&nbsp;<a href="[@{$data.products_link_image}@]">[@{$data.products_image_small}@]</a>&nbsp;</td>[@{/if}@]
    [@{if $data.case == 'buy_now'}@]
      <td nowrap="nowrap" align="right" class="productListing-data">
        [@{$data.products_buy_form_begin}@][@{$data.products_hidden_field}@][@{$data.products_input_quantity}@]&nbsp;<br />
        <script type="text/javascript">
        /* <![CDATA[ */
          document.write('<a href="" onclick="[@{$data.form_name}@].submit(); return false" class="button-buy-now" style="float: right" title=" [@{#button_title_buy_now#}@] "><span>[@{#button_text_buy_now#}@]</span></a><input type="image" src="[@{$images_path}@]pixel_trans.gif" alt="" />')
        /* ]]> */  
        </script>
        <noscript>
          <input type="submit" value="[@{#button_text_buy_now#}@]" />
        </noscript>
        [@{$data.form_end}@]
      </td>
    [@{/if}@]
    [@{/foreach}@]
  </tr>
  [@{/foreach}@]
</table>
<table border="0" width="100%" cellspacing="0" cellpadding="0">
  <tr>
    <td><img src="[@{$images_path}@]pixel_trans.gif" alt="" width="100%" height="4" /></td>
  </tr>
</table>
[@{if $nav_bar_bottom}@]
<table border="0" width="100%" cellspacing="0" cellpadding="2">
  <tr>
    <td nowrap="nowrap" class="smallText">[@{$nav_bar_number}@]</td>
    <td nowrap="nowrap" class="smallText" align="right">[@{$nav_bar_result}@]</td>
  </tr>
</table>
[@{/if}@]
[@{else}@]
<table border="0" width="100%" cellspacing="0" cellpadding="2" class="productListing">
  <tr class="productListing-odd">
    <td class="productListing-data">[@{$text_no_products}@]</td>
  </tr>
</table> 
[@{/if}@]
<!-- product_listing_a_eof -->
