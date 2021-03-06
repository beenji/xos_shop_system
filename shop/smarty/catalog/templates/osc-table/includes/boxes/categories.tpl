[@{*
********************************************************************************
* project    : XOS-Shop, open source e-commerce system
*              http://www.xos-shop.com
*
* template   : osc-table
* version    : 1.0.7 for XOS-Shop version 1.0 rc7s
* descrip    : oscommerce default template with css-buttons and tables for layout                                                                     
* filename   : categories.tpl
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

<!-- categories -->
      <tr>
        <td>
          <table border="0" width="100%" cellspacing="0" cellpadding="0">
            <tr>
              <td height="14" class="infoBoxHeading"><img src="[@{$images_path}@]corner_left.gif" alt="" /></td>
              <td width="100%" height="14" class="infoBoxHeading">[@{#box_heading_page_tree#}@]</td>
              <td height="14" class="infoBoxHeading" nowrap="nowrap"><img src="[@{$images_path}@]pixel_trans.gif" alt="" width="11" height="14" /></td>
            </tr>
          </table>
          <table border="0" width="100%" cellspacing="0" cellpadding="1" class="infoBox">
            <tr>
              <td><table border="0" width="100%" cellspacing="0" cellpadding="1" class="infoBoxContents">                                
                <tr>
                  <td>
                    <div class="info-box-contents" style="padding: 6px 0 6px 0;">
                      <ul class="ul-cat-outer">
                      [@{foreach name=outer item=category from=$boxes_categories_tabs_full_categories_tree}@]
                        [@{if $category.level_will_change == '+1'}@]
                        <li class="[@{$category.class_name}@]" style="position: relative; z-index: [@{1300 - $smarty.foreach.outer.iteration}@];"><a href="[@{$category.href_link}@]">[@{$category.name}@][@{if $category.count_products}@]&nbsp;([@{$category.count_products}@])[@{/if}@]</a><div class="clear">&nbsp;</div><ul class="ul-cat-inner">
                        [@{elseif $category.level_will_change == '-1'}@]
                        <li class="[@{$category.class_name}@]"><a href="[@{$category.href_link}@]">[@{$category.name}@][@{if $category.count_products}@]&nbsp;([@{$category.count_products}@])[@{/if}@]</a></li></ul></li>                    
                        [@{elseif $category.level_will_change == '-2'}@]
                        <li class="[@{$category.class_name}@]"><a href="[@{$category.href_link}@]">[@{$category.name}@][@{if $category.count_products}@]&nbsp;([@{$category.count_products}@])[@{/if}@]</a></li></ul></li></ul></li>                    
                        [@{elseif $category.level_will_change == '-3'}@]
                        <li class="[@{$category.class_name}@]"><a href="[@{$category.href_link}@]">[@{$category.name}@][@{if $category.count_products}@]&nbsp;([@{$category.count_products}@])[@{/if}@]</a></li></ul></li></ul></li></ul></li>                                                             
                        [@{else}@]                                        
                        <li class="[@{$category.class_name}@]"><a href="[@{$category.href_link}@]">[@{$category.name}@][@{if $category.count_products}@]&nbsp;([@{$category.count_products}@])[@{/if}@]</a></li>  
                        [@{/if}@]
                      [@{foreachelse}@]
                        <li></li>  
                      [@{/foreach}@]
                      </ul>              
                    </div>
                    <div class="clear">&nbsp;</div>                
                  </td>
                </tr>                                                
              </table></td>
            </tr>
          </table>
        </td>
      </tr>
<!-- categories_eof -->
