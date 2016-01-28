/**
 * @license
 * lodash 4.0.0 (Custom Build) lodash.com/license | Underscore.js 1.8.3 underscorejs.org/LICENSE
 * Build: `lodash core -o ./dist/lodash.core.js`
 */

;(function(){function n(n,t){for(var r=-1,e=t.length,u=n.length;++r<e;)n[u+r]=t[r];return n}function t(n,t,r){for(var e=-1,u=n.length;++e<u;){var o=n[e],i=t(o);if(null!=i&&(c===ln?i===i:r(i,c)))var c=i,f=o}return f}function r(n,t,r){var e;return r(n,function(n,r,u){return t(n,r,u)?(e=n,false):void 0}),e}function e(n,t,r,e,u){return u(n,function(n,u,o){r=e?(e=false,n):t(r,n,u,o)}),r}function u(n,t){return w(t,function(t){return n[t]})}function o(n){return n&&n.Object===Object?n:null}function i(n){return vn[n];
}function c(n){var t=false;if(null!=n&&typeof n.toString!="function")try{t=!!(n+"")}catch(r){}return t}function f(n,t){return n=typeof n=="number"||hn.test(n)?+n:-1,n>-1&&0==n%1&&(null==t?9007199254740991:t)>n}function a(n){if(Z(n)&&!Vn(n)){if(n instanceof l)return n;if(En.call(n,"__wrapped__")){var t=new l(n.__wrapped__,n.__chain__);return t.__actions__=k(n.__actions__),t}}return new l(n)}function l(n,t){this.__wrapped__=n,this.__actions__=[],this.__chain__=!!t}function p(n,t,r,e){return n===ln||H(n,xn[r])&&!En.call(e,r)?t:n;
}function s(n,t,r){if(typeof n!="function")throw new TypeError("Expected a function");return setTimeout(function(){n.apply(ln,r)},t)}function h(n,t){var r=true;return $n(n,function(n,e,u){return r=!!t(n,e,u)}),r}function v(n,t){var r=[];return $n(n,function(n,e,u){t(n,e,u)&&r.push(n)}),r}function y(t,r,e,u){u||(u=[]);for(var o=-1,i=t.length;++o<i;){var c=t[o];Z(c)&&Q(c)&&(e||Vn(c)||L(c))?r?y(c,r,e,u):n(u,c):e||(u[u.length]=c)}return u}function _(n,t){return n&&qn(n,t,un)}function g(n,t){return v(t,function(t){
return W(n[t])})}function b(n,t,r,e,u){return n===t?true:null==n||null==t||!Y(n)&&!Z(t)?n!==n&&t!==t:j(n,t,b,r,e,u)}function j(n,t,r,e,u,o){var i=Vn(n),f=Vn(t),a="[object Array]",l="[object Array]";i||(a=kn.call(n),"[object Arguments]"==a&&(a="[object Object]")),f||(l=kn.call(t),"[object Arguments]"==l&&(l="[object Object]"));var p="[object Object]"==a&&!c(n),f="[object Object]"==l&&!c(t);return!(l=a==l)||i||p?2&u||(a=p&&En.call(n,"__wrapped__"),f=f&&En.call(t,"__wrapped__"),!a&&!f)?l?(o||(o=[]),(a=C(o,function(t){
return t[0]===n}))&&a[1]?a[1]==t:(o.push([n,t]),t=(i?R:$)(n,t,r,e,u,o),o.pop(),t)):false:r(a?n.value():n,f?t.value():t,e,u,o):I(n,t,a)}function d(n){var t=typeof n;return"function"==t?n:null==n?fn:("object"==t?O:E)(n)}function m(n){n=null==n?n:Object(n);var t,r=[];for(t in n)r.push(t);return r}function w(n,t){var r=-1,e=Q(n)?Array(n.length):[];return $n(n,function(n,u,o){e[++r]=t(n,u,o)}),e}function O(n){var t=un(n),r=t.length;return function(e){if(null==e)return!r;for(e=Object(e);r--;){var u=t[r];if(!(u in e&&b(n[u],e[u],ln,true)))return false;
}return true}}function x(n,t){return n=Object(n),J(t,function(t,r){return r in n&&(t[r]=n[r]),t},{})}function E(n){return function(t){return null==t?ln:t[n]}}function A(n,t,r){var e=-1,u=n.length;for(0>t&&(t=-t>u?0:u+t),r=r>u?u:r,0>r&&(r+=u),u=t>r?0:r-t>>>0,t>>>=0,r=Array(u);++e<u;)r[e]=n[e+t];return r}function k(n){return A(n,0,n.length)}function N(n,t){var r;return $n(n,function(n,e,u){return r=t(n,e,u),!r}),!!r}function S(t,r){return J(r,function(t,r){return r.func.apply(r.thisArg,n([t],r.args))},t);
}function T(n,t,r,e){r||(r={});for(var u=-1,o=t.length;++u<o;){var i=t[u],c=e?e(r[i],n[i],i,r,n):n[i],f=r,a=f[i];(!H(a,c)||H(a,xn[i])&&!En.call(f,i)||c===ln&&!(i in f))&&(f[i]=c)}return r}function F(n){return V(function(t,r){var e=-1,u=r.length,o=u>1?r[u-1]:ln,o=typeof o=="function"?(u--,o):ln;for(t=Object(t);++e<u;){var i=r[e];i&&n(t,i,o)}return t})}function B(n){return function(){var t=arguments,r=In(n.prototype),t=n.apply(r,t);return Y(t)?t:r}}function D(n,t,r){function e(){for(var o=-1,i=arguments.length,c=-1,f=r.length,a=Array(f+i),l=this&&this!==wn&&this instanceof e?u:n;++c<f;)a[c]=r[c];
for(;i--;)a[c++]=arguments[++o];return l.apply(t,a)}if(typeof n!="function")throw new TypeError("Expected a function");var u=B(n);return e}function R(n,t,r,e,u,o){var i=-1,c=1&u,f=n.length,a=t.length;if(f!=a&&!(2&u&&a>f))return false;for(a=true;++i<f;){var l=n[i],p=t[i];if(void 0!==ln){a=false;break}if(c){if(!N(t,function(n){return l===n||r(l,n,e,u,o)})){a=false;break}}else if(l!==p&&!r(l,p,e,u,o)){a=false;break}}return a}function I(n,t,r){switch(r){case"[object Boolean]":case"[object Date]":return+n==+t;case"[object Error]":
return n.name==t.name&&n.message==t.message;case"[object Number]":return n!=+n?t!=+t:n==+t;case"[object RegExp]":case"[object String]":return n==t+""}return false}function $(n,t,r,e,u,o){var i=2&u,c=1&u,f=un(n),a=f.length,l=un(t);if(a!=l.length&&!i)return false;for(var p=a;p--;){var s=f[p];if(!(i?s in t:En.call(t,s))||!c&&s!=l[p])return false}for(c=true;++p<a;){var s=f[p],l=n[s],h=t[s];if(void 0!==ln||l!==h&&!r(l,h,e,u,o)){c=false;break}i||(i="constructor"==s)}return c&&!i&&(r=n.constructor,e=t.constructor,r!=e&&"constructor"in n&&"constructor"in t&&!(typeof r=="function"&&r instanceof r&&typeof e=="function"&&e instanceof e)&&(c=false)),
c}function q(n){var t=n?n.length:ln;if(X(t)&&(Vn(n)||tn(n)||L(n))){n=String;for(var r=-1,e=Array(t);++r<t;)e[r]=n(r);t=e}else t=null;return t}function M(n){var t=n&&n.constructor;return n===(typeof t=="function"&&t.prototype||xn)}function z(n){return n?n[0]:ln}function C(n,t){return r(n,d(t),$n)}function G(n,t){return $n(n,typeof t=="function"?t:fn)}function J(n,t,r){return e(n,d(t),r,3>arguments.length,$n)}function P(n){return null==n?0:(n=Q(n)?n:un(n),n.length)}function U(n,t){var r;if(typeof t!="function")throw new TypeError("Expected a function");
return n=Hn(n),function(){return 0<--n&&(r=t.apply(this,arguments)),1>=n&&(t=ln),r}}function V(n){var t;if(typeof n!="function")throw new TypeError("Expected a function");return t=Rn(t===ln?n.length-1:Hn(t),0),function(){for(var r=arguments,e=-1,u=Rn(r.length-t,0),o=Array(u);++e<u;)o[e]=r[t+e];for(u=Array(t+1),e=-1;++e<t;)u[e]=r[e];return u[t]=o,n.apply(this,u)}}function H(n,t){return n===t||n!==n&&t!==t}function K(n,t){return n>t}function L(n){return Z(n)&&Q(n)&&En.call(n,"callee")&&(!Fn.call(n,"callee")||"[object Arguments]"==kn.call(n));
}function Q(n){return null!=n&&!(typeof n=="function"&&W(n))&&X(Mn(n))}function W(n){return n=Y(n)?kn.call(n):"","[object Function]"==n||"[object GeneratorFunction]"==n}function X(n){return typeof n=="number"&&n>-1&&0==n%1&&9007199254740991>=n}function Y(n){var t=typeof n;return!!n&&("object"==t||"function"==t)}function Z(n){return!!n&&typeof n=="object"}function nn(n){return typeof n=="number"||Z(n)&&"[object Number]"==kn.call(n)}function tn(n){return typeof n=="string"||!Vn(n)&&Z(n)&&"[object String]"==kn.call(n);
}function rn(n,t){return t>n}function en(n){return typeof n=="string"?n:null==n?"":n+""}function un(n){var t=M(n);if(!t&&!Q(n))return Dn(Object(n));var r,e=q(n),u=!!e,e=e||[],o=e.length;for(r in n)!En.call(n,r)||u&&("length"==r||f(r,o))||t&&"constructor"==r||e.push(r);return e}function on(n){for(var t=-1,r=M(n),e=m(n),u=e.length,o=q(n),i=!!o,o=o||[],c=o.length;++t<u;){var a=e[t];i&&("length"==a||f(a,c))||"constructor"==a&&(r||!En.call(n,a))||o.push(a)}return o}function cn(n){return n?u(n,un(n)):[];
}function fn(n){return n}function an(t,r,e){var u=un(r),o=g(r,u);null!=e||Y(r)&&(o.length||!u.length)||(e=r,r=t,t=this,o=g(r,un(r)));var i=Y(e)&&"chain"in e?e.chain:true,c=W(t);return $n(o,function(e){var u=r[e];t[e]=u,c&&(t.prototype[e]=function(){var r=this.__chain__;if(i||r){var e=t(this.__wrapped__);return(e.__actions__=k(this.__actions__)).push({func:u,args:arguments,thisArg:t}),e.__chain__=r,e}return u.apply(t,n([this.value()],arguments))})}),t}var ln,pn=/[&<>"'`]/g,sn=RegExp(pn.source),hn=/^(?:0|[1-9]\d*)$/,vn={
"&":"&amp;","<":"&lt;",">":"&gt;",'"':"&quot;","'":"&#39;","`":"&#96;"},yn={"function":true,object:true},_n=yn[typeof exports]&&exports&&!exports.nodeType?exports:null,gn=yn[typeof module]&&module&&!module.nodeType?module:null,bn=o(yn[typeof self]&&self),jn=o(yn[typeof window]&&window),dn=gn&&gn.exports===_n?_n:null,mn=o(yn[typeof this]&&this),wn=o(_n&&gn&&typeof global=="object"&&global)||jn!==(mn&&mn.window)&&jn||bn||mn||Function("return this")(),On=Array.prototype,xn=Object.prototype,En=xn.hasOwnProperty,An=0,kn=xn.toString,Nn=wn._,Sn=wn.f,Tn=Sn?Sn.g:ln,Fn=xn.propertyIsEnumerable,Bn=wn.isFinite,Dn=Object.keys,Rn=Math.max,In=function(){
function n(){}return function(t){if(Y(t)){n.prototype=t;var r=new n;n.prototype=ln}return r||{}}}(),$n=function(n,t){return function(r,e){if(null==r)return r;if(!Q(r))return n(r,e);for(var u=r.length,o=t?u:-1,i=Object(r);(t?o--:++o<u)&&false!==e(i[o],o,i););return r}}(_),qn=function(n){return function(t,r,e){var u=-1,o=Object(t);e=e(t);for(var i=e.length;i--;){var c=e[n?i:++u];if(false===r(o[c],c,o))break}return t}}();Tn&&!Fn.call({valueOf:1},"valueOf")&&(m=function(n){n=Tn(n);for(var t,r=[];!(t=n.next()).done;)r.push(t.value);
return r});var Mn=E("length"),zn=V(function(t,r){y(r);var e=Vn(t)?t:[Object(t)];return n(k(e),cn)}),Cn=V(function(n,t,r){var e=typeof t=="function";return w(n,function(n){var u=e?t:n[t];return null==u?u:u.apply(n,r)})}),Gn=Date.now,Jn=V(function(n,t,r){return D(n,t,r)}),Pn=V(function(n,t){return s(n,1,t)}),Un=V(function(n,t,r){return s(n,Kn(t)||0,r)}),Vn=Array.isArray,Hn=Number,Kn=Number,Ln=F(function(n,t){T(t,un(t),n)}),Qn=F(function(n,t){T(t,on(t),n)}),Wn=F(function(n,t,r){T(t,on(t),n,r)}),Xn=V(function(n){
return n.push(ln,p),Wn.apply(ln,n)}),Yn=V(function(n,t){return null==n?{}:x(n,y(t))}),Zn=d;l.prototype=In(a.prototype),l.prototype.constructor=l,a.assignIn=Qn,a.before=U,a.bind=Jn,a.chain=function(n){return n=a(n),n.__chain__=true,n},a.compact=function(n){return v(n,Boolean)},a.concat=zn,a.create=function(n,t){var r=In(n);return t?Ln(r,t):r},a.defaults=Xn,a.defer=Pn,a.delay=Un,a.filter=function(n,t){return v(n,d(t))},a.flatten=function(n){return n&&n.length?y(n):[]},a.flattenDeep=function(n){return n&&n.length?y(n,true):[];
},a.invokeMap=Cn,a.iteratee=Zn,a.keys=un,a.map=function(n,t){return w(n,d(t))},a.mixin=an,a.negate=function(n){if(typeof n!="function")throw new TypeError("Expected a function");return function(){return!n.apply(this,arguments)}},a.once=function(n){return U(2,n)},a.pick=Yn,a.slice=function(n,t,r){return n&&n.length?A(n,t,r):[]},a.sortBy=function(n,t){var r=0;return t=d(t),w(w(n,function(n,e,u){return{c:n,b:r++,a:t(n,e,u)}}).sort(function(n,t){var r;n:{r=n.a;var e=t.a;if(r!==e){var u=null===r,o=r===ln,i=r===r,c=null===e,f=e===ln,a=e===e;
if(r>e&&!c||!i||u&&!f&&a||o&&a){r=1;break n}if(e>r&&!u||!a||c&&!o&&i||f&&i){r=-1;break n}}r=0}return r||n.b-t.b}),E("c"))},a.tap=function(n,t){return t(n),n},a.thru=function(n,t){return t(n)},a.toArray=function(n){return Q(n)?n.length?k(n):[]:cn(n)},a.values=cn,a.each=G,a.extend=Qn,an(a,a),a.clone=function(n){return Y(n)?Vn(n)?k(n):T(n,un(n)):n},a.escape=function(n){return(n=en(n))&&sn.test(n)?n.replace(pn,i):n},a.every=function(n,t,r){return t=r?ln:t,h(n,d(t))},a.find=C,a.forEach=G,a.has=function(n,t){
return null!=n&&En.call(n,t)},a.head=z,a.identity=fn,a.indexOf=function(n,t,r){var e=n?n.length:0;r=typeof r=="number"?0>r?Rn(e+r,0):r:0,r=(r||0)-1;for(var u=t===t;++r<e;){var o=n[r];if(u?o===t:o!==o)return r}return-1},a.isArguments=L,a.isArray=Vn,a.isBoolean=function(n){return true===n||false===n||Z(n)&&"[object Boolean]"==kn.call(n)},a.isDate=function(n){return Z(n)&&"[object Date]"==kn.call(n)},a.isEmpty=function(n){return!Z(n)||W(n.splice)?!P(n):!un(n).length},a.isEqual=function(n,t){return b(n,t)},
a.isFinite=function(n){return typeof n=="number"&&Bn(n)},a.isFunction=W,a.isNaN=function(n){return nn(n)&&n!=+n},a.isNull=function(n){return null===n},a.isNumber=nn,a.isObject=Y,a.isRegExp=function(n){return Y(n)&&"[object RegExp]"==kn.call(n)},a.isString=tn,a.isUndefined=function(n){return n===ln},a.last=function(n){var t=n?n.length:0;return t?n[t-1]:ln},a.max=function(n){return n&&n.length?t(n,fn,K):ln},a.min=function(n){return n&&n.length?t(n,fn,rn):ln},a.noConflict=function(){return wn._=Nn,this;
},a.noop=function(){},a.now=Gn,a.reduce=J,a.result=function(n,t,r){return t=null==n?ln:n[t],t===ln&&(t=r),W(t)?t.call(n):t},a.size=P,a.some=function(n,t,r){return t=r?ln:t,N(n,d(t))},a.uniqueId=function(n){var t=++An;return en(n)+t},a.first=z,an(a,function(){var n={};return _(a,function(t,r){En.call(a.prototype,r)||(n[r]=t)}),n}(),{chain:false}),a.VERSION="4.0.0",$n("pop join replace reverse split push shift sort splice unshift".split(" "),function(n){var t=(/^(?:replace|split)$/.test(n)?String.prototype:On)[n],r=/^(?:push|sort|unshift)$/.test(n)?"tap":"thru",e=/^(?:pop|join|replace|shift)$/.test(n);
a.prototype[n]=function(){var n=arguments;return e&&!this.__chain__?t.apply(this.value(),n):this[r](function(r){return t.apply(r,n)})}}),a.prototype.toJSON=a.prototype.valueOf=a.prototype.value=function(){return S(this.__wrapped__,this.__actions__)},(jn||bn||{})._=a,typeof define=="function"&&typeof define.amd=="object"&&define.amd? define(function(){return a}):_n&&gn?(dn&&((gn.exports=a)._=a),_n._=a):wn._=a}).call(this);
(function webpackUniversalModuleDefinition(root, factory) {
	if(typeof exports === 'object' && typeof module === 'object')
		module.exports = factory();
	else if(typeof define === 'function' && define.amd)
		define([], factory);
	else if(typeof exports === 'object')
		exports["Alt"] = factory();
	else
		root["Alt"] = factory();
})(this, function() {
return /******/ (function(modules) { // webpackBootstrap
/******/ 	// The module cache
/******/ 	var installedModules = {};

/******/ 	// The require function
/******/ 	function __webpack_require__(moduleId) {

/******/ 		// Check if module is in cache
/******/ 		if(installedModules[moduleId])
/******/ 			return installedModules[moduleId].exports;

/******/ 		// Create a new module (and put it into the cache)
/******/ 		var module = installedModules[moduleId] = {
/******/ 			exports: {},
/******/ 			id: moduleId,
/******/ 			loaded: false
/******/ 		};

/******/ 		// Execute the module function
/******/ 		modules[moduleId].call(module.exports, module, module.exports, __webpack_require__);

/******/ 		// Flag the module as loaded
/******/ 		module.loaded = true;

/******/ 		// Return the exports of the module
/******/ 		return module.exports;
/******/ 	}


/******/ 	// expose the modules object (__webpack_modules__)
/******/ 	__webpack_require__.m = modules;

/******/ 	// expose the module cache
/******/ 	__webpack_require__.c = installedModules;

/******/ 	// __webpack_public_path__
/******/ 	__webpack_require__.p = "";

/******/ 	// Load entry module and return exports
/******/ 	return __webpack_require__(0);
/******/ })
/************************************************************************/
/******/ ([
/* 0 */
/***/ function(module, exports, __webpack_require__) {

	module.exports = __webpack_require__(1);


/***/ },
/* 1 */
/***/ function(module, exports, __webpack_require__) {

	/* global window */
	'use strict';

	Object.defineProperty(exports, '__esModule', {
	  value: true
	});
	var _bind = Function.prototype.bind;

	var _get = function get(_x3, _x4, _x5) { var _again = true; _function: while (_again) { var object = _x3, property = _x4, receiver = _x5; desc = parent = getter = undefined; _again = false; if (object === null) object = Function.prototype; var desc = Object.getOwnPropertyDescriptor(object, property); if (desc === undefined) { var parent = Object.getPrototypeOf(object); if (parent === null) { return undefined; } else { _x3 = parent; _x4 = property; _x5 = receiver; _again = true; continue _function; } } else if ('value' in desc) { return desc.value; } else { var getter = desc.get; if (getter === undefined) { return undefined; } return getter.call(receiver); } } };

	var _createClass = (function () { function defineProperties(target, props) { for (var i = 0; i < props.length; i++) { var descriptor = props[i]; descriptor.enumerable = descriptor.enumerable || false; descriptor.configurable = true; if ('value' in descriptor) descriptor.writable = true; Object.defineProperty(target, descriptor.key, descriptor); } } return function (Constructor, protoProps, staticProps) { if (protoProps) defineProperties(Constructor.prototype, protoProps); if (staticProps) defineProperties(Constructor, staticProps); return Constructor; }; })();

	function _interopRequireDefault(obj) { return obj && obj.__esModule ? obj : { 'default': obj }; }

	function _interopRequireWildcard(obj) { if (obj && obj.__esModule) { return obj; } else { var newObj = {}; if (obj != null) { for (var key in obj) { if (Object.prototype.hasOwnProperty.call(obj, key)) newObj[key] = obj[key]; } } newObj['default'] = obj; return newObj; } }

	function _toConsumableArray(arr) { if (Array.isArray(arr)) { for (var i = 0, arr2 = Array(arr.length); i < arr.length; i++) arr2[i] = arr[i]; return arr2; } else { return Array.from(arr); } }

	function _inherits(subClass, superClass) { if (typeof superClass !== 'function' && superClass !== null) { throw new TypeError('Super expression must either be null or a function, not ' + typeof superClass); } subClass.prototype = Object.create(superClass && superClass.prototype, { constructor: { value: subClass, enumerable: false, writable: true, configurable: true } }); if (superClass) Object.setPrototypeOf ? Object.setPrototypeOf(subClass, superClass) : subClass.__proto__ = superClass; }

	function _classCallCheck(instance, Constructor) { if (!(instance instanceof Constructor)) { throw new TypeError('Cannot call a class as a function'); } }

	var _flux = __webpack_require__(2);

	var _utilsStateFunctions = __webpack_require__(5);

	var StateFunctions = _interopRequireWildcard(_utilsStateFunctions);

	var _functions = __webpack_require__(6);

	var fn = _interopRequireWildcard(_functions);

	var _store = __webpack_require__(7);

	var store = _interopRequireWildcard(_store);

	var _utilsAltUtils = __webpack_require__(8);

	var utils = _interopRequireWildcard(_utilsAltUtils);

	var _actions = __webpack_require__(12);

	var _actions2 = _interopRequireDefault(_actions);

	var Alt = (function () {
	  function Alt() {
	    var config = arguments.length <= 0 || arguments[0] === undefined ? {} : arguments[0];

	    _classCallCheck(this, Alt);

	    this.config = config;
	    this.serialize = config.serialize || JSON.stringify;
	    this.deserialize = config.deserialize || JSON.parse;
	    this.dispatcher = config.dispatcher || new _flux.Dispatcher();
	    this.batchingFunction = config.batchingFunction || function (callback) {
	      return callback();
	    };
	    this.actions = { global: {} };
	    this.stores = {};
	    this.storeTransforms = config.storeTransforms || [];
	    this.trapAsync = false;
	    this._actionsRegistry = {};
	    this._initSnapshot = {};
	    this._lastSnapshot = {};
	  }

	  _createClass(Alt, [{
	    key: 'dispatch',
	    value: function dispatch(action, data, details) {
	      var _this = this;

	      this.batchingFunction(function () {
	        var id = Math.random().toString(18).substr(2, 16);

	        // support straight dispatching of FSA-style actions
	        if (action.hasOwnProperty('type') && action.hasOwnProperty('payload')) {
	          var fsaDetails = {
	            id: action.type,
	            namespace: action.type,
	            name: action.type
	          };
	          return _this.dispatcher.dispatch(utils.fsa(id, action.type, action.payload, fsaDetails));
	        }

	        if (action.id && action.dispatch) {
	          return utils.dispatch(id, action, data, _this);
	        }

	        return _this.dispatcher.dispatch(utils.fsa(id, action, data, details));
	      });
	    }
	  }, {
	    key: 'createUnsavedStore',
	    value: function createUnsavedStore(StoreModel) {
	      var key = StoreModel.displayName || '';
	      store.createStoreConfig(this.config, StoreModel);
	      var Store = store.transformStore(this.storeTransforms, StoreModel);

	      for (var _len = arguments.length, args = Array(_len > 1 ? _len - 1 : 0), _key = 1; _key < _len; _key++) {
	        args[_key - 1] = arguments[_key];
	      }

	      return fn.isFunction(Store) ? store.createStoreFromClass.apply(store, [this, Store, key].concat(args)) : store.createStoreFromObject(this, Store, key);
	    }
	  }, {
	    key: 'createStore',
	    value: function createStore(StoreModel, iden) {
	      var key = iden || StoreModel.displayName || StoreModel.name || '';
	      store.createStoreConfig(this.config, StoreModel);
	      var Store = store.transformStore(this.storeTransforms, StoreModel);

	      /* istanbul ignore next */
	      if (false) delete this.stores[key];

	      if (this.stores[key] || !key) {
	        if (this.stores[key]) {
	          utils.warn('A store named ' + key + ' already exists, double check your store ' + 'names or pass in your own custom identifier for each store');
	        } else {
	          utils.warn('Store name was not specified');
	        }

	        key = utils.uid(this.stores, key);
	      }

	      for (var _len2 = arguments.length, args = Array(_len2 > 2 ? _len2 - 2 : 0), _key2 = 2; _key2 < _len2; _key2++) {
	        args[_key2 - 2] = arguments[_key2];
	      }

	      var storeInstance = fn.isFunction(Store) ? store.createStoreFromClass.apply(store, [this, Store, key].concat(args)) : store.createStoreFromObject(this, Store, key);

	      this.stores[key] = storeInstance;
	      StateFunctions.saveInitialSnapshot(this, key);

	      return storeInstance;
	    }
	  }, {
	    key: 'generateActions',
	    value: function generateActions() {
	      var actions = { name: 'global' };

	      for (var _len3 = arguments.length, actionNames = Array(_len3), _key3 = 0; _key3 < _len3; _key3++) {
	        actionNames[_key3] = arguments[_key3];
	      }

	      return this.createActions(actionNames.reduce(function (obj, action) {
	        obj[action] = utils.dispatchIdentity;
	        return obj;
	      }, actions));
	    }
	  }, {
	    key: 'createAction',
	    value: function createAction(name, implementation, obj) {
	      return (0, _actions2['default'])(this, 'global', name, implementation, obj);
	    }
	  }, {
	    key: 'createActions',
	    value: function createActions(ActionsClass) {
	      var _arguments2 = arguments,
	          _this2 = this;

	      var exportObj = arguments.length <= 1 || arguments[1] === undefined ? {} : arguments[1];

	      var actions = {};
	      var key = utils.uid(this._actionsRegistry, ActionsClass.displayName || ActionsClass.name || 'Unknown');

	      if (fn.isFunction(ActionsClass)) {
	        var _len4, argsForConstructor, _key4;

	        (function () {
	          fn.assign(actions, utils.getPrototypeChain(ActionsClass));

	          var ActionsGenerator = (function (_ActionsClass) {
	            _inherits(ActionsGenerator, _ActionsClass);

	            function ActionsGenerator() {
	              _classCallCheck(this, ActionsGenerator);

	              for (var _len5 = arguments.length, args = Array(_len5), _key5 = 0; _key5 < _len5; _key5++) {
	                args[_key5] = arguments[_key5];
	              }

	              _get(Object.getPrototypeOf(ActionsGenerator.prototype), 'constructor', this).apply(this, args);
	            }

	            _createClass(ActionsGenerator, [{
	              key: 'generateActions',
	              value: function generateActions() {
	                for (var _len6 = arguments.length, actionNames = Array(_len6), _key6 = 0; _key6 < _len6; _key6++) {
	                  actionNames[_key6] = arguments[_key6];
	                }

	                actionNames.forEach(function (actionName) {
	                  actions[actionName] = utils.dispatchIdentity;
	                });
	              }
	            }]);

	            return ActionsGenerator;
	          })(ActionsClass);

	          for (_len4 = _arguments2.length, argsForConstructor = Array(_len4 > 2 ? _len4 - 2 : 0), _key4 = 2; _key4 < _len4; _key4++) {
	            argsForConstructor[_key4 - 2] = _arguments2[_key4];
	          }

	          fn.assign(actions, new (_bind.apply(ActionsGenerator, [null].concat(_toConsumableArray(argsForConstructor))))());
	        })();
	      } else {
	        fn.assign(actions, ActionsClass);
	      }

	      this.actions[key] = this.actions[key] || {};

	      fn.eachObject(function (actionName, action) {
	        if (!fn.isFunction(action)) {
	          exportObj[actionName] = action;
	          return;
	        }

	        // create the action
	        exportObj[actionName] = (0, _actions2['default'])(_this2, key, actionName, action, exportObj);

	        // generate a constant
	        var constant = utils.formatAsConstant(actionName);
	        exportObj[constant] = exportObj[actionName].id;
	      }, [actions]);

	      return exportObj;
	    }
	  }, {
	    key: 'takeSnapshot',
	    value: function takeSnapshot() {
	      for (var _len7 = arguments.length, storeNames = Array(_len7), _key7 = 0; _key7 < _len7; _key7++) {
	        storeNames[_key7] = arguments[_key7];
	      }

	      var state = StateFunctions.snapshot(this, storeNames);
	      fn.assign(this._lastSnapshot, state);
	      return this.serialize(state);
	    }
	  }, {
	    key: 'rollback',
	    value: function rollback() {
	      StateFunctions.setAppState(this, this.serialize(this._lastSnapshot), function (storeInst) {
	        storeInst.lifecycle('rollback');
	        storeInst.emitChange();
	      });
	    }
	  }, {
	    key: 'recycle',
	    value: function recycle() {
	      for (var _len8 = arguments.length, storeNames = Array(_len8), _key8 = 0; _key8 < _len8; _key8++) {
	        storeNames[_key8] = arguments[_key8];
	      }

	      var initialSnapshot = storeNames.length ? StateFunctions.filterSnapshots(this, this._initSnapshot, storeNames) : this._initSnapshot;

	      StateFunctions.setAppState(this, this.serialize(initialSnapshot), function (storeInst) {
	        storeInst.lifecycle('init');
	        storeInst.emitChange();
	      });
	    }
	  }, {
	    key: 'flush',
	    value: function flush() {
	      var state = this.serialize(StateFunctions.snapshot(this));
	      this.recycle();
	      return state;
	    }
	  }, {
	    key: 'bootstrap',
	    value: function bootstrap(data) {
	      StateFunctions.setAppState(this, data, function (storeInst, state) {
	        storeInst.lifecycle('bootstrap', state);
	        storeInst.emitChange();
	      });
	    }
	  }, {
	    key: 'prepare',
	    value: function prepare(storeInst, payload) {
	      var data = {};
	      if (!storeInst.displayName) {
	        throw new ReferenceError('Store provided does not have a name');
	      }
	      data[storeInst.displayName] = payload;
	      return this.serialize(data);
	    }

	    // Instance type methods for injecting alt into your application as context

	  }, {
	    key: 'addActions',
	    value: function addActions(name, ActionsClass) {
	      for (var _len9 = arguments.length, args = Array(_len9 > 2 ? _len9 - 2 : 0), _key9 = 2; _key9 < _len9; _key9++) {
	        args[_key9 - 2] = arguments[_key9];
	      }

	      this.actions[name] = Array.isArray(ActionsClass) ? this.generateActions.apply(this, ActionsClass) : this.createActions.apply(this, [ActionsClass].concat(args));
	    }
	  }, {
	    key: 'addStore',
	    value: function addStore(name, StoreModel) {
	      for (var _len10 = arguments.length, args = Array(_len10 > 2 ? _len10 - 2 : 0), _key10 = 2; _key10 < _len10; _key10++) {
	        args[_key10 - 2] = arguments[_key10];
	      }

	      this.createStore.apply(this, [StoreModel, name].concat(args));
	    }
	  }, {
	    key: 'getActions',
	    value: function getActions(name) {
	      return this.actions[name];
	    }
	  }, {
	    key: 'getStore',
	    value: function getStore(name) {
	      return this.stores[name];
	    }
	  }], [{
	    key: 'debug',
	    value: function debug(name, alt) {
	      var key = 'alt.js.org';
	      if (typeof window !== 'undefined') {
	        window[key] = window[key] || [];
	        window[key].push({ name: name, alt: alt });
	      }
	      return alt;
	    }
	  }]);

	  return Alt;
	})();

	exports['default'] = Alt;
	module.exports = exports['default'];

/***/ },
/* 2 */
/***/ function(module, exports, __webpack_require__) {

	/**
	 * Copyright (c) 2014-2015, Facebook, Inc.
	 * All rights reserved.
	 *
	 * This source code is licensed under the BSD-style license found in the
	 * LICENSE file in the root directory of this source tree. An additional grant
	 * of patent rights can be found in the PATENTS file in the same directory.
	 */

	module.exports.Dispatcher = __webpack_require__(3)


/***/ },
/* 3 */
/***/ function(module, exports, __webpack_require__) {

	/*
	 * Copyright (c) 2014, Facebook, Inc.
	 * All rights reserved.
	 *
	 * This source code is licensed under the BSD-style license found in the
	 * LICENSE file in the root directory of this source tree. An additional grant
	 * of patent rights can be found in the PATENTS file in the same directory.
	 *
	 * @providesModule Dispatcher
	 * @typechecks
	 */

	"use strict";

	var invariant = __webpack_require__(4);

	var _lastID = 1;
	var _prefix = 'ID_';

	/**
	 * Dispatcher is used to broadcast payloads to registered callbacks. This is
	 * different from generic pub-sub systems in two ways:
	 *
	 *   1) Callbacks are not subscribed to particular events. Every payload is
	 *      dispatched to every registered callback.
	 *   2) Callbacks can be deferred in whole or part until other callbacks have
	 *      been executed.
	 *
	 * For example, consider this hypothetical flight destination form, which
	 * selects a default city when a country is selected:
	 *
	 *   var flightDispatcher = new Dispatcher();
	 *
	 *   // Keeps track of which country is selected
	 *   var CountryStore = {country: null};
	 *
	 *   // Keeps track of which city is selected
	 *   var CityStore = {city: null};
	 *
	 *   // Keeps track of the base flight price of the selected city
	 *   var FlightPriceStore = {price: null}
	 *
	 * When a user changes the selected city, we dispatch the payload:
	 *
	 *   flightDispatcher.dispatch({
	 *     actionType: 'city-update',
	 *     selectedCity: 'paris'
	 *   });
	 *
	 * This payload is digested by `CityStore`:
	 *
	 *   flightDispatcher.register(function(payload) {
	 *     if (payload.actionType === 'city-update') {
	 *       CityStore.city = payload.selectedCity;
	 *     }
	 *   });
	 *
	 * When the user selects a country, we dispatch the payload:
	 *
	 *   flightDispatcher.dispatch({
	 *     actionType: 'country-update',
	 *     selectedCountry: 'australia'
	 *   });
	 *
	 * This payload is digested by both stores:
	 *
	 *    CountryStore.dispatchToken = flightDispatcher.register(function(payload) {
	 *     if (payload.actionType === 'country-update') {
	 *       CountryStore.country = payload.selectedCountry;
	 *     }
	 *   });
	 *
	 * When the callback to update `CountryStore` is registered, we save a reference
	 * to the returned token. Using this token with `waitFor()`, we can guarantee
	 * that `CountryStore` is updated before the callback that updates `CityStore`
	 * needs to query its data.
	 *
	 *   CityStore.dispatchToken = flightDispatcher.register(function(payload) {
	 *     if (payload.actionType === 'country-update') {
	 *       // `CountryStore.country` may not be updated.
	 *       flightDispatcher.waitFor([CountryStore.dispatchToken]);
	 *       // `CountryStore.country` is now guaranteed to be updated.
	 *
	 *       // Select the default city for the new country
	 *       CityStore.city = getDefaultCityForCountry(CountryStore.country);
	 *     }
	 *   });
	 *
	 * The usage of `waitFor()` can be chained, for example:
	 *
	 *   FlightPriceStore.dispatchToken =
	 *     flightDispatcher.register(function(payload) {
	 *       switch (payload.actionType) {
	 *         case 'country-update':
	 *           flightDispatcher.waitFor([CityStore.dispatchToken]);
	 *           FlightPriceStore.price =
	 *             getFlightPriceStore(CountryStore.country, CityStore.city);
	 *           break;
	 *
	 *         case 'city-update':
	 *           FlightPriceStore.price =
	 *             FlightPriceStore(CountryStore.country, CityStore.city);
	 *           break;
	 *     }
	 *   });
	 *
	 * The `country-update` payload will be guaranteed to invoke the stores'
	 * registered callbacks in order: `CountryStore`, `CityStore`, then
	 * `FlightPriceStore`.
	 */

	  function Dispatcher() {
	    this.$Dispatcher_callbacks = {};
	    this.$Dispatcher_isPending = {};
	    this.$Dispatcher_isHandled = {};
	    this.$Dispatcher_isDispatching = false;
	    this.$Dispatcher_pendingPayload = null;
	  }

	  /**
	   * Registers a callback to be invoked with every dispatched payload. Returns
	   * a token that can be used with `waitFor()`.
	   *
	   * @param {function} callback
	   * @return {string}
	   */
	  Dispatcher.prototype.register=function(callback) {
	    var id = _prefix + _lastID++;
	    this.$Dispatcher_callbacks[id] = callback;
	    return id;
	  };

	  /**
	   * Removes a callback based on its token.
	   *
	   * @param {string} id
	   */
	  Dispatcher.prototype.unregister=function(id) {
	    invariant(
	      this.$Dispatcher_callbacks[id],
	      'Dispatcher.unregister(...): `%s` does not map to a registered callback.',
	      id
	    );
	    delete this.$Dispatcher_callbacks[id];
	  };

	  /**
	   * Waits for the callbacks specified to be invoked before continuing execution
	   * of the current callback. This method should only be used by a callback in
	   * response to a dispatched payload.
	   *
	   * @param {array<string>} ids
	   */
	  Dispatcher.prototype.waitFor=function(ids) {
	    invariant(
	      this.$Dispatcher_isDispatching,
	      'Dispatcher.waitFor(...): Must be invoked while dispatching.'
	    );
	    for (var ii = 0; ii < ids.length; ii++) {
	      var id = ids[ii];
	      if (this.$Dispatcher_isPending[id]) {
	        invariant(
	          this.$Dispatcher_isHandled[id],
	          'Dispatcher.waitFor(...): Circular dependency detected while ' +
	          'waiting for `%s`.',
	          id
	        );
	        continue;
	      }
	      invariant(
	        this.$Dispatcher_callbacks[id],
	        'Dispatcher.waitFor(...): `%s` does not map to a registered callback.',
	        id
	      );
	      this.$Dispatcher_invokeCallback(id);
	    }
	  };

	  /**
	   * Dispatches a payload to all registered callbacks.
	   *
	   * @param {object} payload
	   */
	  Dispatcher.prototype.dispatch=function(payload) {
	    invariant(
	      !this.$Dispatcher_isDispatching,
	      'Dispatch.dispatch(...): Cannot dispatch in the middle of a dispatch.'
	    );
	    this.$Dispatcher_startDispatching(payload);
	    try {
	      for (var id in this.$Dispatcher_callbacks) {
	        if (this.$Dispatcher_isPending[id]) {
	          continue;
	        }
	        this.$Dispatcher_invokeCallback(id);
	      }
	    } finally {
	      this.$Dispatcher_stopDispatching();
	    }
	  };

	  /**
	   * Is this Dispatcher currently dispatching.
	   *
	   * @return {boolean}
	   */
	  Dispatcher.prototype.isDispatching=function() {
	    return this.$Dispatcher_isDispatching;
	  };

	  /**
	   * Call the callback stored with the given id. Also do some internal
	   * bookkeeping.
	   *
	   * @param {string} id
	   * @internal
	   */
	  Dispatcher.prototype.$Dispatcher_invokeCallback=function(id) {
	    this.$Dispatcher_isPending[id] = true;
	    this.$Dispatcher_callbacks[id](this.$Dispatcher_pendingPayload);
	    this.$Dispatcher_isHandled[id] = true;
	  };

	  /**
	   * Set up bookkeeping needed when dispatching.
	   *
	   * @param {object} payload
	   * @internal
	   */
	  Dispatcher.prototype.$Dispatcher_startDispatching=function(payload) {
	    for (var id in this.$Dispatcher_callbacks) {
	      this.$Dispatcher_isPending[id] = false;
	      this.$Dispatcher_isHandled[id] = false;
	    }
	    this.$Dispatcher_pendingPayload = payload;
	    this.$Dispatcher_isDispatching = true;
	  };

	  /**
	   * Clear bookkeeping used for dispatching.
	   *
	   * @internal
	   */
	  Dispatcher.prototype.$Dispatcher_stopDispatching=function() {
	    this.$Dispatcher_pendingPayload = null;
	    this.$Dispatcher_isDispatching = false;
	  };


	module.exports = Dispatcher;


/***/ },
/* 4 */
/***/ function(module, exports) {

	/**
	 * Copyright (c) 2014, Facebook, Inc.
	 * All rights reserved.
	 *
	 * This source code is licensed under the BSD-style license found in the
	 * LICENSE file in the root directory of this source tree. An additional grant
	 * of patent rights can be found in the PATENTS file in the same directory.
	 *
	 * @providesModule invariant
	 */

	"use strict";

	/**
	 * Use invariant() to assert state which your program assumes to be true.
	 *
	 * Provide sprintf-style format (only %s is supported) and arguments
	 * to provide information about what broke and what you were
	 * expecting.
	 *
	 * The invariant message will be stripped in production, but the invariant
	 * will remain to ensure logic does not differ in production.
	 */

	var invariant = function(condition, format, a, b, c, d, e, f) {
	  if (false) {
	    if (format === undefined) {
	      throw new Error('invariant requires an error message argument');
	    }
	  }

	  if (!condition) {
	    var error;
	    if (format === undefined) {
	      error = new Error(
	        'Minified exception occurred; use the non-minified dev environment ' +
	        'for the full error message and additional helpful warnings.'
	      );
	    } else {
	      var args = [a, b, c, d, e, f];
	      var argIndex = 0;
	      error = new Error(
	        'Invariant Violation: ' +
	        format.replace(/%s/g, function() { return args[argIndex++]; })
	      );
	    }

	    error.framesToPop = 1; // we don't care about invariant's own frame
	    throw error;
	  }
	};

	module.exports = invariant;


/***/ },
/* 5 */
/***/ function(module, exports, __webpack_require__) {

	'use strict';

	Object.defineProperty(exports, '__esModule', {
	  value: true
	});
	exports.setAppState = setAppState;
	exports.snapshot = snapshot;
	exports.saveInitialSnapshot = saveInitialSnapshot;
	exports.filterSnapshots = filterSnapshots;

	function _interopRequireWildcard(obj) { if (obj && obj.__esModule) { return obj; } else { var newObj = {}; if (obj != null) { for (var key in obj) { if (Object.prototype.hasOwnProperty.call(obj, key)) newObj[key] = obj[key]; } } newObj['default'] = obj; return newObj; } }

	var _functions = __webpack_require__(6);

	var fn = _interopRequireWildcard(_functions);

	function setAppState(instance, data, onStore) {
	  var obj = instance.deserialize(data);
	  fn.eachObject(function (key, value) {
	    var store = instance.stores[key];
	    if (store) {
	      (function () {
	        var config = store.StoreModel.config;

	        var state = store.state;
	        if (config.onDeserialize) obj[key] = config.onDeserialize(value) || value;
	        if (fn.isMutableObject(state)) {
	          fn.eachObject(function (k) {
	            return delete state[k];
	          }, [state]);
	          fn.assign(state, obj[key]);
	        } else {
	          store.state = obj[key];
	        }
	        onStore(store, store.state);
	      })();
	    }
	  }, [obj]);
	}

	function snapshot(instance) {
	  var storeNames = arguments.length <= 1 || arguments[1] === undefined ? [] : arguments[1];

	  var stores = storeNames.length ? storeNames : Object.keys(instance.stores);
	  return stores.reduce(function (obj, storeHandle) {
	    var storeName = storeHandle.displayName || storeHandle;
	    var store = instance.stores[storeName];
	    var config = store.StoreModel.config;

	    store.lifecycle('snapshot');
	    var customSnapshot = config.onSerialize && config.onSerialize(store.state);
	    obj[storeName] = customSnapshot ? customSnapshot : store.getState();
	    return obj;
	  }, {});
	}

	function saveInitialSnapshot(instance, key) {
	  var state = instance.deserialize(instance.serialize(instance.stores[key].state));
	  instance._initSnapshot[key] = state;
	  instance._lastSnapshot[key] = state;
	}

	function filterSnapshots(instance, state, stores) {
	  return stores.reduce(function (obj, store) {
	    var storeName = store.displayName || store;
	    if (!state[storeName]) {
	      throw new ReferenceError(storeName + ' is not a valid store');
	    }
	    obj[storeName] = state[storeName];
	    return obj;
	  }, {});
	}

/***/ },
/* 6 */
/***/ function(module, exports) {

	'use strict';

	Object.defineProperty(exports, '__esModule', {
	  value: true
	});
	exports.isMutableObject = isMutableObject;
	exports.eachObject = eachObject;
	exports.assign = assign;
	var isFunction = function isFunction(x) {
	  return typeof x === 'function';
	};

	exports.isFunction = isFunction;

	function isMutableObject(target) {
	  var Ctor = target.constructor;

	  return !!target && typeof target === 'object' && !Object.isFrozen(target) && Object.prototype.toString.call(target) === '[object Object]' && isFunction(Ctor) && (Ctor instanceof Ctor || target.type === 'AltStore');
	}

	function eachObject(f, o) {
	  o.forEach(function (from) {
	    Object.keys(Object(from)).forEach(function (key) {
	      f(key, from[key]);
	    });
	  });
	}

	function assign(target) {
	  for (var _len = arguments.length, source = Array(_len > 1 ? _len - 1 : 0), _key = 1; _key < _len; _key++) {
	    source[_key - 1] = arguments[_key];
	  }

	  eachObject(function (key, value) {
	    return target[key] = value;
	  }, source);
	  return target;
	}

/***/ },
/* 7 */
/***/ function(module, exports, __webpack_require__) {

	'use strict';

	Object.defineProperty(exports, '__esModule', {
	  value: true
	});
	var _bind = Function.prototype.bind;

	var _get = function get(_x, _x2, _x3) { var _again = true; _function: while (_again) { var object = _x, property = _x2, receiver = _x3; desc = parent = getter = undefined; _again = false; if (object === null) object = Function.prototype; var desc = Object.getOwnPropertyDescriptor(object, property); if (desc === undefined) { var parent = Object.getPrototypeOf(object); if (parent === null) { return undefined; } else { _x = parent; _x2 = property; _x3 = receiver; _again = true; continue _function; } } else if ('value' in desc) { return desc.value; } else { var getter = desc.get; if (getter === undefined) { return undefined; } return getter.call(receiver); } } };

	exports.createStoreConfig = createStoreConfig;
	exports.transformStore = transformStore;
	exports.createStoreFromObject = createStoreFromObject;
	exports.createStoreFromClass = createStoreFromClass;

	function _interopRequireDefault(obj) { return obj && obj.__esModule ? obj : { 'default': obj }; }

	function _interopRequireWildcard(obj) { if (obj && obj.__esModule) { return obj; } else { var newObj = {}; if (obj != null) { for (var key in obj) { if (Object.prototype.hasOwnProperty.call(obj, key)) newObj[key] = obj[key]; } } newObj['default'] = obj; return newObj; } }

	function _classCallCheck(instance, Constructor) { if (!(instance instanceof Constructor)) { throw new TypeError('Cannot call a class as a function'); } }

	function _inherits(subClass, superClass) { if (typeof superClass !== 'function' && superClass !== null) { throw new TypeError('Super expression must either be null or a function, not ' + typeof superClass); } subClass.prototype = Object.create(superClass && superClass.prototype, { constructor: { value: subClass, enumerable: false, writable: true, configurable: true } }); if (superClass) Object.setPrototypeOf ? Object.setPrototypeOf(subClass, superClass) : subClass.__proto__ = superClass; }

	var _utilsAltUtils = __webpack_require__(8);

	var utils = _interopRequireWildcard(_utilsAltUtils);

	var _functions = __webpack_require__(6);

	var fn = _interopRequireWildcard(_functions);

	var _AltStore = __webpack_require__(9);

	var _AltStore2 = _interopRequireDefault(_AltStore);

	var _StoreMixin = __webpack_require__(11);

	var _StoreMixin2 = _interopRequireDefault(_StoreMixin);

	function doSetState(store, storeInstance, state) {
	  if (!state) {
	    return;
	  }

	  var config = storeInstance.StoreModel.config;

	  var nextState = fn.isFunction(state) ? state(storeInstance.state) : state;

	  storeInstance.state = config.setState.call(store, storeInstance.state, nextState);

	  if (!store.alt.dispatcher.isDispatching()) {
	    store.emitChange();
	  }
	}

	function createPrototype(proto, alt, key, extras) {
	  return fn.assign(proto, _StoreMixin2['default'], {
	    displayName: key,
	    alt: alt,
	    dispatcher: alt.dispatcher,
	    preventDefault: function preventDefault() {
	      this.getInstance().preventDefault = true;
	    },
	    boundListeners: [],
	    lifecycleEvents: {},
	    actionListeners: {},
	    publicMethods: {},
	    handlesOwnErrors: false
	  }, extras);
	}

	function createStoreConfig(globalConfig, StoreModel) {
	  StoreModel.config = fn.assign({
	    getState: function getState(state) {
	      if (Array.isArray(state)) {
	        return state.slice();
	      } else if (fn.isMutableObject(state)) {
	        return fn.assign({}, state);
	      }

	      return state;
	    },
	    setState: function setState(currentState, nextState) {
	      if (fn.isMutableObject(nextState)) {
	        return fn.assign(currentState, nextState);
	      }
	      return nextState;
	    }
	  }, globalConfig, StoreModel.config);
	}

	function transformStore(transforms, StoreModel) {
	  return transforms.reduce(function (Store, transform) {
	    return transform(Store);
	  }, StoreModel);
	}

	function createStoreFromObject(alt, StoreModel, key) {
	  var storeInstance = undefined;

	  var StoreProto = createPrototype({}, alt, key, fn.assign({
	    getInstance: function getInstance() {
	      return storeInstance;
	    },
	    setState: function setState(nextState) {
	      doSetState(this, storeInstance, nextState);
	    }
	  }, StoreModel));

	  // bind the store listeners
	  /* istanbul ignore else */
	  if (StoreProto.bindListeners) {
	    _StoreMixin2['default'].bindListeners.call(StoreProto, StoreProto.bindListeners);
	  }
	  /* istanbul ignore else */
	  if (StoreProto.observe) {
	    _StoreMixin2['default'].bindListeners.call(StoreProto, StoreProto.observe(alt));
	  }

	  // bind the lifecycle events
	  /* istanbul ignore else */
	  if (StoreProto.lifecycle) {
	    fn.eachObject(function (eventName, event) {
	      _StoreMixin2['default'].on.call(StoreProto, eventName, event);
	    }, [StoreProto.lifecycle]);
	  }

	  // create the instance and fn.assign the public methods to the instance
	  storeInstance = fn.assign(new _AltStore2['default'](alt, StoreProto, StoreProto.state !== undefined ? StoreProto.state : {}, StoreModel), StoreProto.publicMethods, {
	    displayName: key,
	    config: StoreModel.config
	  });

	  return storeInstance;
	}

	function createStoreFromClass(alt, StoreModel, key) {
	  var storeInstance = undefined;
	  var config = StoreModel.config;

	  // Creating a class here so we don't overload the provided store's
	  // prototype with the mixin behaviour and I'm extending from StoreModel
	  // so we can inherit any extensions from the provided store.

	  var Store = (function (_StoreModel) {
	    _inherits(Store, _StoreModel);

	    function Store() {
	      _classCallCheck(this, Store);

	      for (var _len2 = arguments.length, args = Array(_len2), _key2 = 0; _key2 < _len2; _key2++) {
	        args[_key2] = arguments[_key2];
	      }

	      _get(Object.getPrototypeOf(Store.prototype), 'constructor', this).apply(this, args);
	    }

	    return Store;
	  })(StoreModel);

	  createPrototype(Store.prototype, alt, key, {
	    type: 'AltStore',
	    getInstance: function getInstance() {
	      return storeInstance;
	    },
	    setState: function setState(nextState) {
	      doSetState(this, storeInstance, nextState);
	    }
	  });

	  for (var _len = arguments.length, argsForClass = Array(_len > 3 ? _len - 3 : 0), _key = 3; _key < _len; _key++) {
	    argsForClass[_key - 3] = arguments[_key];
	  }

	  var store = new (_bind.apply(Store, [null].concat(argsForClass)))();

	  /* istanbul ignore next */
	  if (config.bindListeners) store.bindListeners(config.bindListeners);
	  /* istanbul ignore next */
	  if (config.datasource) store.registerAsync(config.datasource);

	  storeInstance = fn.assign(new _AltStore2['default'](alt, store, store.state !== undefined ? store.state : store, StoreModel), utils.getInternalMethods(StoreModel), config.publicMethods, { displayName: key });

	  return storeInstance;
	}

/***/ },
/* 8 */
/***/ function(module, exports, __webpack_require__) {

	'use strict';

	Object.defineProperty(exports, '__esModule', {
	  value: true
	});

	var _extends = Object.assign || function (target) { for (var i = 1; i < arguments.length; i++) { var source = arguments[i]; for (var key in source) { if (Object.prototype.hasOwnProperty.call(source, key)) { target[key] = source[key]; } } } return target; };

	exports.getInternalMethods = getInternalMethods;
	exports.getPrototypeChain = getPrototypeChain;
	exports.warn = warn;
	exports.uid = uid;
	exports.formatAsConstant = formatAsConstant;
	exports.dispatchIdentity = dispatchIdentity;
	exports.fsa = fsa;
	exports.dispatch = dispatch;

	function _interopRequireWildcard(obj) { if (obj && obj.__esModule) { return obj; } else { var newObj = {}; if (obj != null) { for (var key in obj) { if (Object.prototype.hasOwnProperty.call(obj, key)) newObj[key] = obj[key]; } } newObj['default'] = obj; return newObj; } }

	var _functions = __webpack_require__(6);

	var fn = _interopRequireWildcard(_functions);

	/*eslint-disable*/
	var builtIns = Object.getOwnPropertyNames(NoopClass);
	var builtInProto = Object.getOwnPropertyNames(NoopClass.prototype);
	/*eslint-enable*/

	function getInternalMethods(Obj, isProto) {
	  var excluded = isProto ? builtInProto : builtIns;
	  var obj = isProto ? Obj.prototype : Obj;
	  return Object.getOwnPropertyNames(obj).reduce(function (value, m) {
	    if (excluded.indexOf(m) !== -1) {
	      return value;
	    }

	    value[m] = obj[m];
	    return value;
	  }, {});
	}

	function getPrototypeChain(_x2) {
	  var _arguments = arguments;
	  var _again = true;

	  _function: while (_again) {
	    var Obj = _x2;
	    methods = undefined;
	    _again = false;
	    var methods = _arguments.length <= 1 || _arguments[1] === undefined ? {} : _arguments[1];
	    if (Obj === Function.prototype) {
	      return methods;
	    } else {
	      _arguments = [_x2 = Object.getPrototypeOf(Obj), fn.assign(methods, getInternalMethods(Obj, true))];
	      _again = true;
	      continue _function;
	    }
	  }
	}

	function warn(msg) {
	  /* istanbul ignore else */
	  /*eslint-disable*/
	  if (typeof console !== 'undefined') {
	    console.warn(new ReferenceError(msg));
	  }
	  /*eslint-enable*/
	}

	function uid(container, name) {
	  var count = 0;
	  var key = name;
	  while (Object.hasOwnProperty.call(container, key)) {
	    key = name + String(++count);
	  }
	  return key;
	}

	function formatAsConstant(name) {
	  return name.replace(/[a-z]([A-Z])/g, function (i) {
	    return i[0] + '_' + i[1].toLowerCase();
	  }).toUpperCase();
	}

	function dispatchIdentity(x) {
	  if (x === undefined) return null;

	  for (var _len = arguments.length, a = Array(_len > 1 ? _len - 1 : 0), _key = 1; _key < _len; _key++) {
	    a[_key - 1] = arguments[_key];
	  }

	  return a.length ? [x].concat(a) : x;
	}

	function fsa(id, type, payload, details) {
	  return {
	    type: type,
	    payload: payload,
	    meta: _extends({
	      dispatchId: id
	    }, details),

	    id: id,
	    action: type,
	    data: payload,
	    details: details
	  };
	}

	function dispatch(id, actionObj, payload, alt) {
	  var data = actionObj.dispatch(payload);
	  if (data === undefined) return null;

	  var type = actionObj.id;
	  var namespace = type;
	  var name = type;
	  var details = { id: type, namespace: namespace, name: name };

	  var dispatchLater = function dispatchLater(x) {
	    return alt.dispatch(type, x, details);
	  };

	  if (fn.isFunction(data)) return data(dispatchLater, alt);

	  // XXX standardize this
	  return alt.dispatcher.dispatch(fsa(id, type, data, details));
	}

	/* istanbul ignore next */
	function NoopClass() {}

/***/ },
/* 9 */
/***/ function(module, exports, __webpack_require__) {

	'use strict';

	Object.defineProperty(exports, '__esModule', {
	  value: true
	});

	var _createClass = (function () { function defineProperties(target, props) { for (var i = 0; i < props.length; i++) { var descriptor = props[i]; descriptor.enumerable = descriptor.enumerable || false; descriptor.configurable = true; if ('value' in descriptor) descriptor.writable = true; Object.defineProperty(target, descriptor.key, descriptor); } } return function (Constructor, protoProps, staticProps) { if (protoProps) defineProperties(Constructor.prototype, protoProps); if (staticProps) defineProperties(Constructor, staticProps); return Constructor; }; })();

	function _interopRequireDefault(obj) { return obj && obj.__esModule ? obj : { 'default': obj }; }

	function _interopRequireWildcard(obj) { if (obj && obj.__esModule) { return obj; } else { var newObj = {}; if (obj != null) { for (var key in obj) { if (Object.prototype.hasOwnProperty.call(obj, key)) newObj[key] = obj[key]; } } newObj['default'] = obj; return newObj; } }

	function _classCallCheck(instance, Constructor) { if (!(instance instanceof Constructor)) { throw new TypeError('Cannot call a class as a function'); } }

	var _functions = __webpack_require__(6);

	var fn = _interopRequireWildcard(_functions);

	var _transmitter = __webpack_require__(10);

	var _transmitter2 = _interopRequireDefault(_transmitter);

	var AltStore = (function () {
	  function AltStore(alt, model, state, StoreModel) {
	    var _this = this;

	    _classCallCheck(this, AltStore);

	    var lifecycleEvents = model.lifecycleEvents;
	    this.transmitter = (0, _transmitter2['default'])();
	    this.lifecycle = function (event, x) {
	      if (lifecycleEvents[event]) lifecycleEvents[event].push(x);
	    };
	    this.state = state;

	    this.alt = alt;
	    this.preventDefault = false;
	    this.displayName = model.displayName;
	    this.boundListeners = model.boundListeners;
	    this.StoreModel = StoreModel;
	    this.reduce = model.reduce || function (x) {
	      return x;
	    };

	    var output = model.output || function (x) {
	      return x;
	    };

	    this.emitChange = function () {
	      return _this.transmitter.push(output(_this.state));
	    };

	    var handleDispatch = function handleDispatch(f, payload) {
	      try {
	        return f();
	      } catch (e) {
	        if (model.handlesOwnErrors) {
	          _this.lifecycle('error', {
	            error: e,
	            payload: payload,
	            state: _this.state
	          });
	          return false;
	        }

	        throw e;
	      }
	    };

	    fn.assign(this, model.publicMethods);

	    // Register dispatcher
	    this.dispatchToken = alt.dispatcher.register(function (payload) {
	      _this.preventDefault = false;

	      _this.lifecycle('beforeEach', {
	        payload: payload,
	        state: _this.state
	      });

	      var actionHandlers = model.actionListeners[payload.action];

	      if (actionHandlers || model.otherwise) {
	        var result = undefined;

	        if (actionHandlers) {
	          result = handleDispatch(function () {
	            return actionHandlers.filter(Boolean).every(function (handler) {
	              return handler.call(model, payload.data, payload.action) !== false;
	            });
	          }, payload);
	        } else {
	          result = handleDispatch(function () {
	            return model.otherwise(payload.data, payload.action);
	          }, payload);
	        }

	        if (result !== false && !_this.preventDefault) _this.emitChange();
	      }

	      if (model.reduce) {
	        handleDispatch(function () {
	          var value = model.reduce(_this.state, payload);
	          if (value !== undefined) _this.state = value;
	        }, payload);
	        if (!_this.preventDefault) _this.emitChange();
	      }

	      _this.lifecycle('afterEach', {
	        payload: payload,
	        state: _this.state
	      });
	    });

	    this.lifecycle('init');
	  }

	  _createClass(AltStore, [{
	    key: 'listen',
	    value: function listen(cb) {
	      var _this2 = this;

	      if (!fn.isFunction(cb)) throw new TypeError('listen expects a function');
	      this.transmitter.subscribe(cb);
	      return function () {
	        return _this2.unlisten(cb);
	      };
	    }
	  }, {
	    key: 'unlisten',
	    value: function unlisten(cb) {
	      this.lifecycle('unlisten');
	      this.transmitter.unsubscribe(cb);
	    }
	  }, {
	    key: 'getState',
	    value: function getState() {
	      return this.StoreModel.config.getState.call(this, this.state);
	    }
	  }]);

	  return AltStore;
	})();

	exports['default'] = AltStore;
	module.exports = exports['default'];

/***/ },
/* 10 */
/***/ function(module, exports) {

	'use strict';

	function transmitter() {
	  var subscriptions = [];
	  var pushing = false;
	  var toUnsubscribe = [];

	  var unsubscribe = function unsubscribe(onChange) {
	    if (pushing) {
	      toUnsubscribe.push(onChange);
	      return;
	    }
	    var id = subscriptions.indexOf(onChange);
	    if (id >= 0) subscriptions.splice(id, 1);
	  };

	  var subscribe = function subscribe(onChange) {
	    subscriptions.push(onChange);
	    var dispose = function dispose() {
	      return unsubscribe(onChange);
	    };
	    return { dispose: dispose };
	  };

	  var push = function push(value) {
	    if (pushing) throw new Error('Cannot push while pushing');
	    pushing = true;
	    try {
	      subscriptions.forEach(function (subscription) {
	        return subscription(value);
	      });
	    } finally {
	      pushing = false;
	      toUnsubscribe = toUnsubscribe.filter(unsubscribe);
	    }
	  };

	  return { subscribe: subscribe, push: push, unsubscribe: unsubscribe, subscriptions: subscriptions };
	}

	module.exports = transmitter;



/***/ },
/* 11 */
/***/ function(module, exports, __webpack_require__) {

	'use strict';

	Object.defineProperty(exports, '__esModule', {
	  value: true
	});

	function _interopRequireWildcard(obj) { if (obj && obj.__esModule) { return obj; } else { var newObj = {}; if (obj != null) { for (var key in obj) { if (Object.prototype.hasOwnProperty.call(obj, key)) newObj[key] = obj[key]; } } newObj['default'] = obj; return newObj; } }

	function _interopRequireDefault(obj) { return obj && obj.__esModule ? obj : { 'default': obj }; }

	var _transmitter = __webpack_require__(10);

	var _transmitter2 = _interopRequireDefault(_transmitter);

	var _functions = __webpack_require__(6);

	var fn = _interopRequireWildcard(_functions);

	var StoreMixin = {
	  waitFor: function waitFor() {
	    for (var _len = arguments.length, sources = Array(_len), _key = 0; _key < _len; _key++) {
	      sources[_key] = arguments[_key];
	    }

	    if (!sources.length) {
	      throw new ReferenceError('Dispatch tokens not provided');
	    }

	    var sourcesArray = sources;
	    if (sources.length === 1) {
	      sourcesArray = Array.isArray(sources[0]) ? sources[0] : sources;
	    }

	    var tokens = sourcesArray.map(function (source) {
	      return source.dispatchToken || source;
	    });

	    this.dispatcher.waitFor(tokens);
	  },

	  exportAsync: function exportAsync(asyncMethods) {
	    this.registerAsync(asyncMethods);
	  },

	  registerAsync: function registerAsync(asyncDef) {
	    var _this = this;

	    var loadCounter = 0;

	    var asyncMethods = fn.isFunction(asyncDef) ? asyncDef(this.alt) : asyncDef;

	    var toExport = Object.keys(asyncMethods).reduce(function (publicMethods, methodName) {
	      var desc = asyncMethods[methodName];
	      var spec = fn.isFunction(desc) ? desc(_this) : desc;

	      var validHandlers = ['success', 'error', 'loading'];
	      validHandlers.forEach(function (handler) {
	        if (spec[handler] && !spec[handler].id) {
	          throw new Error(handler + ' handler must be an action function');
	        }
	      });

	      publicMethods[methodName] = function () {
	        for (var _len2 = arguments.length, args = Array(_len2), _key2 = 0; _key2 < _len2; _key2++) {
	          args[_key2] = arguments[_key2];
	        }

	        var state = _this.getInstance().getState();
	        var value = spec.local && spec.local.apply(spec, [state].concat(args));
	        var shouldFetch = spec.shouldFetch ? spec.shouldFetch.apply(spec, [state].concat(args))
	        /*eslint-disable*/
	        : value == null;
	        /*eslint-enable*/
	        var intercept = spec.interceptResponse || function (x) {
	          return x;
	        };

	        var makeActionHandler = function makeActionHandler(action, isError) {
	          return function (x) {
	            var fire = function fire() {
	              loadCounter -= 1;
	              action(intercept(x, action, args));
	              if (isError) throw x;
	            };
	            return _this.alt.trapAsync ? function () {
	              return fire();
	            } : fire();
	          };
	        };

	        // if we don't have it in cache then fetch it
	        if (shouldFetch) {
	          loadCounter += 1;
	          /* istanbul ignore else */
	          if (spec.loading) spec.loading(intercept(null, spec.loading, args));
	          return spec.remote.apply(spec, [state].concat(args)).then(makeActionHandler(spec.success), makeActionHandler(spec.error, 1));
	        }

	        // otherwise emit the change now
	        _this.emitChange();
	        return value;
	      };

	      return publicMethods;
	    }, {});

	    this.exportPublicMethods(toExport);
	    this.exportPublicMethods({
	      isLoading: function isLoading() {
	        return loadCounter > 0;
	      }
	    });
	  },

	  exportPublicMethods: function exportPublicMethods(methods) {
	    var _this2 = this;

	    fn.eachObject(function (methodName, value) {
	      if (!fn.isFunction(value)) {
	        throw new TypeError('exportPublicMethods expects a function');
	      }

	      _this2.publicMethods[methodName] = value;
	    }, [methods]);
	  },

	  emitChange: function emitChange() {
	    this.getInstance().emitChange();
	  },

	  on: function on(lifecycleEvent, handler) {
	    if (lifecycleEvent === 'error') this.handlesOwnErrors = true;
	    var bus = this.lifecycleEvents[lifecycleEvent] || (0, _transmitter2['default'])();
	    this.lifecycleEvents[lifecycleEvent] = bus;
	    return bus.subscribe(handler.bind(this));
	  },

	  bindAction: function bindAction(symbol, handler) {
	    if (!symbol) {
	      throw new ReferenceError('Invalid action reference passed in');
	    }
	    if (!fn.isFunction(handler)) {
	      throw new TypeError('bindAction expects a function');
	    }

	    // You can pass in the constant or the function itself
	    var key = symbol.id ? symbol.id : symbol;
	    this.actionListeners[key] = this.actionListeners[key] || [];
	    this.actionListeners[key].push(handler.bind(this));
	    this.boundListeners.push(key);
	  },

	  bindActions: function bindActions(actions) {
	    var _this3 = this;

	    fn.eachObject(function (action, symbol) {
	      var matchFirstCharacter = /./;
	      var assumedEventHandler = action.replace(matchFirstCharacter, function (x) {
	        return 'on' + x[0].toUpperCase();
	      });

	      if (_this3[action] && _this3[assumedEventHandler]) {
	        // If you have both action and onAction
	        throw new ReferenceError('You have multiple action handlers bound to an action: ' + (action + ' and ' + assumedEventHandler));
	      }

	      var handler = _this3[action] || _this3[assumedEventHandler];
	      if (handler) {
	        _this3.bindAction(symbol, handler);
	      }
	    }, [actions]);
	  },

	  bindListeners: function bindListeners(obj) {
	    var _this4 = this;

	    fn.eachObject(function (methodName, symbol) {
	      var listener = _this4[methodName];

	      if (!listener) {
	        throw new ReferenceError(methodName + ' defined but does not exist in ' + _this4.displayName);
	      }

	      if (Array.isArray(symbol)) {
	        symbol.forEach(function (action) {
	          _this4.bindAction(action, listener);
	        });
	      } else {
	        _this4.bindAction(symbol, listener);
	      }
	    }, [obj]);
	  }
	};

	exports['default'] = StoreMixin;
	module.exports = exports['default'];

/***/ },
/* 12 */
/***/ function(module, exports, __webpack_require__) {

	'use strict';

	Object.defineProperty(exports, '__esModule', {
	  value: true
	});
	exports['default'] = makeAction;

	function _interopRequireDefault(obj) { return obj && obj.__esModule ? obj : { 'default': obj }; }

	function _interopRequireWildcard(obj) { if (obj && obj.__esModule) { return obj; } else { var newObj = {}; if (obj != null) { for (var key in obj) { if (Object.prototype.hasOwnProperty.call(obj, key)) newObj[key] = obj[key]; } } newObj['default'] = obj; return newObj; } }

	var _functions = __webpack_require__(6);

	var fn = _interopRequireWildcard(_functions);

	var _utilsAltUtils = __webpack_require__(8);

	var utils = _interopRequireWildcard(_utilsAltUtils);

	var _isPromise = __webpack_require__(13);

	var _isPromise2 = _interopRequireDefault(_isPromise);

	function makeAction(alt, namespace, name, implementation, obj) {
	  var id = utils.uid(alt._actionsRegistry, namespace + '.' + name);
	  alt._actionsRegistry[id] = 1;

	  var data = { id: id, namespace: namespace, name: name };

	  var dispatch = function dispatch(payload) {
	    return alt.dispatch(id, payload, data);
	  };

	  // the action itself
	  var action = function action() {
	    for (var _len = arguments.length, args = Array(_len), _key = 0; _key < _len; _key++) {
	      args[_key] = arguments[_key];
	    }

	    var result = implementation.apply(obj, args);

	    // async functions that return promises should not be dispatched
	    if (result !== undefined && !(0, _isPromise2['default'])(result)) {
	      if (fn.isFunction(result)) {
	        result(dispatch, alt);
	      } else {
	        dispatch(result);
	      }
	    }

	    if (result === undefined) {
	      utils.warn('An action was called but nothing was dispatched');
	    }

	    return result;
	  };
	  action.defer = function () {
	    for (var _len2 = arguments.length, args = Array(_len2), _key2 = 0; _key2 < _len2; _key2++) {
	      args[_key2] = arguments[_key2];
	    }

	    return setTimeout(function () {
	      return action.apply(null, args);
	    });
	  };
	  action.id = id;
	  action.data = data;

	  // ensure each reference is unique in the namespace
	  var container = alt.actions[namespace];
	  var namespaceId = utils.uid(container, name);
	  container[namespaceId] = action;

	  // generate a constant
	  var constant = utils.formatAsConstant(namespaceId);
	  container[constant] = id;

	  return action;
	}

	module.exports = exports['default'];

/***/ },
/* 13 */
/***/ function(module, exports) {

	module.exports = isPromise;

	function isPromise(obj) {
	  return !!obj && (typeof obj === 'object' || typeof obj === 'function') && typeof obj.then === 'function';
	}


/***/ }
/******/ ])
});
;
(function() {
  window.alt = new Alt();

}).call(this);
(function() {
  var ChiPhiActions;

  ChiPhiActions = (function() {
    function ChiPhiActions() {
      this.generateActions('reloadData', 'initData', 'submitChiPhi');
    }

    return ChiPhiActions;

  })();

  window.ChiPhiActions = alt.createActions(ChiPhiActions);

}).call(this);
(function() {
  var NhapActions;

  NhapActions = (function() {
    function NhapActions() {
      this.generateActions('reloadData', 'initData', 'submitNhap');
    }

    return NhapActions;

  })();

  window.NhapActions = alt.createActions(NhapActions);

}).call(this);
(function() {
  var ChiPhiStore;

  ChiPhiStore = (function() {
    ChiPhiStore.displayName = 'ChiPhiStore';

    function ChiPhiStore() {
      this.bindActions(ChiPhiActions);
      this.chi_phis = [];
      this.options_tenhang = [];
      this.options_donvitinh = [];
      this.exportPublicMethods({
        getChiPhis: this.getChiPhis
      });
    }

    ChiPhiStore.prototype.onInitData = function(props) {
      this.chi_phis = props.chi_phis;
      this.options_tenhang = props.options_tenhang;
      return this.options_donvitinh = props.options_donvitinh;
    };

    ChiPhiStore.prototype.onReloadData = function() {
      return $.ajax({
        type: 'GET',
        url: '/chi_phis',
        dataType: 'json',
        success: (function(_this) {
          return function(response) {
            _this.chi_phis = response.chi_phis;
            _this.options_tenhang = response.options_tenhang;
            _this.options_donvitinh = response.options_donvitinh;
            return _this.emitChange();
          };
        })(this),
        error: (function(_this) {
          return function(response) {
            console.log('error');
            return console.log('response');
          };
        })(this)
      });
    };

    ChiPhiStore.prototype.onSubmitChiPhi = function(data) {
      $.ajax({
        type: 'POST',
        url: '/chi_phis',
        dataType: 'json',
        data: data,
        success: (function(_this) {
          return function(response) {
            _this.chi_phis.push(response);
            return _this.emitChange();
          };
        })(this),
        error: (function(_this) {
          return function(response) {
            console.log('error');
            return console.log(response);
          };
        })(this)
      });
      return false;
    };

    ChiPhiStore.prototype.getChiPhis = function() {
      return this.getState().chi_phis;
    };

    return ChiPhiStore;

  })();

  window.ChiPhiStore = alt.createStore(ChiPhiStore);

}).call(this);
(function() {
  var NhapStore;

  NhapStore = (function() {
    NhapStore.displayName = 'NhapStore';

    function NhapStore() {
      this.bindActions(NhapActions);
      this.nhaps = [];
      this.options = [];
      this.exportPublicMethods({
        getNhaps: this.getNhaps,
        getOptions: this.getOptions
      });
    }

    NhapStore.prototype.onInitData = function(props) {
      this.nhaps = props.nhaps;
      return $.ajax({
        type: 'GET',
        url: '/options?type=nhap',
        dataType: 'json',
        success: (function(_this) {
          return function(response) {
            _this.options = response.options;
            return _this.emitChange();
          };
        })(this),
        error: (function(_this) {
          return function(response) {
            console.log('error');
            return console.log('response');
          };
        })(this)
      });
    };

    NhapStore.prototype.onReloadData = function() {
      $.ajax({
        type: 'GET',
        url: '/nhaps',
        dataType: 'json',
        success: (function(_this) {
          return function(response) {
            _this.nhaps = response.nhaps;
            return _this.emitChange();
          };
        })(this),
        error: (function(_this) {
          return function(response) {
            console.log('error');
            return console.log('response');
          };
        })(this)
      });
      return $.ajax({
        type: 'GET',
        url: '/options?type=nhap',
        dataType: 'json',
        success: (function(_this) {
          return function(response) {
            _this.options = response.options;
            return _this.emitChange();
          };
        })(this),
        error: (function(_this) {
          return function(response) {
            console.log('error');
            return console.log('response');
          };
        })(this)
      });
    };

    NhapStore.prototype.onSubmitNhap = function(data) {
      $.ajax({
        type: 'POST',
        url: '/nhaps',
        dataType: 'json',
        data: data,
        error: (function(_this) {
          return function(response) {
            console.log('error');
            return console.log(response);
          };
        })(this)
      });
      return false;
    };

    NhapStore.prototype.getNhaps = function() {
      return this.getState().nhaps;
    };

    NhapStore.prototype.getOptions = function() {
      return this.getState().options;
    };

    return NhapStore;

  })();

  window.NhapStore = alt.createStore(NhapStore);

}).call(this);
(function() {
  var ChiPhiForm, ChiPhiList, a, button, div, form, h1, i, input, label, li, ref, span, table, tbody, td, th, thead, tr, ul;

  ref = React.DOM, div = ref.div, i = ref.i, form = ref.form, button = ref.button, h1 = ref.h1, ul = ref.ul, li = ref.li, a = ref.a, span = ref.span, label = ref.label, input = ref.input, table = ref.table, thead = ref.thead, tbody = ref.tbody, tr = ref.tr, th = ref.th, td = ref.td;

  ChiPhiForm = React.createFactory(React.createClass({
    getInitialState: function() {
      return {
        tenhang: '',
        donvitinh: '',
        soluong: '',
        dongia: ''
      };
    },
    componentDidMount: function() {
      this.setTypeAheadTenhang();
      return this.setTypeAheadDonViTinh();
    },
    setTypeAheadTenhang: function() {
      return $.typeahead({
        input: "#tenhang",
        minLength: 0,
        maxItem: 15,
        order: "asc",
        hint: true,
        accent: true,
        searchOnFocus: true,
        backdrop: {
          "background-color": "#3879d9",
          "opacity": "0.1",
          "filter": "alpha(opacity=10)"
        },
        source: {
          data: this.props.options_tenhang
        },
        debug: true,
        callback: {
          onInit: function(node) {
            return console.log('Typeahead Initiated on ' + node.selector);
          },
          onClick: (function(_this) {
            return function(node, a, item, event) {
              console.log(item);
              return _this.setState({
                tenhang: item.display
              });
            };
          })(this)
        }
      });
    },
    setTypeAheadDonViTinh: function() {
      return $.typeahead({
        input: "#donvitinh",
        minLength: 0,
        maxItem: 15,
        order: "asc",
        hint: true,
        accent: true,
        searchOnFocus: true,
        backdrop: {
          "background-color": "#3879d9",
          "opacity": "0.1",
          "filter": "alpha(opacity=10)"
        },
        source: {
          data: this.props.options_donvitinh
        },
        callback: {
          onInit: function(node) {
            return console.log('Typeahead Initiated on ' + node.selector);
          },
          onClick: (function(_this) {
            return function(node, a, item, event) {
              console.log(item);
              return _this.setState({
                donvitinh: item.display
              });
            };
          })(this)
        }
      });
    },
    resetState: function() {
      return this.setState({
        tenhang: '',
        donvitinh: '',
        dongia: '',
        soluong: ''
      });
    },
    onChangeTenHang: function(e) {
      return this.setState({
        tenhang: e.target.value
      });
    },
    onChangeDonViTinh: function(e) {
      return this.setState({
        donvitinh: e.target.value
      });
    },
    onChangeSoLuong: function(e) {
      return this.setState({
        soluong: e.target.value
      });
    },
    onChangeDonGia: function(e) {
      return this.setState({
        dongia: e.target.value
      });
    },
    onSubmit: function(e) {
      var data;
      e.preventDefault();
      data = {
        chi_phi: {
          tenhang: this.refs.tenhang.value,
          donvitinh: this.refs.donvitinh.value,
          soluong: this.refs.soluong.value,
          dongia: this.refs.dongia.value,
          create_at: new Date()
        }
      };
      ChiPhiActions.submitChiPhi(data);
      return this.resetState();
    },
    render: function() {
      return div({
        className: 'row'
      }, div({
        className: 'column'
      }, div({
        className: 'typeahead-container'
      }, div({
        className: 'typeahead-field'
      }, span({
        className: 'typeahead-query'
      }, input({
        id: 'tenhang',
        type: 'text',
        ref: 'tenhang',
        onChange: this.onChangeTenHang,
        placeholder: 'Enter TH',
        value: this.state.tenhang,
        type: 'search',
        name: 'tenhang',
        autoComplete: 'off'
      }))))), div({
        className: 'column'
      }, div({
        className: 'typeahead-container'
      }, div({
        className: 'typeahead-field'
      }, span({
        className: 'typeahead-query'
      }, input({
        id: 'donvitinh',
        type: 'text',
        ref: 'donvitinh',
        onChange: this.onChangeDonViTinh,
        placeholder: 'Enter DVT',
        value: this.state.donvitinh,
        type: 'search',
        name: 'donvitinh',
        autoComplete: 'off'
      }))))), div({
        className: 'column'
      }, input({
        type: 'text',
        ref: 'soluong',
        onChange: this.onChangeSoLuong,
        placeholder: 'Enter SL',
        value: this.state.soluong
      })), div({
        className: 'column'
      }, input({
        type: 'text',
        ref: 'dongia',
        onChange: this.onChangeDonGia,
        placeholder: 'Enter DG',
        value: this.state.dongia
      })), button({
        className: 'button',
        onClick: this.onSubmit
      }, 'Add'));
    }
  }));

  ChiPhiList = React.createFactory(React.createClass({
    render: function() {
      return table({}, thead({}, tr({}, th({}, 'STT'), th({}, 'KMC'), th({}, 'DVT'), th({}, 'SL'), th({}, 'DG'))), tbody({}, _.map(this.props.chi_phis, (function(_this) {
        return function(chi_phi) {
          return tr({
            key: chi_phi.id
          }, td({}, chi_phi.id), td({}, chi_phi.tenhang), td({}, chi_phi.donvitinh), td({}, chi_phi.soluong), td({}, chi_phi.dongia));
        };
      })(this))));
    }
  }));

  window.ChiPhiIndex = React.createClass({
    getInitialState: function() {
      return {
        chi_phis: [],
        options_tenhang: [],
        options_donvitinh: []
      };
    },
    componentWillMount: function() {
      ChiPhiStore.listen(this.onChange);
      return ChiPhiActions.initData(this.props);
    },
    componentWillUnmount: function() {
      return ChiPhiStore.unlisten(this.onChange);
    },
    onChange: function(state) {
      return this.setState(state);
    },
    render: function() {
      return div({
        className: 'container'
      }, div({
        className: 'row'
      }, div({
        className: 'column'
      }, h1({}, 'Chi Phi'))), ChiPhiForm({
        options_tenhang: this.state.options_tenhang,
        options_donvitinh: this.state.options_donvitinh
      }), div({
        className: 'row'
      }, ChiPhiList({
        chi_phis: this.state.chi_phis
      })));
    }
  });

}).call(this);
(function() {
  var NhapForm, NhapList, Typeahead, a, button, div, form, h1, input, label, li, ref, span, table, tbody, td, th, thead, tr, ul;

  ref = React.DOM, div = ref.div, form = ref.form, button = ref.button, h1 = ref.h1, ul = ref.ul, li = ref.li, a = ref.a, span = ref.span, label = ref.label, input = ref.input, table = ref.table, thead = ref.thead, tbody = ref.tbody, tr = ref.tr, th = ref.th, td = ref.td;

  Typeahead = React.createFactory(React.Typeahead);

  NhapForm = React.createFactory(React.createClass({
    getInitialState: function() {
      return {
        loai_mat_hang: '',
        so_luong: 0,
        don_gia: 0
      };
    },
    resetState: function() {
      return this.setState({
        loai_mat_hang: '',
        so_luong: '',
        don_gia: ''
      });
    },
    onChangeSoLuong: function(e) {
      return this.setState({
        so_luong: e.target.value
      });
    },
    onChangeDonGia: function(e) {
      return this.setState({
        don_gia: e.target.value
      });
    },
    onSubmit: function() {
      var data;
      data = {
        nhap: {
          loai_mat_hang: this.refs.loai_mat_hang.state.entryValue,
          so_luong: this.refs.so_luong.value,
          don_gia: this.refs.don_gia.value
        }
      };
      NhapActions.submitNhap(data);
      return this.resetState();
    },
    render: function() {
      return div({
        className: 'row'
      }, div({
        className: 'column'
      }, Typeahead({
        options: this.props.options,
        maxVisible: 2,
        ref: 'loai_mat_hang',
        placeholder: 'LMH'
      })), div({
        className: 'column'
      }, input({
        type: 'text',
        ref: 'so_luong',
        onChange: this.onChangeSoLuong,
        placeholder: 'Enter SL',
        value: this.state.so_luong
      })), div({
        className: 'column'
      }, input({
        type: 'text',
        ref: 'don_gia',
        onChange: this.onChangeDonGia,
        placeholder: 'Enter DG',
        value: this.state.don_gia
      })), button({
        className: 'button',
        onClick: this.onSubmit
      }, 'Add'));
    }
  }));

  NhapList = React.createFactory(React.createClass({
    render: function() {
      return table({}, thead({}, tr({}, th({}, 'STT'), th({}, 'LMH'), th({}, 'SL'), th({}, 'DG'), th({}, 'TT'))), tbody({}, _.map(this.props.nhaps, (function(_this) {
        return function(nhap) {
          return tr({
            key: nhap.id
          }, td({}, nhap.id), td({}, nhap.loai_mat_hang), td({}, nhap.so_luong), td({}, nhap.don_gia), td({}, nhap.thanh_tien));
        };
      })(this))));
    }
  }));

  window.NhapIndex = React.createClass({
    getInitialState: function() {
      return {
        nhaps: [],
        options: []
      };
    },
    componentWillMount: function() {
      var channel, pusher;
      NhapStore.listen(this.onChange);
      NhapActions.initData(this.props);
      pusher = new Pusher('6c57eb75f33d0b498bed', {
        encrypted: true
      });
      channel = pusher.subscribe('nhap_channel');
      return channel.bind('nhap_updated', function(data) {
        return NhapActions.reloadData();
      });
    },
    componentWillUnmount: function() {
      return NhapStore.unlisten(this.onChange);
    },
    onChange: function(state) {
      return this.setState(state);
    },
    render: function() {
      return div({
        className: 'container'
      }, div({
        className: 'row'
      }, div({
        className: 'column'
      }, h1({}, 'Nhap'))), NhapForm({
        options: this.state.options
      }), div({
        className: 'row'
      }, NhapList({
        nhaps: this.state.nhaps
      })));
    }
  });

}).call(this);






