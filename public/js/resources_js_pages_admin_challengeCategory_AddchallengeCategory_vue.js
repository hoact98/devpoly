(self["webpackChunk"] = self["webpackChunk"] || []).push([["resources_js_pages_admin_challengeCategory_AddchallengeCategory_vue"],{

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

/***/ "./node_modules/babel-loader/lib/index.js??clonedRuleSet-5[0].rules[0].use[0]!./node_modules/vue-loader/lib/index.js??vue-loader-options!./resources/js/pages/admin/challengeCategory/AddchallengeCategory.vue?vue&type=script&lang=js&":
/*!**********************************************************************************************************************************************************************************************************************************************!*\
  !*** ./node_modules/babel-loader/lib/index.js??clonedRuleSet-5[0].rules[0].use[0]!./node_modules/vue-loader/lib/index.js??vue-loader-options!./resources/js/pages/admin/challengeCategory/AddchallengeCategory.vue?vue&type=script&lang=js& ***!
  \**********************************************************************************************************************************************************************************************************************************************/
/***/ ((__unused_webpack_module, __webpack_exports__, __webpack_require__) => {

"use strict";
__webpack_require__.r(__webpack_exports__);
/* harmony export */ __webpack_require__.d(__webpack_exports__, {
/* harmony export */   "default": () => (__WEBPACK_DEFAULT_EXPORT__)
/* harmony export */ });
/* harmony import */ var _babel_runtime_regenerator__WEBPACK_IMPORTED_MODULE_0__ = __webpack_require__(/*! @babel/runtime/regenerator */ "./node_modules/@babel/runtime/regenerator/index.js");
/* harmony import */ var _babel_runtime_regenerator__WEBPACK_IMPORTED_MODULE_0___default = /*#__PURE__*/__webpack_require__.n(_babel_runtime_regenerator__WEBPACK_IMPORTED_MODULE_0__);
/* harmony import */ var _components_AdminFooter_vue__WEBPACK_IMPORTED_MODULE_1__ = __webpack_require__(/*! ../../../components/AdminFooter.vue */ "./resources/js/components/AdminFooter.vue");


function asyncGeneratorStep(gen, resolve, reject, _next, _throw, key, arg) { try { var info = gen[key](arg); var value = info.value; } catch (error) { reject(error); return; } if (info.done) { resolve(value); } else { Promise.resolve(value).then(_next, _throw); } }

function _asyncToGenerator(fn) { return function () { var self = this, args = arguments; return new Promise(function (resolve, reject) { var gen = fn.apply(self, args); function _next(value) { asyncGeneratorStep(gen, resolve, reject, _next, _throw, "next", value); } function _throw(err) { asyncGeneratorStep(gen, resolve, reject, _next, _throw, "throw", err); } _next(undefined); }); }; }

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
      form: new Form({
        name: '',
        description: '',
        image: ''
      }),
      title: 'Thêm Danh Mục Thử Thách'
    };
  },
  components: {
    Footer: _components_AdminFooter_vue__WEBPACK_IMPORTED_MODULE_1__.default
  },
  methods: {
    upload: function upload(event) {
      this.form.image = event.target.files[0];
    },
    addChallengeCategory: function addChallengeCategory() {
      var _this = this;

      return _asyncToGenerator( /*#__PURE__*/_babel_runtime_regenerator__WEBPACK_IMPORTED_MODULE_0___default().mark(function _callee() {
        return _babel_runtime_regenerator__WEBPACK_IMPORTED_MODULE_0___default().wrap(function _callee$(_context) {
          while (1) {
            switch (_context.prev = _context.next) {
              case 0:
                _context.next = 2;
                return _this.form.post(route('create.challengecategory')).then(function (response) {
                  if (response.data.status == 'success') {
                    _this.$router.push({
                      name: 'challengecategories'
                    });

                    Swal.fire('Created', 'Challenge Category created Successfully', 'success');
                  }
                })["catch"](function () {
                  Swal.fire({
                    icon: 'error',
                    title: 'Oops...',
                    text: 'Something went wrong!'
                  });
                });

              case 2:
              case "end":
                return _context.stop();
            }
          }
        }, _callee);
      }))();
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

/***/ "./resources/js/pages/admin/challengeCategory/AddchallengeCategory.vue":
/*!*****************************************************************************!*\
  !*** ./resources/js/pages/admin/challengeCategory/AddchallengeCategory.vue ***!
  \*****************************************************************************/
/***/ ((__unused_webpack_module, __webpack_exports__, __webpack_require__) => {

"use strict";
__webpack_require__.r(__webpack_exports__);
/* harmony export */ __webpack_require__.d(__webpack_exports__, {
/* harmony export */   "default": () => (__WEBPACK_DEFAULT_EXPORT__)
/* harmony export */ });
/* harmony import */ var _AddchallengeCategory_vue_vue_type_template_id_18140097___WEBPACK_IMPORTED_MODULE_0__ = __webpack_require__(/*! ./AddchallengeCategory.vue?vue&type=template&id=18140097& */ "./resources/js/pages/admin/challengeCategory/AddchallengeCategory.vue?vue&type=template&id=18140097&");
/* harmony import */ var _AddchallengeCategory_vue_vue_type_script_lang_js___WEBPACK_IMPORTED_MODULE_1__ = __webpack_require__(/*! ./AddchallengeCategory.vue?vue&type=script&lang=js& */ "./resources/js/pages/admin/challengeCategory/AddchallengeCategory.vue?vue&type=script&lang=js&");
/* harmony import */ var _node_modules_vue_loader_lib_runtime_componentNormalizer_js__WEBPACK_IMPORTED_MODULE_2__ = __webpack_require__(/*! !../../../../../node_modules/vue-loader/lib/runtime/componentNormalizer.js */ "./node_modules/vue-loader/lib/runtime/componentNormalizer.js");





/* normalize component */
;
var component = (0,_node_modules_vue_loader_lib_runtime_componentNormalizer_js__WEBPACK_IMPORTED_MODULE_2__.default)(
  _AddchallengeCategory_vue_vue_type_script_lang_js___WEBPACK_IMPORTED_MODULE_1__.default,
  _AddchallengeCategory_vue_vue_type_template_id_18140097___WEBPACK_IMPORTED_MODULE_0__.render,
  _AddchallengeCategory_vue_vue_type_template_id_18140097___WEBPACK_IMPORTED_MODULE_0__.staticRenderFns,
  false,
  null,
  null,
  null
  
)

/* hot reload */
if (false) { var api; }
component.options.__file = "resources/js/pages/admin/challengeCategory/AddchallengeCategory.vue"
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

/***/ "./resources/js/pages/admin/challengeCategory/AddchallengeCategory.vue?vue&type=script&lang=js&":
/*!******************************************************************************************************!*\
  !*** ./resources/js/pages/admin/challengeCategory/AddchallengeCategory.vue?vue&type=script&lang=js& ***!
  \******************************************************************************************************/
/***/ ((__unused_webpack_module, __webpack_exports__, __webpack_require__) => {

"use strict";
__webpack_require__.r(__webpack_exports__);
/* harmony export */ __webpack_require__.d(__webpack_exports__, {
/* harmony export */   "default": () => (__WEBPACK_DEFAULT_EXPORT__)
/* harmony export */ });
/* harmony import */ var _node_modules_babel_loader_lib_index_js_clonedRuleSet_5_0_rules_0_use_0_node_modules_vue_loader_lib_index_js_vue_loader_options_AddchallengeCategory_vue_vue_type_script_lang_js___WEBPACK_IMPORTED_MODULE_0__ = __webpack_require__(/*! -!../../../../../node_modules/babel-loader/lib/index.js??clonedRuleSet-5[0].rules[0].use[0]!../../../../../node_modules/vue-loader/lib/index.js??vue-loader-options!./AddchallengeCategory.vue?vue&type=script&lang=js& */ "./node_modules/babel-loader/lib/index.js??clonedRuleSet-5[0].rules[0].use[0]!./node_modules/vue-loader/lib/index.js??vue-loader-options!./resources/js/pages/admin/challengeCategory/AddchallengeCategory.vue?vue&type=script&lang=js&");
 /* harmony default export */ const __WEBPACK_DEFAULT_EXPORT__ = (_node_modules_babel_loader_lib_index_js_clonedRuleSet_5_0_rules_0_use_0_node_modules_vue_loader_lib_index_js_vue_loader_options_AddchallengeCategory_vue_vue_type_script_lang_js___WEBPACK_IMPORTED_MODULE_0__.default); 

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

/***/ "./resources/js/pages/admin/challengeCategory/AddchallengeCategory.vue?vue&type=template&id=18140097&":
/*!************************************************************************************************************!*\
  !*** ./resources/js/pages/admin/challengeCategory/AddchallengeCategory.vue?vue&type=template&id=18140097& ***!
  \************************************************************************************************************/
/***/ ((__unused_webpack_module, __webpack_exports__, __webpack_require__) => {

"use strict";
__webpack_require__.r(__webpack_exports__);
/* harmony export */ __webpack_require__.d(__webpack_exports__, {
/* harmony export */   "render": () => (/* reexport safe */ _node_modules_vue_loader_lib_loaders_templateLoader_js_vue_loader_options_node_modules_vue_loader_lib_index_js_vue_loader_options_AddchallengeCategory_vue_vue_type_template_id_18140097___WEBPACK_IMPORTED_MODULE_0__.render),
/* harmony export */   "staticRenderFns": () => (/* reexport safe */ _node_modules_vue_loader_lib_loaders_templateLoader_js_vue_loader_options_node_modules_vue_loader_lib_index_js_vue_loader_options_AddchallengeCategory_vue_vue_type_template_id_18140097___WEBPACK_IMPORTED_MODULE_0__.staticRenderFns)
/* harmony export */ });
/* harmony import */ var _node_modules_vue_loader_lib_loaders_templateLoader_js_vue_loader_options_node_modules_vue_loader_lib_index_js_vue_loader_options_AddchallengeCategory_vue_vue_type_template_id_18140097___WEBPACK_IMPORTED_MODULE_0__ = __webpack_require__(/*! -!../../../../../node_modules/vue-loader/lib/loaders/templateLoader.js??vue-loader-options!../../../../../node_modules/vue-loader/lib/index.js??vue-loader-options!./AddchallengeCategory.vue?vue&type=template&id=18140097& */ "./node_modules/vue-loader/lib/loaders/templateLoader.js??vue-loader-options!./node_modules/vue-loader/lib/index.js??vue-loader-options!./resources/js/pages/admin/challengeCategory/AddchallengeCategory.vue?vue&type=template&id=18140097&");


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

/***/ "./node_modules/vue-loader/lib/loaders/templateLoader.js??vue-loader-options!./node_modules/vue-loader/lib/index.js??vue-loader-options!./resources/js/pages/admin/challengeCategory/AddchallengeCategory.vue?vue&type=template&id=18140097&":
/*!***************************************************************************************************************************************************************************************************************************************************!*\
  !*** ./node_modules/vue-loader/lib/loaders/templateLoader.js??vue-loader-options!./node_modules/vue-loader/lib/index.js??vue-loader-options!./resources/js/pages/admin/challengeCategory/AddchallengeCategory.vue?vue&type=template&id=18140097& ***!
  \***************************************************************************************************************************************************************************************************************************************************/
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
        { staticClass: "page-heading" },
        [_c("breadcrumb", { attrs: { title: _vm.title } })],
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
          _c("div", { staticClass: "ibox-body" }, [
            _c(
              "form",
              {
                on: {
                  submit: function($event) {
                    $event.preventDefault()
                    return _vm.addChallengeCategory.apply(null, arguments)
                  },
                  keydown: function($event) {
                    return _vm.form.onKeydown($event)
                  }
                }
              },
              [
                _c("div", { staticClass: "form-group row" }, [
                  _c("label", { staticClass: "col-sm-2 col-form-label" }, [
                    _vm._v("Tên: ")
                  ]),
                  _vm._v(" "),
                  _c("div", { staticClass: "col-sm-10" }, [
                    _c("input", {
                      directives: [
                        {
                          name: "model",
                          rawName: "v-model",
                          value: _vm.form.name,
                          expression: "form.name"
                        }
                      ],
                      staticClass: "form-control",
                      class: { "is-invalid": _vm.form.errors.has("name") },
                      attrs: {
                        type: "text",
                        name: "name",
                        id: "exampleInputName",
                        placeholder: "Enter name"
                      },
                      domProps: { value: _vm.form.name },
                      on: {
                        input: function($event) {
                          if ($event.target.composing) {
                            return
                          }
                          _vm.$set(_vm.form, "name", $event.target.value)
                        }
                      }
                    }),
                    _vm._v(" "),
                    _vm.form.errors.has("name")
                      ? _c("div", {
                          staticClass: "text-danger",
                          domProps: {
                            innerHTML: _vm._s(_vm.form.errors.get("name"))
                          }
                        })
                      : _vm._e()
                  ])
                ]),
                _vm._v(" "),
                _c("div", { staticClass: "form-group row" }, [
                  _c("label", { staticClass: "col-sm-2 col-form-label" }, [
                    _vm._v("Mô tả: ")
                  ]),
                  _vm._v(" "),
                  _c(
                    "div",
                    { staticClass: "col-sm-10" },
                    [
                      _c("ckeditor", {
                        class: {
                          "is-invalid": _vm.form.errors.has("description")
                        },
                        attrs: { name: "description" },
                        model: {
                          value: _vm.form.description,
                          callback: function($$v) {
                            _vm.$set(_vm.form, "description", $$v)
                          },
                          expression: "form.description"
                        }
                      }),
                      _vm._v(" "),
                      _vm.form.errors.has("description")
                        ? _c("div", {
                            staticClass: "text-danger",
                            domProps: {
                              innerHTML: _vm._s(
                                _vm.form.errors.get("description")
                              )
                            }
                          })
                        : _vm._e()
                    ],
                    1
                  )
                ]),
                _vm._v(" "),
                _c("div", { staticClass: "form-group row" }, [
                  _c("label", { staticClass: "col-sm-2 col-form-label" }, [
                    _vm._v("Ảnh: ")
                  ]),
                  _vm._v(" "),
                  _c("div", { staticClass: "col-sm-10" }, [
                    _c("input", {
                      staticClass: "form-control",
                      class: { "is-invalid": _vm.form.errors.has("image") },
                      attrs: { type: "file", name: "image" },
                      on: {
                        change: function($event) {
                          return _vm.upload($event)
                        }
                      }
                    }),
                    _vm._v(" "),
                    _vm.form.errors.has("image")
                      ? _c("div", {
                          staticClass: "text-danger",
                          domProps: {
                            innerHTML: _vm._s(_vm.form.errors.get("image"))
                          }
                        })
                      : _vm._e()
                  ])
                ]),
                _vm._v(" "),
                _vm._m(0)
              ]
            )
          ])
        ])
      ]),
      _vm._v(" "),
      _c("Footer")
    ],
    1
  )
}
var staticRenderFns = [
  function() {
    var _vm = this
    var _h = _vm.$createElement
    var _c = _vm._self._c || _h
    return _c("div", { staticClass: "form-group row" }, [
      _c("div", { staticClass: "col-sm-10 ml-sm-auto" }, [
        _c(
          "button",
          { staticClass: "btn btn-info", attrs: { type: "submit" } },
          [_vm._v("Submit")]
        )
      ])
    ])
  }
]
render._withStripped = true



/***/ })

}]);