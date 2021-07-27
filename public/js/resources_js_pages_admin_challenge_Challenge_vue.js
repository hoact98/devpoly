(self["webpackChunk"] = self["webpackChunk"] || []).push([["resources_js_pages_admin_challenge_Challenge_vue"],{

/***/ "./node_modules/babel-loader/lib/index.js??clonedRuleSet-5[0].rules[0].use[0]!./node_modules/vue-loader/lib/index.js??vue-loader-options!./resources/js/components/AdminFooter.vue?vue&type=script&lang=js&":
/*!******************************************************************************************************************************************************************************************************************!*\
  !*** ./node_modules/babel-loader/lib/index.js??clonedRuleSet-5[0].rules[0].use[0]!./node_modules/vue-loader/lib/index.js??vue-loader-options!./resources/js/components/AdminFooter.vue?vue&type=script&lang=js& ***!
  \******************************************************************************************************************************************************************************************************************/
/***/ ((__unused_webpack_module, __webpack_exports__, __webpack_require__) => {

"use strict";
__webpack_require__.r(__webpack_exports__);
/* harmony export */ __webpack_require__.d(__webpack_exports__, {
/* harmony export */   "default": () => (__WEBPACK_DEFAULT_EXPORT__)
/* harmony export */ });
/* harmony import */ var _public_assets_js_app__WEBPACK_IMPORTED_MODULE_0__ = __webpack_require__(/*! ../../../public/assets/js/app */ "./public/assets/js/app.js");
/* harmony import */ var _public_assets_js_app__WEBPACK_IMPORTED_MODULE_0___default = /*#__PURE__*/__webpack_require__.n(_public_assets_js_app__WEBPACK_IMPORTED_MODULE_0__);
//
//
//
//
//
//
//
//
//
//
//
//
//
//

/* harmony default export */ const __WEBPACK_DEFAULT_EXPORT__ = ({
  name: 'admin-footer'
});

/***/ }),

/***/ "./node_modules/babel-loader/lib/index.js??clonedRuleSet-5[0].rules[0].use[0]!./node_modules/vue-loader/lib/index.js??vue-loader-options!./resources/js/components/TableButton.vue?vue&type=script&lang=js&":
/*!******************************************************************************************************************************************************************************************************************!*\
  !*** ./node_modules/babel-loader/lib/index.js??clonedRuleSet-5[0].rules[0].use[0]!./node_modules/vue-loader/lib/index.js??vue-loader-options!./resources/js/components/TableButton.vue?vue&type=script&lang=js& ***!
  \******************************************************************************************************************************************************************************************************************/
/***/ ((__unused_webpack_module, __webpack_exports__, __webpack_require__) => {

"use strict";
__webpack_require__.r(__webpack_exports__);
/* harmony export */ __webpack_require__.d(__webpack_exports__, {
/* harmony export */   "default": () => (__WEBPACK_DEFAULT_EXPORT__)
/* harmony export */ });
//
//
//
//
//
//
//
//
//
//
//
//
//
/* harmony default export */ const __WEBPACK_DEFAULT_EXPORT__ = ({
  props: {
    data: {},
    name: '',
    click: {},
    meta: {},
    classes: {}
  }
});

/***/ }),

/***/ "./node_modules/babel-loader/lib/index.js??clonedRuleSet-5[0].rules[0].use[0]!./node_modules/vue-loader/lib/index.js??vue-loader-options!./resources/js/pages/admin/challenge/Challenge.vue?vue&type=script&lang=js&":
/*!***************************************************************************************************************************************************************************************************************************!*\
  !*** ./node_modules/babel-loader/lib/index.js??clonedRuleSet-5[0].rules[0].use[0]!./node_modules/vue-loader/lib/index.js??vue-loader-options!./resources/js/pages/admin/challenge/Challenge.vue?vue&type=script&lang=js& ***!
  \***************************************************************************************************************************************************************************************************************************/
/***/ ((__unused_webpack_module, __webpack_exports__, __webpack_require__) => {

"use strict";
__webpack_require__.r(__webpack_exports__);
/* harmony export */ __webpack_require__.d(__webpack_exports__, {
/* harmony export */   "default": () => (__WEBPACK_DEFAULT_EXPORT__)
/* harmony export */ });
/* harmony import */ var _components_AdminFooter_vue__WEBPACK_IMPORTED_MODULE_0__ = __webpack_require__(/*! ../../../components/AdminFooter.vue */ "./resources/js/components/AdminFooter.vue");
/* harmony import */ var _components_TableButton_vue__WEBPACK_IMPORTED_MODULE_1__ = __webpack_require__(/*! ../../../components/TableButton.vue */ "./resources/js/components/TableButton.vue");
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//


/* harmony default export */ const __WEBPACK_DEFAULT_EXPORT__ = ({
  data: function data() {
    return {
      title: "Thử thách",
      data: {},
      tableProps: {
        search: '',
        length: 10,
        column: 'id',
        dir: 'desc'
      },
      columns: [{
        label: 'ID',
        name: 'id',
        orderable: true
      }, {
        label: 'Tiêu đề',
        name: 'title',
        orderable: true
      }, {
        label: 'Ngôn ngữ',
        name: 'language',
        orderable: true
      }, {
        label: 'Danh mục',
        name: 'category.name',
        orderable: true
      }, {
        label: 'Cấp độ',
        name: 'level',
        orderable: true
      }, {
        label: 'Action',
        name: 'edit.challenge',
        orderable: false,
        component: _components_TableButton_vue__WEBPACK_IMPORTED_MODULE_1__.default,
        event: "click",
        handler: this.deleteChallenge
      }]
    };
  },
  components: {
    Footer: _components_AdminFooter_vue__WEBPACK_IMPORTED_MODULE_0__.default,
    TableButton: _components_TableButton_vue__WEBPACK_IMPORTED_MODULE_1__.default
  },
  created: function created() {
    this.getData();
  },
  methods: {
    getData: function getData() {
      var _this = this;

      var url = arguments.length > 0 && arguments[0] !== undefined ? arguments[0] : route("challenges");
      var options = arguments.length > 1 && arguments[1] !== undefined ? arguments[1] : this.tableProps;
      axios.get(url, {
        params: options
      }).then(function (response) {
        var result = response.data;

        for (var i in result['data']) {
          result['data'][i].key = Number(i) + 1;
        }

        _this.data = result;
      }) // eslint-disable-next-line
      ["catch"](function (errors) {//Handle Errors
      });
    },
    reloadTable: function reloadTable(tableProps) {
      this.getData(route("challenges"), tableProps);
    },
    deleteChallenge: function deleteChallenge(id) {
      var _this2 = this;

      Swal.fire({
        title: "Are you sure?",
        text: "You won't be able to revert this!",
        icon: "warning",
        showCancelButton: true,
        confirmButtonColor: "#3085d6",
        cancelButtonColor: "#d33",
        confirmButtonText: "Yes, delete it!"
      }).then(function (result) {
        if (result.value) {
          //Send Request to server
          _this2.$store.dispatch("challenge/deletechallenge", id);

          _this2.getData();
        }
      });
    }
  }
});

/***/ }),

/***/ "./public/assets/js/app.js":
/*!*********************************!*\
  !*** ./public/assets/js/app.js ***!
  \*********************************/
/***/ (() => {

var APP = function APP() {
  // PATHS
  // ======================
  //this.ASSETS_PATH = '../../assets/';
  this.ASSETS_PATH = './assets/';
  this.SERVER_PATH = this.ASSETS_PATH + 'demo/server/'; // GLOBAL HELPERS
  // ======================

  this.is_touch_device = function () {
    return !!('ontouchstart' in window) || !!('onmsgesturechange' in window);
  };
};

var APP = new APP(); // APP UI SETTINGS
// ======================

APP.UI = {
  scrollTop: 0 // Minimal scrolling to show scrollTop button

}; // PAGE PRELOADING ANIMATION

$(window).on('load', function () {
  setTimeout(function () {
    $('.preloader-backdrop').fadeOut(200);
    $('body').addClass('has-animation');
  }, 0);
}); // Hide sidebar on small screen

$(window).on('load resize scroll', function () {
  if ($(this).width() < 992) {
    $('body').addClass('sidebar-mini');
  }
});
$(function () {
  // SIDEBAR ACTIVATE METISMENU
  $(".metismenu").metisMenu(); // Activate Tooltips

  $('[data-toggle="tooltip"]').tooltip(); // Activate Popovers

  $('[data-toggle="popover"]').popover(); // Activate slimscroll

  $('.scroller').each(function () {
    $(this).slimScroll({
      height: $(this).attr('data-height'),
      color: $(this).attr('data-color'),
      railOpacity: '0.9'
    });
  }); // TOGGLE THEME-CONFIG BOX    

  $('.theme-config-toggle').on('click', function () {
    $(this).parents('.theme-config').toggleClass('opened');
  }); // LAYOUT SETTINGS
  // ======================
  // SIDEBAR TOGGLE ACTION

  $('.js-sidebar-toggler').click(function () {
    $('body').toggleClass('sidebar-mini');
  }); // fixed layout

  $('#_fixedlayout').change(function () {
    if ($(this).is(':checked')) {
      $('body').addClass('fixed-layout');
      $('#sidebar-collapse').slimScroll({
        height: '100%',
        railOpacity: '0.9'
      });
    } else {
      $('#sidebar-collapse').slimScroll({
        destroy: true
      }).css({
        overflow: 'visible',
        height: 'auto'
      });
      $('body').removeClass('fixed-layout');
    }
  }); // fixed navbar

  $('#_fixedNavbar').change(function () {
    if ($(this).is(':checked')) $('body').addClass('fixed-navbar');else $('body').removeClass('fixed-navbar');
  }); // Boxed layout

  $("[name='layout-style']").change(function () {
    if (+$(this).val()) $('body').addClass('boxed-layout');else $('body').removeClass('boxed-layout');
  }); // THEMES CHANGE
  // ======================

  $('.color-skin-box input:radio').change(function () {
    var val = $(this).val();

    if (val != 'default') {
      if (!$('#theme-style').length) {
        $('head').append("<link href='assets/css/themes/" + val + ".css' rel='stylesheet' id='theme-style' >");
      } else $('#theme-style').attr('href', 'assets/css/themes/' + val + '.css');
    } else $('#theme-style').remove();
  }); // BACK TO TOP

  $(window).scroll(function () {
    if ($(this).scrollTop() > APP.UI.scrollTop) $('.to-top').fadeIn();else $('.to-top').fadeOut();
  });
  $('.to-top').click(function (e) {
    $("html, body").animate({
      scrollTop: 0
    }, 500);
  }); // PANEL ACTIONS
  // ======================

  $('.ibox-collapse').click(function () {
    var ibox = $(this).closest('div.ibox');
    ibox.toggleClass('collapsed-mode').children('.ibox-body').slideToggle(200);
  });
  $('.ibox-remove').click(function () {
    $(this).closest('div.ibox').remove();
  });
  $('.fullscreen-link').click(function () {
    if ($('body').hasClass('fullscreen-mode')) {
      $('body').removeClass('fullscreen-mode');
      $(this).closest('div.ibox').removeClass('ibox-fullscreen');
      $(window).off('keydown', toggleFullscreen);
    } else {
      $('body').addClass('fullscreen-mode');
      $(this).closest('div.ibox').addClass('ibox-fullscreen');
      $(window).on('keydown', toggleFullscreen);
    }
  });

  function toggleFullscreen(e) {
    // pressing the ESC key - KEY_ESC = 27 
    if (e.which == 27) {
      $('body').removeClass('fullscreen-mode');
      $('.ibox-fullscreen').removeClass('ibox-fullscreen');
      $(window).off('keydown', toggleFullscreen);
    }
  } // Backdrop functional


  $.fn.backdrop = function () {
    $(this).toggleClass('shined');
    $('body').toggleClass('has-backdrop');
    return $(this);
  };

  $('.backdrop').click(closeShined);

  function closeShined() {
    $('body').removeClass('has-backdrop');
    $('.shined').removeClass('shined');
  }
}); //== VENDOR PLUGINS OPTIONS

$(function () {
  // Timepicker
  if ($.fn.timepicker) {
    $.fn.timepicker.defaults = $.extend(!0, {}, $.fn.timepicker.defaults, {
      icons: {
        up: "fa fa-angle-up",
        down: "fa fa-angle-down"
      }
    });
  }
});

/***/ }),

/***/ "./resources/js/components/AdminFooter.vue":
/*!*************************************************!*\
  !*** ./resources/js/components/AdminFooter.vue ***!
  \*************************************************/
/***/ ((__unused_webpack_module, __webpack_exports__, __webpack_require__) => {

"use strict";
__webpack_require__.r(__webpack_exports__);
/* harmony export */ __webpack_require__.d(__webpack_exports__, {
/* harmony export */   "default": () => (__WEBPACK_DEFAULT_EXPORT__)
/* harmony export */ });
/* harmony import */ var _AdminFooter_vue_vue_type_template_id_a66a98a2___WEBPACK_IMPORTED_MODULE_0__ = __webpack_require__(/*! ./AdminFooter.vue?vue&type=template&id=a66a98a2& */ "./resources/js/components/AdminFooter.vue?vue&type=template&id=a66a98a2&");
/* harmony import */ var _AdminFooter_vue_vue_type_script_lang_js___WEBPACK_IMPORTED_MODULE_1__ = __webpack_require__(/*! ./AdminFooter.vue?vue&type=script&lang=js& */ "./resources/js/components/AdminFooter.vue?vue&type=script&lang=js&");
/* harmony import */ var _node_modules_vue_loader_lib_runtime_componentNormalizer_js__WEBPACK_IMPORTED_MODULE_2__ = __webpack_require__(/*! !../../../node_modules/vue-loader/lib/runtime/componentNormalizer.js */ "./node_modules/vue-loader/lib/runtime/componentNormalizer.js");





/* normalize component */
;
var component = (0,_node_modules_vue_loader_lib_runtime_componentNormalizer_js__WEBPACK_IMPORTED_MODULE_2__.default)(
  _AdminFooter_vue_vue_type_script_lang_js___WEBPACK_IMPORTED_MODULE_1__.default,
  _AdminFooter_vue_vue_type_template_id_a66a98a2___WEBPACK_IMPORTED_MODULE_0__.render,
  _AdminFooter_vue_vue_type_template_id_a66a98a2___WEBPACK_IMPORTED_MODULE_0__.staticRenderFns,
  false,
  null,
  null,
  null
  
)

/* hot reload */
if (false) { var api; }
component.options.__file = "resources/js/components/AdminFooter.vue"
/* harmony default export */ const __WEBPACK_DEFAULT_EXPORT__ = (component.exports);

/***/ }),

/***/ "./resources/js/components/TableButton.vue":
/*!*************************************************!*\
  !*** ./resources/js/components/TableButton.vue ***!
  \*************************************************/
/***/ ((__unused_webpack_module, __webpack_exports__, __webpack_require__) => {

"use strict";
__webpack_require__.r(__webpack_exports__);
/* harmony export */ __webpack_require__.d(__webpack_exports__, {
/* harmony export */   "default": () => (__WEBPACK_DEFAULT_EXPORT__)
/* harmony export */ });
/* harmony import */ var _TableButton_vue_vue_type_template_id_0e966785___WEBPACK_IMPORTED_MODULE_0__ = __webpack_require__(/*! ./TableButton.vue?vue&type=template&id=0e966785& */ "./resources/js/components/TableButton.vue?vue&type=template&id=0e966785&");
/* harmony import */ var _TableButton_vue_vue_type_script_lang_js___WEBPACK_IMPORTED_MODULE_1__ = __webpack_require__(/*! ./TableButton.vue?vue&type=script&lang=js& */ "./resources/js/components/TableButton.vue?vue&type=script&lang=js&");
/* harmony import */ var _node_modules_vue_loader_lib_runtime_componentNormalizer_js__WEBPACK_IMPORTED_MODULE_2__ = __webpack_require__(/*! !../../../node_modules/vue-loader/lib/runtime/componentNormalizer.js */ "./node_modules/vue-loader/lib/runtime/componentNormalizer.js");





/* normalize component */
;
var component = (0,_node_modules_vue_loader_lib_runtime_componentNormalizer_js__WEBPACK_IMPORTED_MODULE_2__.default)(
  _TableButton_vue_vue_type_script_lang_js___WEBPACK_IMPORTED_MODULE_1__.default,
  _TableButton_vue_vue_type_template_id_0e966785___WEBPACK_IMPORTED_MODULE_0__.render,
  _TableButton_vue_vue_type_template_id_0e966785___WEBPACK_IMPORTED_MODULE_0__.staticRenderFns,
  false,
  null,
  null,
  null
  
)

/* hot reload */
if (false) { var api; }
component.options.__file = "resources/js/components/TableButton.vue"
/* harmony default export */ const __WEBPACK_DEFAULT_EXPORT__ = (component.exports);

/***/ }),

/***/ "./resources/js/pages/admin/challenge/Challenge.vue":
/*!**********************************************************!*\
  !*** ./resources/js/pages/admin/challenge/Challenge.vue ***!
  \**********************************************************/
/***/ ((__unused_webpack_module, __webpack_exports__, __webpack_require__) => {

"use strict";
__webpack_require__.r(__webpack_exports__);
/* harmony export */ __webpack_require__.d(__webpack_exports__, {
/* harmony export */   "default": () => (__WEBPACK_DEFAULT_EXPORT__)
/* harmony export */ });
/* harmony import */ var _Challenge_vue_vue_type_template_id_64e5f384___WEBPACK_IMPORTED_MODULE_0__ = __webpack_require__(/*! ./Challenge.vue?vue&type=template&id=64e5f384& */ "./resources/js/pages/admin/challenge/Challenge.vue?vue&type=template&id=64e5f384&");
/* harmony import */ var _Challenge_vue_vue_type_script_lang_js___WEBPACK_IMPORTED_MODULE_1__ = __webpack_require__(/*! ./Challenge.vue?vue&type=script&lang=js& */ "./resources/js/pages/admin/challenge/Challenge.vue?vue&type=script&lang=js&");
/* harmony import */ var _node_modules_vue_loader_lib_runtime_componentNormalizer_js__WEBPACK_IMPORTED_MODULE_2__ = __webpack_require__(/*! !../../../../../node_modules/vue-loader/lib/runtime/componentNormalizer.js */ "./node_modules/vue-loader/lib/runtime/componentNormalizer.js");





/* normalize component */
;
var component = (0,_node_modules_vue_loader_lib_runtime_componentNormalizer_js__WEBPACK_IMPORTED_MODULE_2__.default)(
  _Challenge_vue_vue_type_script_lang_js___WEBPACK_IMPORTED_MODULE_1__.default,
  _Challenge_vue_vue_type_template_id_64e5f384___WEBPACK_IMPORTED_MODULE_0__.render,
  _Challenge_vue_vue_type_template_id_64e5f384___WEBPACK_IMPORTED_MODULE_0__.staticRenderFns,
  false,
  null,
  null,
  null
  
)

/* hot reload */
if (false) { var api; }
component.options.__file = "resources/js/pages/admin/challenge/Challenge.vue"
/* harmony default export */ const __WEBPACK_DEFAULT_EXPORT__ = (component.exports);

/***/ }),

/***/ "./resources/js/components/AdminFooter.vue?vue&type=script&lang=js&":
/*!**************************************************************************!*\
  !*** ./resources/js/components/AdminFooter.vue?vue&type=script&lang=js& ***!
  \**************************************************************************/
/***/ ((__unused_webpack_module, __webpack_exports__, __webpack_require__) => {

"use strict";
__webpack_require__.r(__webpack_exports__);
/* harmony export */ __webpack_require__.d(__webpack_exports__, {
/* harmony export */   "default": () => (__WEBPACK_DEFAULT_EXPORT__)
/* harmony export */ });
/* harmony import */ var _node_modules_babel_loader_lib_index_js_clonedRuleSet_5_0_rules_0_use_0_node_modules_vue_loader_lib_index_js_vue_loader_options_AdminFooter_vue_vue_type_script_lang_js___WEBPACK_IMPORTED_MODULE_0__ = __webpack_require__(/*! -!../../../node_modules/babel-loader/lib/index.js??clonedRuleSet-5[0].rules[0].use[0]!../../../node_modules/vue-loader/lib/index.js??vue-loader-options!./AdminFooter.vue?vue&type=script&lang=js& */ "./node_modules/babel-loader/lib/index.js??clonedRuleSet-5[0].rules[0].use[0]!./node_modules/vue-loader/lib/index.js??vue-loader-options!./resources/js/components/AdminFooter.vue?vue&type=script&lang=js&");
 /* harmony default export */ const __WEBPACK_DEFAULT_EXPORT__ = (_node_modules_babel_loader_lib_index_js_clonedRuleSet_5_0_rules_0_use_0_node_modules_vue_loader_lib_index_js_vue_loader_options_AdminFooter_vue_vue_type_script_lang_js___WEBPACK_IMPORTED_MODULE_0__.default); 

/***/ }),

/***/ "./resources/js/components/TableButton.vue?vue&type=script&lang=js&":
/*!**************************************************************************!*\
  !*** ./resources/js/components/TableButton.vue?vue&type=script&lang=js& ***!
  \**************************************************************************/
/***/ ((__unused_webpack_module, __webpack_exports__, __webpack_require__) => {

"use strict";
__webpack_require__.r(__webpack_exports__);
/* harmony export */ __webpack_require__.d(__webpack_exports__, {
/* harmony export */   "default": () => (__WEBPACK_DEFAULT_EXPORT__)
/* harmony export */ });
/* harmony import */ var _node_modules_babel_loader_lib_index_js_clonedRuleSet_5_0_rules_0_use_0_node_modules_vue_loader_lib_index_js_vue_loader_options_TableButton_vue_vue_type_script_lang_js___WEBPACK_IMPORTED_MODULE_0__ = __webpack_require__(/*! -!../../../node_modules/babel-loader/lib/index.js??clonedRuleSet-5[0].rules[0].use[0]!../../../node_modules/vue-loader/lib/index.js??vue-loader-options!./TableButton.vue?vue&type=script&lang=js& */ "./node_modules/babel-loader/lib/index.js??clonedRuleSet-5[0].rules[0].use[0]!./node_modules/vue-loader/lib/index.js??vue-loader-options!./resources/js/components/TableButton.vue?vue&type=script&lang=js&");
 /* harmony default export */ const __WEBPACK_DEFAULT_EXPORT__ = (_node_modules_babel_loader_lib_index_js_clonedRuleSet_5_0_rules_0_use_0_node_modules_vue_loader_lib_index_js_vue_loader_options_TableButton_vue_vue_type_script_lang_js___WEBPACK_IMPORTED_MODULE_0__.default); 

/***/ }),

/***/ "./resources/js/pages/admin/challenge/Challenge.vue?vue&type=script&lang=js&":
/*!***********************************************************************************!*\
  !*** ./resources/js/pages/admin/challenge/Challenge.vue?vue&type=script&lang=js& ***!
  \***********************************************************************************/
/***/ ((__unused_webpack_module, __webpack_exports__, __webpack_require__) => {

"use strict";
__webpack_require__.r(__webpack_exports__);
/* harmony export */ __webpack_require__.d(__webpack_exports__, {
/* harmony export */   "default": () => (__WEBPACK_DEFAULT_EXPORT__)
/* harmony export */ });
/* harmony import */ var _node_modules_babel_loader_lib_index_js_clonedRuleSet_5_0_rules_0_use_0_node_modules_vue_loader_lib_index_js_vue_loader_options_Challenge_vue_vue_type_script_lang_js___WEBPACK_IMPORTED_MODULE_0__ = __webpack_require__(/*! -!../../../../../node_modules/babel-loader/lib/index.js??clonedRuleSet-5[0].rules[0].use[0]!../../../../../node_modules/vue-loader/lib/index.js??vue-loader-options!./Challenge.vue?vue&type=script&lang=js& */ "./node_modules/babel-loader/lib/index.js??clonedRuleSet-5[0].rules[0].use[0]!./node_modules/vue-loader/lib/index.js??vue-loader-options!./resources/js/pages/admin/challenge/Challenge.vue?vue&type=script&lang=js&");
 /* harmony default export */ const __WEBPACK_DEFAULT_EXPORT__ = (_node_modules_babel_loader_lib_index_js_clonedRuleSet_5_0_rules_0_use_0_node_modules_vue_loader_lib_index_js_vue_loader_options_Challenge_vue_vue_type_script_lang_js___WEBPACK_IMPORTED_MODULE_0__.default); 

/***/ }),

/***/ "./resources/js/components/AdminFooter.vue?vue&type=template&id=a66a98a2&":
/*!********************************************************************************!*\
  !*** ./resources/js/components/AdminFooter.vue?vue&type=template&id=a66a98a2& ***!
  \********************************************************************************/
/***/ ((__unused_webpack_module, __webpack_exports__, __webpack_require__) => {

"use strict";
__webpack_require__.r(__webpack_exports__);
/* harmony export */ __webpack_require__.d(__webpack_exports__, {
/* harmony export */   "render": () => (/* reexport safe */ _node_modules_vue_loader_lib_loaders_templateLoader_js_vue_loader_options_node_modules_vue_loader_lib_index_js_vue_loader_options_AdminFooter_vue_vue_type_template_id_a66a98a2___WEBPACK_IMPORTED_MODULE_0__.render),
/* harmony export */   "staticRenderFns": () => (/* reexport safe */ _node_modules_vue_loader_lib_loaders_templateLoader_js_vue_loader_options_node_modules_vue_loader_lib_index_js_vue_loader_options_AdminFooter_vue_vue_type_template_id_a66a98a2___WEBPACK_IMPORTED_MODULE_0__.staticRenderFns)
/* harmony export */ });
/* harmony import */ var _node_modules_vue_loader_lib_loaders_templateLoader_js_vue_loader_options_node_modules_vue_loader_lib_index_js_vue_loader_options_AdminFooter_vue_vue_type_template_id_a66a98a2___WEBPACK_IMPORTED_MODULE_0__ = __webpack_require__(/*! -!../../../node_modules/vue-loader/lib/loaders/templateLoader.js??vue-loader-options!../../../node_modules/vue-loader/lib/index.js??vue-loader-options!./AdminFooter.vue?vue&type=template&id=a66a98a2& */ "./node_modules/vue-loader/lib/loaders/templateLoader.js??vue-loader-options!./node_modules/vue-loader/lib/index.js??vue-loader-options!./resources/js/components/AdminFooter.vue?vue&type=template&id=a66a98a2&");


/***/ }),

/***/ "./resources/js/components/TableButton.vue?vue&type=template&id=0e966785&":
/*!********************************************************************************!*\
  !*** ./resources/js/components/TableButton.vue?vue&type=template&id=0e966785& ***!
  \********************************************************************************/
/***/ ((__unused_webpack_module, __webpack_exports__, __webpack_require__) => {

"use strict";
__webpack_require__.r(__webpack_exports__);
/* harmony export */ __webpack_require__.d(__webpack_exports__, {
/* harmony export */   "render": () => (/* reexport safe */ _node_modules_vue_loader_lib_loaders_templateLoader_js_vue_loader_options_node_modules_vue_loader_lib_index_js_vue_loader_options_TableButton_vue_vue_type_template_id_0e966785___WEBPACK_IMPORTED_MODULE_0__.render),
/* harmony export */   "staticRenderFns": () => (/* reexport safe */ _node_modules_vue_loader_lib_loaders_templateLoader_js_vue_loader_options_node_modules_vue_loader_lib_index_js_vue_loader_options_TableButton_vue_vue_type_template_id_0e966785___WEBPACK_IMPORTED_MODULE_0__.staticRenderFns)
/* harmony export */ });
/* harmony import */ var _node_modules_vue_loader_lib_loaders_templateLoader_js_vue_loader_options_node_modules_vue_loader_lib_index_js_vue_loader_options_TableButton_vue_vue_type_template_id_0e966785___WEBPACK_IMPORTED_MODULE_0__ = __webpack_require__(/*! -!../../../node_modules/vue-loader/lib/loaders/templateLoader.js??vue-loader-options!../../../node_modules/vue-loader/lib/index.js??vue-loader-options!./TableButton.vue?vue&type=template&id=0e966785& */ "./node_modules/vue-loader/lib/loaders/templateLoader.js??vue-loader-options!./node_modules/vue-loader/lib/index.js??vue-loader-options!./resources/js/components/TableButton.vue?vue&type=template&id=0e966785&");


/***/ }),

/***/ "./resources/js/pages/admin/challenge/Challenge.vue?vue&type=template&id=64e5f384&":
/*!*****************************************************************************************!*\
  !*** ./resources/js/pages/admin/challenge/Challenge.vue?vue&type=template&id=64e5f384& ***!
  \*****************************************************************************************/
/***/ ((__unused_webpack_module, __webpack_exports__, __webpack_require__) => {

"use strict";
__webpack_require__.r(__webpack_exports__);
/* harmony export */ __webpack_require__.d(__webpack_exports__, {
/* harmony export */   "render": () => (/* reexport safe */ _node_modules_vue_loader_lib_loaders_templateLoader_js_vue_loader_options_node_modules_vue_loader_lib_index_js_vue_loader_options_Challenge_vue_vue_type_template_id_64e5f384___WEBPACK_IMPORTED_MODULE_0__.render),
/* harmony export */   "staticRenderFns": () => (/* reexport safe */ _node_modules_vue_loader_lib_loaders_templateLoader_js_vue_loader_options_node_modules_vue_loader_lib_index_js_vue_loader_options_Challenge_vue_vue_type_template_id_64e5f384___WEBPACK_IMPORTED_MODULE_0__.staticRenderFns)
/* harmony export */ });
/* harmony import */ var _node_modules_vue_loader_lib_loaders_templateLoader_js_vue_loader_options_node_modules_vue_loader_lib_index_js_vue_loader_options_Challenge_vue_vue_type_template_id_64e5f384___WEBPACK_IMPORTED_MODULE_0__ = __webpack_require__(/*! -!../../../../../node_modules/vue-loader/lib/loaders/templateLoader.js??vue-loader-options!../../../../../node_modules/vue-loader/lib/index.js??vue-loader-options!./Challenge.vue?vue&type=template&id=64e5f384& */ "./node_modules/vue-loader/lib/loaders/templateLoader.js??vue-loader-options!./node_modules/vue-loader/lib/index.js??vue-loader-options!./resources/js/pages/admin/challenge/Challenge.vue?vue&type=template&id=64e5f384&");


/***/ }),

/***/ "./node_modules/vue-loader/lib/loaders/templateLoader.js??vue-loader-options!./node_modules/vue-loader/lib/index.js??vue-loader-options!./resources/js/components/AdminFooter.vue?vue&type=template&id=a66a98a2&":
/*!***********************************************************************************************************************************************************************************************************************!*\
  !*** ./node_modules/vue-loader/lib/loaders/templateLoader.js??vue-loader-options!./node_modules/vue-loader/lib/index.js??vue-loader-options!./resources/js/components/AdminFooter.vue?vue&type=template&id=a66a98a2& ***!
  \***********************************************************************************************************************************************************************************************************************/
/***/ ((__unused_webpack_module, __webpack_exports__, __webpack_require__) => {

"use strict";
__webpack_require__.r(__webpack_exports__);
/* harmony export */ __webpack_require__.d(__webpack_exports__, {
/* harmony export */   "render": () => (/* binding */ render),
/* harmony export */   "staticRenderFns": () => (/* binding */ staticRenderFns)
/* harmony export */ });
var render = function() {
  var _vm = this
  var _h = _vm.$createElement
  var _c = _vm._self._c || _h
  return _vm._m(0)
}
var staticRenderFns = [
  function() {
    var _vm = this
    var _h = _vm.$createElement
    var _c = _vm._self._c || _h
    return _c("footer", { staticClass: "page-footer" }, [
      _c("div", { staticClass: "font-13" }, [
        _vm._v("2021 © "),
        _c("b", [_vm._v("DevPOLY")]),
        _vm._v(" - All rights reserved.")
      ]),
      _vm._v(" "),
      _c("div", { staticClass: "to-top" }, [
        _c("i", { staticClass: "fa fa-angle-double-up" })
      ]),
      _vm._v(" "),
      _c("div", { staticClass: "sidenav-backdrop backdrop" })
    ])
  }
]
render._withStripped = true



/***/ }),

/***/ "./node_modules/vue-loader/lib/loaders/templateLoader.js??vue-loader-options!./node_modules/vue-loader/lib/index.js??vue-loader-options!./resources/js/components/TableButton.vue?vue&type=template&id=0e966785&":
/*!***********************************************************************************************************************************************************************************************************************!*\
  !*** ./node_modules/vue-loader/lib/loaders/templateLoader.js??vue-loader-options!./node_modules/vue-loader/lib/index.js??vue-loader-options!./resources/js/components/TableButton.vue?vue&type=template&id=0e966785& ***!
  \***********************************************************************************************************************************************************************************************************************/
/***/ ((__unused_webpack_module, __webpack_exports__, __webpack_require__) => {

"use strict";
__webpack_require__.r(__webpack_exports__);
/* harmony export */ __webpack_require__.d(__webpack_exports__, {
/* harmony export */   "render": () => (/* binding */ render),
/* harmony export */   "staticRenderFns": () => (/* binding */ staticRenderFns)
/* harmony export */ });
var render = function() {
  var _vm = this
  var _h = _vm.$createElement
  var _c = _vm._self._c || _h
  return _c(
    "div",
    [
      _c(
        "router-link",
        {
          staticClass: "btn btn-info",
          attrs: { to: { name: _vm.name, params: { id: _vm.data.id } } }
        },
        [_vm._v("Sửa\n     ")]
      ),
      _vm._v(" "),
      _c(
        "button",
        {
          staticClass: "btn btn-danger",
          attrs: { type: "button" },
          on: {
            click: function($event) {
              return _vm.click(_vm.data.id)
            }
          }
        },
        [_vm._v("\n     Xoá\n ")]
      )
    ],
    1
  )
}
var staticRenderFns = []
render._withStripped = true



/***/ }),

/***/ "./node_modules/vue-loader/lib/loaders/templateLoader.js??vue-loader-options!./node_modules/vue-loader/lib/index.js??vue-loader-options!./resources/js/pages/admin/challenge/Challenge.vue?vue&type=template&id=64e5f384&":
/*!********************************************************************************************************************************************************************************************************************************!*\
  !*** ./node_modules/vue-loader/lib/loaders/templateLoader.js??vue-loader-options!./node_modules/vue-loader/lib/index.js??vue-loader-options!./resources/js/pages/admin/challenge/Challenge.vue?vue&type=template&id=64e5f384& ***!
  \********************************************************************************************************************************************************************************************************************************/
/***/ ((__unused_webpack_module, __webpack_exports__, __webpack_require__) => {

"use strict";
__webpack_require__.r(__webpack_exports__);
/* harmony export */ __webpack_require__.d(__webpack_exports__, {
/* harmony export */   "render": () => (/* binding */ render),
/* harmony export */   "staticRenderFns": () => (/* binding */ staticRenderFns)
/* harmony export */ });
var render = function() {
  var _vm = this
  var _h = _vm.$createElement
  var _c = _vm._self._c || _h
  return _c(
    "div",
    { staticClass: "content-wrapper" },
    [
      _c(
        "div",
        { staticClass: "page-heading row" },
        [
          _c("breadcrumb", {
            staticClass: "col-6",
            attrs: { title: _vm.title }
          }),
          _vm._v(" "),
          _c(
            "router-link",
            {
              staticClass: "col-6 text-right mt-5",
              attrs: { to: { name: "add.challenge" } }
            },
            [
              _c(
                "button",
                { staticClass: "btn btn-primary", attrs: { type: "button" } },
                [_vm._v("Add New")]
              )
            ]
          )
        ],
        1
      ),
      _vm._v(" "),
      _c("div", { staticClass: "page-content fade-in-up" }, [
        _c("div", { staticClass: "ibox" }, [
          _c("div", { staticClass: "ibox-head" }, [
            _c("div", { staticClass: "ibox-title" }, [
              _vm._v(_vm._s(_vm.title))
            ])
          ]),
          _vm._v(" "),
          _c(
            "div",
            { staticClass: "ibox-body" },
            [
              _c("data-table", {
                staticClass: "table table-head-fixed text-nowrap",
                attrs: { data: _vm.data, columns: _vm.columns },
                on: { "on-table-props-changed": _vm.reloadTable }
              })
            ],
            1
          )
        ])
      ]),
      _vm._v(" "),
      _c("Footer")
    ],
    1
  )
}
var staticRenderFns = []
render._withStripped = true



/***/ })

}]);