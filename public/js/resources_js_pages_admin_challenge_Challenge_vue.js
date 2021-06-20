(self["webpackChunk"] = self["webpackChunk"] || []).push([["resources_js_pages_admin_challenge_Challenge_vue"],{

/***/ "./node_modules/babel-loader/lib/index.js??clonedRuleSet-5[0].rules[0].use[0]!./node_modules/vue-loader/lib/index.js??vue-loader-options!./resources/js/components/Breadcrumb.vue?vue&type=script&lang=js&":
/*!*****************************************************************************************************************************************************************************************************************!*\
  !*** ./node_modules/babel-loader/lib/index.js??clonedRuleSet-5[0].rules[0].use[0]!./node_modules/vue-loader/lib/index.js??vue-loader-options!./resources/js/components/Breadcrumb.vue?vue&type=script&lang=js& ***!
  \*****************************************************************************************************************************************************************************************************************/
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
//
//
//
//
//
//
/* harmony default export */ const __WEBPACK_DEFAULT_EXPORT__ = ({
  name: 'breadcrumb',
  props: {
    title: {
      type: String,
      "default": null
    }
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
/* harmony import */ var _components_Breadcrumb_vue__WEBPACK_IMPORTED_MODULE_0__ = __webpack_require__(/*! ../../../components/Breadcrumb.vue */ "./resources/js/components/Breadcrumb.vue");
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
      title: "Challenge"
    };
  },
  components: {
    Breadcrumb: _components_Breadcrumb_vue__WEBPACK_IMPORTED_MODULE_0__.default
  },
  computed: {
    challenges: function challenges() {
      return this.$store.state.challenge.challenges;
    }
  },
  created: function created() {
    this.$store.dispatch("challenge/fetch");
  },
  methods: {
    deletechallenge: function deletechallenge(id) {
      var _this = this;

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
          _this.$store.dispatch("challenge/deletechallenge", id);
        }
      });
    }
  }
});

/***/ }),

/***/ "./resources/js/components/Breadcrumb.vue":
/*!************************************************!*\
  !*** ./resources/js/components/Breadcrumb.vue ***!
  \************************************************/
