(self["webpackChunk"] = self["webpackChunk"] || []).push([["resources_js_pages_admin_challengeCategory_challengeCategory_vue"],{

/***/ "./node_modules/babel-loader/lib/index.js??clonedRuleSet-5[0].rules[0].use[0]!./node_modules/vue-loader/lib/index.js??vue-loader-options!./resources/js/pages/admin/challengeCategory/challengeCategory.vue?vue&type=script&lang=js&":
/*!*******************************************************************************************************************************************************************************************************************************************!*\
  !*** ./node_modules/babel-loader/lib/index.js??clonedRuleSet-5[0].rules[0].use[0]!./node_modules/vue-loader/lib/index.js??vue-loader-options!./resources/js/pages/admin/challengeCategory/challengeCategory.vue?vue&type=script&lang=js& ***!
  \*******************************************************************************************************************************************************************************************************************************************/
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
      title: "Challenge Category",
      currentPage: 1
    };
  },
  computed: {
    challengecategories: function challengecategories() {
      return this.$store.state.challengecategory.challengecategories.data;
    },
    totalPage: function totalPage() {
      return this.$store.state.challengecategory.challengecategories.last_page;
    }
  },
  created: function created() {
    this.$store.dispatch("challengecategory/fetch", this.currentPage);
  },
  watch: {
    currentPage: function currentPage() {
      this.getData();
    }
  },
  methods: {
    getData: function getData() {
      this.$store.dispatch("challengecategory/fetch", this.currentPage);
    },
    deletechallengecategory: function deletechallengecategory(id) {
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
          _this.$store.dispatch("challengecategory/deletechallengecategory", id);
        }
      });
    }
  }
});

/***/ }),

/***/ "./resources/js/pages/admin/challengeCategory/challengeCategory.vue":
/*!**************************************************************************!*\
  !*** ./resources/js/pages/admin/challengeCategory/challengeCategory.vue ***!
  \**************************************************************************/
/***/ ((__unused_webpack_module, __webpack_exports__, __webpack_require__) => {

"use strict";
__webpack_require__.r(__webpack_exports__);
/* harmony export */ __webpack_require__.d(__webpack_exports__, {
/* harmony export */   "default": () => (__WEBPACK_DEFAULT_EXPORT__)
/* harmony export */ });
/* harmony import */ var _challengeCategory_vue_vue_type_template_id_43fd971a___WEBPACK_IMPORTED_MODULE_0__ = __webpack_require__(/*! ./challengeCategory.vue?vue&type=template&id=43fd971a& */ "./resources/js/pages/admin/challengeCategory/challengeCategory.vue?vue&type=template&id=43fd971a&");
/* harmony import */ var _challengeCategory_vue_vue_type_script_lang_js___WEBPACK_IMPORTED_MODULE_1__ = __webpack_require__(/*! ./challengeCategory.vue?vue&type=script&lang=js& */ "./resources/js/pages/admin/challengeCategory/challengeCategory.vue?vue&type=script&lang=js&");
/* harmony import */ var _node_modules_vue_loader_lib_runtime_componentNormalizer_js__WEBPACK_IMPORTED_MODULE_2__ = __webpack_require__(/*! !../../../../../node_modules/vue-loader/lib/runtime/componentNormalizer.js */ "./node_modules/vue-loader/lib/runtime/componentNormalizer.js");





/* normalize component */
;
var component = (0,_node_modules_vue_loader_lib_runtime_componentNormalizer_js__WEBPACK_IMPORTED_MODULE_2__.default)(
  _challengeCategory_vue_vue_type_script_lang_js___WEBPACK_IMPORTED_MODULE_1__.default,
  _challengeCategory_vue_vue_type_template_id_43fd971a___WEBPACK_IMPORTED_MODULE_0__.render,
  _challengeCategory_vue_vue_type_template_id_43fd971a___WEBPACK_IMPORTED_MODULE_0__.staticRenderFns,
  false,
  null,
  null,
  null
  
)

/* hot reload */
if (false) { var api; }
component.options.__file = "resources/js/pages/admin/challengeCategory/challengeCategory.vue"
/* harmony default export */ const __WEBPACK_DEFAULT_EXPORT__ = (component.exports);

/***/ }),