/***/ ((__unused_webpack_module, __webpack_exports__, __webpack_require__) => {

"use strict";
__webpack_require__.r(__webpack_exports__);
/* harmony export */ __webpack_require__.d(__webpack_exports__, {
/* harmony export */   "default": () => (__WEBPACK_DEFAULT_EXPORT__)
/* harmony export */ });
/* harmony import */ var _Breadcrumb_vue_vue_type_template_id_c259b9a4___WEBPACK_IMPORTED_MODULE_0__ = __webpack_require__(/*! ./Breadcrumb.vue?vue&type=template&id=c259b9a4& */ "./resources/js/components/Breadcrumb.vue?vue&type=template&id=c259b9a4&");
/* harmony import */ var _Breadcrumb_vue_vue_type_script_lang_js___WEBPACK_IMPORTED_MODULE_1__ = __webpack_require__(/*! ./Breadcrumb.vue?vue&type=script&lang=js& */ "./resources/js/components/Breadcrumb.vue?vue&type=script&lang=js&");
/* harmony import */ var _node_modules_vue_loader_lib_runtime_componentNormalizer_js__WEBPACK_IMPORTED_MODULE_2__ = __webpack_require__(/*! !../../../node_modules/vue-loader/lib/runtime/componentNormalizer.js */ "./node_modules/vue-loader/lib/runtime/componentNormalizer.js");





/* normalize component */
;
var component = (0,_node_modules_vue_loader_lib_runtime_componentNormalizer_js__WEBPACK_IMPORTED_MODULE_2__.default)(
  _Breadcrumb_vue_vue_type_script_lang_js___WEBPACK_IMPORTED_MODULE_1__.default,
  _Breadcrumb_vue_vue_type_template_id_c259b9a4___WEBPACK_IMPORTED_MODULE_0__.render,
  _Breadcrumb_vue_vue_type_template_id_c259b9a4___WEBPACK_IMPORTED_MODULE_0__.staticRenderFns,
  false,
  null,
  null,
  null
  
)

/* hot reload */
if (false) { var api; }
component.options.__file = "resources/js/components/Breadcrumb.vue"
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

/***/ "./resources/js/components/Breadcrumb.vue?vue&type=script&lang=js&":
/*!*************************************************************************!*\
  !*** ./resources/js/components/Breadcrumb.vue?vue&type=script&lang=js& ***!
  \*************************************************************************/
/***/ ((__unused_webpack_module, __webpack_exports__, __webpack_require__) => {

"use strict";
__webpack_require__.r(__webpack_exports__);
/* harmony export */ __webpack_require__.d(__webpack_exports__, {
/* harmony export */   "default": () => (__WEBPACK_DEFAULT_EXPORT__)
/* harmony export */ });
/* harmony import */ var _node_modules_babel_loader_lib_index_js_clonedRuleSet_5_0_rules_0_use_0_node_modules_vue_loader_lib_index_js_vue_loader_options_Breadcrumb_vue_vue_type_script_lang_js___WEBPACK_IMPORTED_MODULE_0__ = __webpack_require__(/*! -!../../../node_modules/babel-loader/lib/index.js??clonedRuleSet-5[0].rules[0].use[0]!../../../node_modules/vue-loader/lib/index.js??vue-loader-options!./Breadcrumb.vue?vue&type=script&lang=js& */ "./node_modules/babel-loader/lib/index.js??clonedRuleSet-5[0].rules[0].use[0]!./node_modules/vue-loader/lib/index.js??vue-loader-options!./resources/js/components/Breadcrumb.vue?vue&type=script&lang=js&");
 /* harmony default export */ const __WEBPACK_DEFAULT_EXPORT__ = (_node_modules_babel_loader_lib_index_js_clonedRuleSet_5_0_rules_0_use_0_node_modules_vue_loader_lib_index_js_vue_loader_options_Breadcrumb_vue_vue_type_script_lang_js___WEBPACK_IMPORTED_MODULE_0__.default); 

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

/***/ "./resources/js/components/Breadcrumb.vue?vue&type=template&id=c259b9a4&":
/*!*******************************************************************************!*\
  !*** ./resources/js/components/Breadcrumb.vue?vue&type=template&id=c259b9a4& ***!
  \*******************************************************************************/
/***/ ((__unused_webpack_module, __webpack_exports__, __webpack_require__) => {

"use strict";
__webpack_require__.r(__webpack_exports__);
/* harmony export */ __webpack_require__.d(__webpack_exports__, {
/* harmony export */   "render": () => (/* reexport safe */ _node_modules_vue_loader_lib_loaders_templateLoader_js_vue_loader_options_node_modules_vue_loader_lib_index_js_vue_loader_options_Breadcrumb_vue_vue_type_template_id_c259b9a4___WEBPACK_IMPORTED_MODULE_0__.render),
/* harmony export */   "staticRenderFns": () => (/* reexport safe */ _node_modules_vue_loader_lib_loaders_templateLoader_js_vue_loader_options_node_modules_vue_loader_lib_index_js_vue_loader_options_Breadcrumb_vue_vue_type_template_id_c259b9a4___WEBPACK_IMPORTED_MODULE_0__.staticRenderFns)
/* harmony export */ });
/* harmony import */ var _node_modules_vue_loader_lib_loaders_templateLoader_js_vue_loader_options_node_modules_vue_loader_lib_index_js_vue_loader_options_Breadcrumb_vue_vue_type_template_id_c259b9a4___WEBPACK_IMPORTED_MODULE_0__ = __webpack_require__(/*! -!../../../node_modules/vue-loader/lib/loaders/templateLoader.js??vue-loader-options!../../../node_modules/vue-loader/lib/index.js??vue-loader-options!./Breadcrumb.vue?vue&type=template&id=c259b9a4& */ "./node_modules/vue-loader/lib/loaders/templateLoader.js??vue-loader-options!./node_modules/vue-loader/lib/index.js??vue-loader-options!./resources/js/components/Breadcrumb.vue?vue&type=template&id=c259b9a4&");


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

/***/ "./node_modules/vue-loader/lib/loaders/templateLoader.js??vue-loader-options!./node_modules/vue-loader/lib/index.js??vue-loader-options!./resources/js/components/Breadcrumb.vue?vue&type=template&id=c259b9a4&":
/*!**********************************************************************************************************************************************************************************************************************!*\
  !*** ./node_modules/vue-loader/lib/loaders/templateLoader.js??vue-loader-options!./node_modules/vue-loader/lib/index.js??vue-loader-options!./resources/js/components/Breadcrumb.vue?vue&type=template&id=c259b9a4& ***!
  \**********************************************************************************************************************************************************************************************************************/
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
  return _c("section", { staticClass: "content-header" }, [
    _c("div", { staticClass: "container-fluid" }, [
      _c("div", { staticClass: "row mb-2" }, [
        _c("div", { staticClass: "col-sm-6" }, [
          _c("h1", [_vm._v(_vm._s(_vm.title))])
        ]),
        _vm._v(" "),
        _c("div", { staticClass: "col-sm-6" }, [
          _c("ol", { staticClass: "breadcrumb float-sm-right" }, [
            _c(
              "li",
              { staticClass: "breadcrumb-item" },
              [
                _c("router-link", { attrs: { to: { name: "dashboard" } } }, [
                  _vm._v("Home")
                ])
              ],
              1
            ),
            _vm._v(" "),
            _c("li", { staticClass: "breadcrumb-item active" }, [
              _vm._v(_vm._s(_vm.title))
            ])
          ])
        ])
      ])
    ])
  ])
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
      _c("breadcrumb", { attrs: { title: _vm.title } }),
      _vm._v(" "),
      _c("section", { staticClass: "content" }, [
        _c("div", { staticClass: "container-fluid" }, [
          _c("div", { staticClass: "row" }, [
            _c("div", { staticClass: "col-12" }, [
              _c("div", { staticClass: "card" }, [
                _c("div", { staticClass: "card-header" }, [
                  _c("h3", { staticClass: "card-title" }, [
                    _vm._v(_vm._s(_vm.title))
                  ])
                ]),
                _vm._v(" "),
                _c("div", { staticClass: "card-body" }, [
                  _c(
                    "th",
                    { staticStyle: { "text-align": "center" } },
                    [
                      _c(
                        "router-link",
                        { attrs: { to: "/admin/challenge/add" } },
                        [
                          _c(
                            "button",
                            {
                              staticClass: "btn btn-primary",
                              attrs: { type: "button" }
                            },
                            [
                              _vm._v(
                                "\n                    Add New\n                  "
                              )
                            ]
                          )
                        ]
                      )
                    ],
                    1
                  ),
                  _vm._v(" "),
                  _c(
                    "table",
                    { staticClass: "table table-head-fixed text-nowrap" },
                    [
                      _vm._m(0),
                      _vm._v(" "),
                      _c(
                        "tbody",
                        _vm._l(_vm.challenges, function(challenge) {
                          return _c("tr", { key: challenge.id }, [
                            _c("td", [_c("p", [_vm._v(_vm._s(challenge.id))])]),
                            _vm._v(" "),
                            _c("td", [
                              _c("p", [_vm._v(_vm._s(challenge.title))])
                            ]),
                            _vm._v(" "),
                            _c("td", [
                              _c("p", [
                                _vm._v(_vm._s(challenge.cate_challen_id))
                              ])
                            ]),
                            _vm._v(" "),
                            _c("th", [_vm._v("Detail")]),
                            _vm._v(" "),
                            _c(
                              "td",
                              [
                                _c(
                                  "router-link",
                                  {
                                    staticClass: "btn btn-info",
                                    attrs: {
                                      to: {
                                        name: "edit.challenge",
                                        params: { id: challenge.id }
                                      }
                                    }
                                  },
                                  [_vm._v("Edit\n                      ")]
                                ),
                                _vm._v(" "),
                                _c(
                                  "button",
                                  {
                                    staticClass: "btn btn-danger",
                                    on: {
                                      click: function($event) {
                                        return _vm.deletechallenge(challenge.id)
                                      }
                                    }
                                  },
                                  [
                                    _vm._v(
                                      "\n                        Delete\n                      "
                                    )
                                  ]
                                )
                              ],
                              1
                            )
                          ])
                        }),
                        0
                      )
                    ]
                  )
                ])
              ])
            ])
          ])
        ])
      ])
    ],
    1
  )
}
var staticRenderFns = [
  function() {
    var _vm = this
    var _h = _vm.$createElement
    var _c = _vm._self._c || _h
    return _c("thead", [
      _c("tr", [
        _c("th", { staticStyle: { "text-align": "center" } }, [_vm._v("ID")]),
        _vm._v(" "),
        _c("th", { staticStyle: { "text-align": "center" } }, [
          _vm._v("Title")
        ]),
        _vm._v(" "),
        _c("th", { staticStyle: { "text-align": "center" } }, [
          _vm._v("Category")
        ]),
        _vm._v(" "),
        _c("th", { staticStyle: { "text-align": "center" } }, [
          _vm._v("Detail")
        ]),
        _vm._v(" "),
        _c("th", { staticStyle: { "text-align": "center" } }, [
          _vm._v("Action")
        ])
      ])
    ])
  }
]
render._withStripped = true



/***/ })

}]);