/***/ "./resources/js/pages/admin/challengeCategory/challengeCategory.vue?vue&type=script&lang=js&":
/*!***************************************************************************************************!*\
  !*** ./resources/js/pages/admin/challengeCategory/challengeCategory.vue?vue&type=script&lang=js& ***!
  \***************************************************************************************************/
/***/ ((__unused_webpack_module, __webpack_exports__, __webpack_require__) => {

"use strict";
__webpack_require__.r(__webpack_exports__);
/* harmony export */ __webpack_require__.d(__webpack_exports__, {
/* harmony export */   "default": () => (__WEBPACK_DEFAULT_EXPORT__)
/* harmony export */ });
/* harmony import */ var _node_modules_babel_loader_lib_index_js_clonedRuleSet_5_0_rules_0_use_0_node_modules_vue_loader_lib_index_js_vue_loader_options_challengeCategory_vue_vue_type_script_lang_js___WEBPACK_IMPORTED_MODULE_0__ = __webpack_require__(/*! -!../../../../../node_modules/babel-loader/lib/index.js??clonedRuleSet-5[0].rules[0].use[0]!../../../../../node_modules/vue-loader/lib/index.js??vue-loader-options!./challengeCategory.vue?vue&type=script&lang=js& */ "./node_modules/babel-loader/lib/index.js??clonedRuleSet-5[0].rules[0].use[0]!./node_modules/vue-loader/lib/index.js??vue-loader-options!./resources/js/pages/admin/challengeCategory/challengeCategory.vue?vue&type=script&lang=js&");
 /* harmony default export */ const __WEBPACK_DEFAULT_EXPORT__ = (_node_modules_babel_loader_lib_index_js_clonedRuleSet_5_0_rules_0_use_0_node_modules_vue_loader_lib_index_js_vue_loader_options_challengeCategory_vue_vue_type_script_lang_js___WEBPACK_IMPORTED_MODULE_0__.default); 

/***/ }),

/***/ "./resources/js/pages/admin/challengeCategory/challengeCategory.vue?vue&type=template&id=43fd971a&":
/*!*********************************************************************************************************!*\
  !*** ./resources/js/pages/admin/challengeCategory/challengeCategory.vue?vue&type=template&id=43fd971a& ***!
  \*********************************************************************************************************/
/***/ ((__unused_webpack_module, __webpack_exports__, __webpack_require__) => {

"use strict";
__webpack_require__.r(__webpack_exports__);
/* harmony export */ __webpack_require__.d(__webpack_exports__, {
/* harmony export */   "render": () => (/* reexport safe */ _node_modules_vue_loader_lib_loaders_templateLoader_js_vue_loader_options_node_modules_vue_loader_lib_index_js_vue_loader_options_challengeCategory_vue_vue_type_template_id_43fd971a___WEBPACK_IMPORTED_MODULE_0__.render),
/* harmony export */   "staticRenderFns": () => (/* reexport safe */ _node_modules_vue_loader_lib_loaders_templateLoader_js_vue_loader_options_node_modules_vue_loader_lib_index_js_vue_loader_options_challengeCategory_vue_vue_type_template_id_43fd971a___WEBPACK_IMPORTED_MODULE_0__.staticRenderFns)
/* harmony export */ });
/* harmony import */ var _node_modules_vue_loader_lib_loaders_templateLoader_js_vue_loader_options_node_modules_vue_loader_lib_index_js_vue_loader_options_challengeCategory_vue_vue_type_template_id_43fd971a___WEBPACK_IMPORTED_MODULE_0__ = __webpack_require__(/*! -!../../../../../node_modules/vue-loader/lib/loaders/templateLoader.js??vue-loader-options!../../../../../node_modules/vue-loader/lib/index.js??vue-loader-options!./challengeCategory.vue?vue&type=template&id=43fd971a& */ "./node_modules/vue-loader/lib/loaders/templateLoader.js??vue-loader-options!./node_modules/vue-loader/lib/index.js??vue-loader-options!./resources/js/pages/admin/challengeCategory/challengeCategory.vue?vue&type=template&id=43fd971a&");


/***/ }),

/***/ "./node_modules/vue-loader/lib/loaders/templateLoader.js??vue-loader-options!./node_modules/vue-loader/lib/index.js??vue-loader-options!./resources/js/pages/admin/challengeCategory/challengeCategory.vue?vue&type=template&id=43fd971a&":
/*!************************************************************************************************************************************************************************************************************************************************!*\
  !*** ./node_modules/vue-loader/lib/loaders/templateLoader.js??vue-loader-options!./node_modules/vue-loader/lib/index.js??vue-loader-options!./resources/js/pages/admin/challengeCategory/challengeCategory.vue?vue&type=template&id=43fd971a& ***!
  \************************************************************************************************************************************************************************************************************************************************/
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
                    "table",
                    { staticClass: "table table-head-fixed text-nowrap" },
                    [
                      _c("thead", [
                        _c("tr", [
                          _c("th", [_vm._v("ID")]),
                          _vm._v(" "),
                          _c("th", [_vm._v("Name")]),
                          _vm._v(" "),
                          _c("th", [_vm._v("Image")]),
                          _vm._v(" "),
                          _c(
                            "th",
                            [
                              _c(
                                "router-link",
                                {
                                  attrs: {
                                    to: { name: "add.challengecategory" }
                                  }
                                },
                                [
                                  _c(
                                    "button",
                                    {
                                      staticClass: "btn btn-primary",
                                      attrs: { type: "button" }
                                    },
                                    [_vm._v("Add New")]
                                  )
                                ]
                              )
                            ],
                            1
                          )
                        ])
                      ]),
                      _vm._v(" "),
                      _c(
                        "tbody",
                        _vm._l(_vm.challengecategories, function(
                          challengecategory,
                          index
                        ) {
                          return _c("tr", { key: index }, [
                            _c("td", [_vm._v(_vm._s(index + 1))]),
                            _vm._v(" "),
                            _c("td", [_vm._v(_vm._s(challengecategory.name))]),
                            _vm._v(" "),
                            _c("td", [
                              _c("img", {
                                attrs: {
                                  src: "/" + challengecategory.image,
                                  alt: "",
                                  width: "60px"
                                }
                              })
                            ]),
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
                                        name: "edit.challengecategory",
                                        params: { id: challengecategory.id }
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
                                        return _vm.deletechallengecategory(
                                          challengecategory.id
                                        )
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
          ]),
          _vm._v(" "),
          _c("nav", { attrs: { "aria-label": "Page navigation example" } }, [
            _c(
              "ul",
              { staticClass: "pagination" },
              [
                _vm.currentPage > 1
                  ? _c("li", { staticClass: "page-item" }, [
                      _c(
                        "a",
                        {
                          staticClass: "page-link",
                          attrs: { href: "#" },
                          on: {
                            click: function($event) {
                              $event.preventDefault()
                              _vm.currentPage--
                            }
                          }
                        },
                        [_vm._v("Previous")]
                      )
                    ])
                  : _vm._e(),
                _vm._v(" "),
                _vm._l(_vm.totalPage, function(page) {
                  return _c("li", { key: page, staticClass: "page-item" }, [
                    _c(
                      "a",
                      {
                        staticClass: "page-link",
                        attrs: { href: "#" },
                        on: {
                          click: function($event) {
                            $event.preventDefault()
                            _vm.currentPage = page
                          }
                        }
                      },
                      [_vm._v(_vm._s(page))]
                    )
                  ])
                }),
                _vm._v(" "),
                _vm.currentPage < _vm.totalPage
                  ? _c("li", { staticClass: "page-item" }, [
                      _c(
                        "a",
                        {
                          staticClass: "page-link",
                          attrs: { href: "#" },
                          on: {
                            click: function($event) {
                              $event.preventDefault()
                              _vm.currentPage++
                            }
                          }
                        },
                        [_vm._v("Next")]
                      )
                    ])
                  : _vm._e()
              ],
              2
            )
          ])
        ])
      ])
    ],
    1
  )
}
var staticRenderFns = []
render._withStripped = true



/***/ })

}]);