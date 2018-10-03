/* v0.11.5 */ ! function(u, e) {
  "object" == typeof exports && "undefined" != typeof module ? module.exports = e() : "function" == typeof define && define.amd ? define(e) : u.filestack = e()
}(this, function() {
  "use strict";
  var i = {
      storeApiUrl: "https://www.filestackapi.com/api/store",
      fileApiUrl: "https://www.filestackapi.com/api/file",
      uploadApiUrl: "https://upload.filestackapi.com",
      cloudApiUrl: "https://cloud.filestackapi.com",
      processApiUrl: "https://process.filestackapi.com",
      previewApiUrl: "https://cdn.filestackcontent.com"
    },
    o = function(u) {
      return "function" == typeof u
    },
    a = function(u) {
      return null == u
    },
    s = function(u) {
      return u.displayName || u.name || "<function" + u.length + ">"
    };

  function u(u, e) {
    return "function" == typeof e ? s(e) : e
  }

  function t(u, e) {
    !0 !== u && (o(e) ? e = e() : a(e) && (e = 'Assert failed (turn on "Pause on exceptions" in your Source panel)'), t.fail(e))
  }
  t.fail = function(u) {
    throw new TypeError("[tcomb] " + u)
  }, t.stringify = function(e) {
    try {
      return JSON.stringify(e, u, 2)
    } catch (u) {
      return String(e)
    }
  };
  var f = t,
    r = function(u) {
      return "string" == typeof u
    },
    n = function(u) {
      return Array.isArray ? Array.isArray(u) : u instanceof Array
    },
    l = function(u) {
      return !a(u) && "object" == typeof u && !n(u)
    },
    c = function(u) {
      return o(u) && l(u.meta)
    },
    A = function(u) {
      return c(u) ? u.displayName : s(u)
    },
    e = function(u, e) {
      function t(u, e) {
        return u
      }
      return t.meta = {
        kind: "irreducible",
        name: u,
        predicate: e,
        identity: !0
      }, t.displayName = u, t.is = e, t
    },
    p = e("Any", function() {
      return !0
    }),
    E = e("Array", n),
    d = e("Boolean", function(u) {
      return !0 === u || !1 === u
    }),
    h = e("Date", function(u) {
      return u instanceof Date
    }),
    C = e("Error", function(u) {
      return u instanceof Error
    }),
    y = e("Function", o),
    F = e("Nil", a),
    m = e("Number", function(u) {
      return "number" == typeof u && isFinite(u) && !isNaN(u)
    }),
    B = function(u) {
      return !c(u) || u.meta.identity
    },
    v = function(u, e, t) {
      return c(u) ? u.meta.identity || "object" != typeof e || null === e ? u(e, t) : new u(e, t) : e
    },
    D = function(u, e) {
      return c(e) ? e.is(u) : u instanceof e
    };

  function g(u, e) {
    return "{" + A(u) + " | " + s(e) + "}"
  }

  function b(t, e, u) {
    var r = u || g(t, e),
      n = B(t);

    function i(u, e) {
      return v(t, u, e)
    }
    return i.meta = {
      kind: "subtype",
      type: t,
      predicate: e,
      name: u,
      identity: n
    }, i.displayName = r, i.is = function(u) {
      return D(u, t) && e(u)
    }, i.update = function(u, e) {
      return i(f.update(u, e))
    }, i
  }
  b.getDefaultName = g;
  var w = b,
    k = w(m, function(u) {
      return u % 1 == 0
    }, "Integer"),
    x = e("Object", l),
    _ = e("RegExp", function(u) {
      return u instanceof RegExp
    }),
    S = e("String", r),
    T = e("Type", c);

  function P(u, e) {
    return "{[key: " + A(u) + "]: " + A(e) + "}"
  }

  function O(a, s, u) {
    var e = u || P(a, s),
      c = (A(a), A(s), B(a) && B(s));

    function t(u, e) {
      if (c) return u;
      var t = !0,
        r = {};
      for (var n in u)
        if (u.hasOwnProperty(n)) {
          var i = u[n = v(a, n, null)],
            o = v(s, i, null);
          t = t && i === o, r[n] = o
        }
      return t && (r = u), r
    }
    return t.meta = {
      kind: "dict",
      domain: a,
      codomain: s,
      name: u,
      identity: c
    }, t.displayName = e, t.is = function(u) {
      if (!l(u)) return !1;
      for (var e in u)
        if (u.hasOwnProperty(e) && (!D(e, a) || !D(u[e], s))) return !1;
      return !0
    }, t.update = function(u, e) {
      return t(f.update(u, e))
    }, t
  }
  O.getDefaultName = P;
  var j = O,
    z = function(u, e, t) {
      if (a(e)) return u;
      for (var r in e) e.hasOwnProperty(r) && (u[r] = e[r]);
      return u
    },
    N = function(u) {
      return c(u) && "union" === u.meta.kind
    },
    q = 1;

  function I(u) {
    return Object.keys(u).map(function(u) {
      return f.stringify(u)
    }).join(" | ")
  }

  function R(e, u) {
    var t = u || I(e);

    function r(u, e) {
      return u
    }
    return r.meta = {
      kind: "enums",
      map: e,
      name: u,
      identity: !0
    }, r.displayName = t, r.is = function(u) {
      return e.hasOwnProperty(u)
    }, r
  }
  R.of = function(u, e) {
    u = r(u) ? u.split(" ") : u;
    var t = {};
    return u.forEach(function(u) {
      t[u] = u
    }), R(t, e)
  }, R.getDefaultName = I;
  var U = R;

  function M(u) {
    return "Array<" + A(u) + ">"
  }

  function L(s, u) {
    var e = u || M(s),
      c = (A(s), B(s));

    function t(u, e) {
      if (c) return u;
      for (var t = !0, r = [], n = 0, i = u.length; n < i; n++) {
        var o = u[n],
          a = v(s, o, null);
        t = t && o === a, r.push(a)
      }
      return t && (r = u), r
    }
    return t.meta = {
      kind: "list",
      type: s,
      name: u,
      identity: c
    }, t.displayName = e, t.is = function(u) {
      return n(u) && u.every(function(u) {
        return D(u, s)
      })
    }, t.update = function(u, e) {
      return t(f.update(u, e))
    }, t
  }
  L.getDefaultName = M;
  var $ = L,
    H = function(u) {
      return c(u) && "maybe" === u.meta.kind
    };

  function X(u) {
    return "?" + A(u)
  }

  function V(t, u) {
    if (H(t) || t === p || t === F) return t;
    var e = u || X(t),
      r = B(t);

    function n(u, e) {
      return F.is(u) ? u : v(t, u, e)
    }
    return n.meta = {
      kind: "maybe",
      type: t,
      name: u,
      identity: r
    }, n.displayName = e, n.is = function(u) {
      return F.is(u) || D(u, t)
    }, n
  }
  V.getDefaultName = X;
  var W = V;
  var J = function(e) {
    return "{" + Object.keys(e).map(function(u) {
      return u + ": " + A(e[u])
    }).join(", ") + "}"
  };

  function G(u) {
    return c(u) && "subtype" === u.meta.kind
  }
  var Q = function(u) {
    return {
      predicates: function u(e) {
        return G(e) ? [e.meta.predicate].concat(u(e.meta.type)) : []
      }(u),
      unrefinedType: function u(e) {
        return G(e) ? u(e.meta.type) : e
      }(u)
    }
  };
  var Z = function(u, e, t) {
    var s = {},
      c = {},
      A = [],
      f = {};
    e.forEach(function(u, e) {
      var t, r, n, i, o = Q(u),
        a = o.unrefinedType;
      t = A, r = o.predicates, Array.prototype.push.apply(t, r), z(s, l(n = a) ? n : n.meta.props), z(c, a.prototype), z(f, l(i = a) ? null : i.meta.defaultProps, !0)
    }), (t = u.getOptions(t)).defaultProps = z(f, t.defaultProps, !0);
    var r, n, i = (r = A, n = u(s, t), r.reduce(function(u, e) {
      return w(u, e)
    }, n));
    return z(i.prototype, c), i
  };

  function K(u) {
    return "Struct" + J(u)
  }

  function Y(u, e) {
    return Z(eu, u, e)
  }

  function uu(u) {
    return l(u) || (u = a(u) ? {} : {
      name: u
    }), u.hasOwnProperty("strict") || (u.strict = eu.strict), u.hasOwnProperty("defaultProps") || (u.defaultProps = {}), u
  }

  function eu(i, u) {
    var e = (u = uu(u)).name,
      t = u.strict,
      o = u.defaultProps,
      r = e || K(i);

    function a(u, e) {
      if (a.is(u)) return u;
      if (!(this instanceof a)) return new a(u, e);
      for (var t in i)
        if (i.hasOwnProperty(t)) {
          var r = i[t],
            n = u[t];
          void 0 === n && (n = o[t]), this[t] = v(r, n, null)
        }
    }
    return a.meta = {
      kind: "struct",
      props: i,
      name: e,
      identity: !1,
      strict: t,
      defaultProps: o
    }, a.displayName = r, a.is = function(u) {
      return u instanceof a
    }, a.update = function(u, e) {
      return new a(f.update(u, e))
    }, a.extend = function(u, e) {
      return Y([a].concat(u), e)
    }, a
  }
  eu.strict = !1, eu.getOptions = uu, eu.getDefaultName = K, eu.extend = Y;
  var tu = eu;

  function ru(u) {
    return "[" + u.map(A).join(", ") + "]"
  }

  function nu(c, u) {
    var e = u || ru(c),
      A = c.every(B);

    function t(u, e) {
      if (A) return u;
      for (var t = !0, r = [], n = 0, i = c.length; n < i; n++) {
        var o = c[n],
          a = u[n],
          s = v(o, a, null);
        t = t && a === s, r.push(s)
      }
      return t && (r = u), r
    }
    return t.meta = {
      kind: "tuple",
      types: c,
      name: u,
      identity: A
    }, t.displayName = e, t.is = function(t) {
      return n(t) && t.length === c.length && c.every(function(u, e) {
        return D(t[e], u)
      })
    }, t.update = function(u, e) {
      return t(f.update(u, e))
    }, t
  }
  nu.getDefaultName = ru;
  var iu = nu;

  function ou(u) {
    return u.map(A).join(" | ")
  }

  function au(i, u) {
    var e = u || ou(i),
      r = i.every(B);

    function n(u, e) {
      if (r) return u;
      var t = n.dispatch(u);
      return !t && n.is(u) ? u : v(t, u, e)
    }
    return n.meta = {
      kind: "union",
      types: i,
      name: u,
      identity: r
    }, n.displayName = e, n.is = function(e) {
      return i.some(function(u) {
        return D(e, u)
      })
    }, n.dispatch = function(u) {
      for (var e = 0, t = i.length; e < t; e++) {
        var r = i[e];
        if (N(r)) {
          var n = r.dispatch(u);
          if (!a(n)) return n
        } else if (D(u, r)) return r
      }
    }, n.update = function(u, e) {
      return n(f.update(u, e))
    }, n
  }
  au.getDefaultName = ou;
  var su = au;

  function cu(u, e) {
    return "(" + u.map(A).join(", ") + ") => " + A(e)
  }

  function Au(u) {
    return y.is(u) && l(u.instrumentation)
  }

  function fu(u) {
    for (var e = u.length, t = !1, r = e - 1; 0 <= r; r--) {
      var n = u[r];
      if (!c(n) || "maybe" !== n.meta.kind) return r + 1;
      t = !0
    }
    return t ? 0 : e
  }

  function lu(i, o, u) {
    i = n(i) ? i : [i];
    var e = u || cu(i, o),
      a = i.length;
    fu(i);

    function t(u, e) {
      return Au(u) ? u : t.of(u)
    }
    return t.meta = {
      kind: "func",
      domain: i,
      codomain: o,
      name: u,
      identity: !0
    }, t.displayName = e, t.is = function(u) {
      return Au(u) && u.instrumentation.domain.length === a && u.instrumentation.domain.every(function(u, e) {
        return u === i[e]
      }) && u.instrumentation.codomain === o
    }, t.of = function(r, n) {
      if (t.is(r)) return r;

      function u() {
        var u = Array.prototype.slice.call(arguments),
          e = u.length;
        if (n && e < a) {
          var t = Function.prototype.bind.apply(r, [this].concat(u));
          return lu(i.slice(e), o).of(t, !0)
        }
        return v(o, r.apply(this, u))
      }
      return u.instrumentation = {
        domain: i,
        codomain: o,
        f: r
      }, u.displayName = s(r), u
    }, t
  }
  lu.getDefaultName = cu, lu.getOptionalArgumentsIndex = fu;
  var pu = lu,
    Eu = B;

  function du(u) {
    return u.map(A).join(" & ")
  }

  function hu(u, e) {
    var t = e || du(u),
      r = u.every(Eu);

    function n(u, e) {
      return u
    }
    return n.meta = {
      kind: "intersection",
      types: u,
      name: e,
      identity: r
    }, n.displayName = t, n.is = function(e) {
      return u.every(function(u) {
        return D(e, u)
      })
    }, n.update = function(u, e) {
      return n(f.update(u, e))
    }, n
  }
  hu.getDefaultName = du;
  var Cu = hu;
  var yu = function(u, e) {
    for (var t in e) e.hasOwnProperty(t) && (u[t] = e[t]);
    return u
  };

  function Fu(u, e) {
    return Z(Bu, u, e)
  }

  function mu(u) {
    return l(u) || (u = a(u) ? {} : {
      name: u
    }), u.hasOwnProperty("strict") || (u.strict = Bu.strict), u
  }

  function Bu(s, u) {
    var e = (u = mu(u)).name,
      r = u.strict,
      t = e || J(s),
      c = Object.keys(s).map(function(u) {
        return s[u]
      }).every(B);

    function n(u, e) {
      if (c) return u;
      var t = !0,
        r = c ? {} : yu({}, u);
      for (var n in s) {
        var i = s[n],
          o = u[n],
          a = v(i, o, null);
        t = t && o === a, r[n] = a
      }
      return t && (r = u), r
    }
    return n.meta = {
      kind: "interface",
      props: s,
      name: e,
      identity: c,
      strict: r
    }, n.displayName = t, n.is = function(u) {
      if (a(u)) return !1;
      if (r)
        for (var e in u)
          if (!s.hasOwnProperty(e)) return !1;
      for (var t in s)
        if (!D(u[t], s[t])) return !1;
      return !0
    }, n.update = function(u, e) {
      return n(f.update(u, e))
    }, n.extend = function(u, e) {
      return Fu([n].concat(u), e)
    }, n
  }
  Bu.strict = !1, Bu.getOptions = mu, Bu.getDefaultName = J, Bu.extend = Fu;
  var vu = Bu;

  function Du(u) {
    return l(u) ? u instanceof Date || u instanceof RegExp ? u : yu({}, u) : n(u) ? u.concat() : u
  }

  function gu(u, e) {
    var t, r, n = u,
      i = !1;
    for (var o in e) e.hasOwnProperty(o) && (r = o, gu.commands.hasOwnProperty(r) ? (t = gu.commands[o](e[o], n)) !== u ? (i = !0, n = t) : n = u : (n === u && (n = Du(u)), t = gu(n[o], e[o]), i = i || t !== n[o], n[o] = t));
    return i ? n : u
  }
  gu.commands = {
    $apply: function(u, e) {
      return u(e)
    },
    $push: function(u, e) {
      return 0 < u.length ? e.concat(u) : e
    },
    $remove: function(u, e) {
      if (0 < u.length) {
        e = Du(e);
        for (var t = 0, r = u.length; t < r; t++) delete e[u[t]]
      }
      return e
    },
    $set: function(u) {
      return u
    },
    $splice: function(u, e) {
      return 0 < u.length ? (e = Du(e), u.reduce(function(u, e) {
        return u.splice.apply(u, e), u
      }, e)) : e
    },
    $swap: function(u, e) {
      if (u.from !== u.to) {
        var t = (e = Du(e))[u.to];
        e[u.to] = e[u.from], e[u.from] = t
      }
      return e
    },
    $unshift: function(u, e) {
      return 0 < u.length ? u.concat(e) : e
    },
    $merge: function(u, e) {
      var t = !1,
        r = Du(e);
      for (var n in u) u.hasOwnProperty(n) && (r[n] = u[n], t = t || r[n] !== e[n]);
      return t ? r : e
    }
  };
  var bu = gu;
  f.Any = p, f.Array = E, f.Boolean = d, f.Date = h, f.Error = C, f.Function = y, f.Nil = F, f.Number = m, f.Integer = k, f.IntegerT = f.Integer, f.Object = x, f.RegExp = _, f.String = S, f.Type = T, f.TypeT = f.Type, f.Arr = f.Array, f.Bool = f.Boolean, f.Dat = f.Date, f.Err = f.Error, f.Func = f.Function, f.Num = f.Number, f.Obj = f.Object, f.Re = f.RegExp, f.Str = f.String, f.dict = j, f.declare = function(e) {
    var t;

    function r(u, e) {
      return t(u, e)
    }
    return r.define = function(u) {
      return N(u) && r.hasOwnProperty("dispatch") && (u.dispatch = r.dispatch), z(r, t = u, !0), e && (t.displayName = r.displayName = e, r.meta.name = e), r.meta.identity = t.meta.identity, r.prototype = t.prototype, r
    }, r.displayName = e || A(r) + "$" + q++, r.meta = {
      identity: !1
    }, r.prototype = null, r
  }, f.enums = U, f.irreducible = e, f.list = $, f.maybe = W, f.refinement = w, f.struct = tu, f.tuple = iu, f.union = su, f.func = pu, f.intersection = Cu, f.subtype = f.refinement, f.inter = vu, f.interface = f.inter, (f.assert = f).update = bu, f.mixin = z, f.isType = c, f.is = D, f.getTypeName = A, f.match = function(u) {
    for (var e, t, r, n = 1, i = arguments.length; n < i;)
      if (e = arguments[n], t = arguments[n + 1], r = arguments[n + 2], o(r) && !c(r) ? n += 3 : (r = t, t = p.is, n += 2), e.is(u) && t(u)) return r(u);
    f.fail("Match error")
  };
  var wu = f,
    ku = wu.stringify,
    xu = {},
    _u = wu.struct({
      message: wu.Any,
      actual: wu.Any,
      expected: wu.Any,
      path: wu.list(wu.union([wu.String, wu.Number]))
    }, "ValidationError");

  function Su(u, e, t, r) {
    return wu.Function.is(e.getValidationErrorMessage) ? e.getValidationErrorMessage(u, t, r) : (n = u, i = e, o = t, a = wu.getTypeName(i), s = o.length ? "/" + o.join("/") + ": " + a : a, "Invalid value " + ku(n) + " supplied to " + s);
    var n, i, o, a, s
  }
  _u.of = function(u, e, t, r) {
    return new _u({
      message: Su(u, e, t, r),
      actual: u,
      expected: e,
      path: t
    })
  };
  var Tu = wu.struct({
    errors: wu.list(_u),
    value: wu.Any
  }, "ValidationResult");

  function Pu(u, e, t) {
    t = t || {};
    var r = wu.Array.is(t) ? t : t.path || [];
    return new Tu(Ou(u, e, r, t))
  }

  function Ou(u, e, t, r) {
    return wu.isType(e) ? ju[e.meta.kind](u, e, t, r) : ju.es6classes(u, e, t, r)
  }
  Tu.prototype.isValid = function() {
    return !this.errors.length
  }, Tu.prototype.firstError = function() {
    return this.isValid() ? null : this.errors[0]
  }, Tu.prototype.toString = function() {
    return this.isValid() ? "[ValidationResult, true, " + ku(this.value) + "]" : "[ValidationResult, false, (" + this.errors.map(function(u) {
      return ku(u.message)
    }).join(", ") + ")]"
  };
  var ju = Pu.validators = {};
  ju.es6classes = function(u, e, t, r) {
    return {
      value: u,
      errors: u instanceof e ? [] : [_u.of(u, e, t, r.context)]
    }
  }, ju.irreducible = ju.enums = function(u, e, t, r) {
    return {
      value: u,
      errors: e.is(u) ? [] : [_u.of(u, e, t, r.context)]
    }
  }, ju.list = function(u, e, t, r) {
    if (!wu.Array.is(u)) return {
      value: u,
      errors: [_u.of(u, e, t, r.context)]
    };
    for (var n = {
        value: [],
        errors: []
      }, i = 0, o = u.length; i < o; i++) {
      var a = Ou(u[i], e.meta.type, t.concat(i), r);
      n.value[i] = a.value, n.errors = n.errors.concat(a.errors)
    }
    return n
  }, ju.subtype = function(u, e, t, r) {
    var n = Ou(u, e.meta.type, t, r);
    return n.errors.length || e.meta.predicate(n.value) || (n.errors = [_u.of(u, e, t, r.context)]), n
  }, ju.maybe = function(u, e, t, r) {
    return wu.Nil.is(u) ? {
      value: u,
      errors: []
    } : Ou(u, e.meta.type, t, r)
  }, ju.struct = function(u, e, t, r) {
    if (!wu.Object.is(u)) return {
      value: u,
      errors: [_u.of(u, e, t, r.context)]
    };
    if (e.is(u)) return {
      value: u,
      errors: []
    };
    var n = {
        value: {},
        errors: []
      },
      i = e.meta.props,
      o = e.meta.defaultProps || xu;
    for (var a in i)
      if (i.hasOwnProperty(a)) {
        var s = u[a];
        void 0 === s && (s = o[a]);
        var c = Ou(s, i[a], t.concat(a), r);
        n.value[a] = c.value, n.errors = n.errors.concat(c.errors)
      }
    if (r.hasOwnProperty("strict") ? r.strict : e.meta.strict)
      for (var A in u) u.hasOwnProperty(A) && !i.hasOwnProperty(A) && n.errors.push(_u.of(u[A], wu.Nil, t.concat(A), r.context));
    return n.errors.length || (n.value = new e(n.value)), n
  }, ju.tuple = function(u, e, t, r) {
    var n = e.meta.types,
      i = n.length;
    if (!wu.Array.is(u) || u.length > i) return {
      value: u,
      errors: [_u.of(u, e, t, r.context)]
    };
    for (var o = {
        value: [],
        errors: []
      }, a = 0; a < i; a++) {
      var s = Ou(u[a], n[a], t.concat(a), r);
      o.value[a] = s.value, o.errors = o.errors.concat(s.errors)
    }
    return o
  }, ju.dict = function(u, e, t, r) {
    if (!wu.Object.is(u)) return {
      value: u,
      errors: [_u.of(u, e, t, r.context)]
    };
    var n = {
      value: {},
      errors: []
    };
    for (var i in u)
      if (u.hasOwnProperty(i)) {
        var o = t.concat(i),
          a = Ou(i, e.meta.domain, o, r),
          s = Ou(u[i], e.meta.codomain, o, r);
        n.value[i] = s.value, n.errors = n.errors.concat(a.errors, s.errors)
      }
    return n
  }, ju.union = function(u, e, t, r) {
    var n = e.dispatch(u);
    return wu.Function.is(n) ? Ou(u, n, t.concat(e.meta.types.indexOf(n)), r) : {
      value: u,
      errors: [_u.of(u, e, t, r.context)]
    }
  }, ju.intersection = function(u, e, t, r) {
    for (var n = e.meta.types, i = n.length, o = {
        value: u,
        errors: []
      }, a = 0, s = 0; s < i; s++) {
      "struct" === n[s].meta.kind && a++;
      var c = Ou(u, n[s], t, r);
      o.errors = o.errors.concat(c.errors)
    }
    return 1 < a && o.errors.push(_u.of(u, e, t, r.context)), o
  }, ju.interface = function(u, e, t, r) {
    if (!wu.Object.is(u)) return {
      value: u,
      errors: [_u.of(u, e, t, r.context)]
    };
    var n = {
        value: {},
        errors: []
      },
      i = e.meta.props;
    for (var o in i) {
      var a = Ou(u[o], i[o], t.concat(o), r);
      n.value[o] = a.value, n.errors = n.errors.concat(a.errors)
    }
    if (r.hasOwnProperty("strict") ? r.strict : e.meta.strict)
      for (var s in u) i.hasOwnProperty(s) || wu.Nil.is(u[s]) || n.errors.push(_u.of(u[s], wu.Nil, t.concat(s), r.context));
    return n
  }, wu.mixin(wu, {
    ValidationError: _u,
    ValidationResult: Tu,
    validate: Pu
  });
  var zu = wu,
    Nu = "undefined" != typeof window ? window : "undefined" != typeof global ? global : "undefined" != typeof self ? self : {};

  function qu(u, e) {
    return u(e = {
      exports: {}
    }, e.exports), e.exports
  }
  var Iu = qu(function(u) {
    function t(u) {
      if (u) return function(u) {
        for (var e in t.prototype) u[e] = t.prototype[e];
        return u
      }(u)
    }(u.exports = t).prototype.on = t.prototype.addEventListener = function(u, e) {
      return this._callbacks = this._callbacks || {}, (this._callbacks["$" + u] = this._callbacks["$" + u] || []).push(e), this
    }, t.prototype.once = function(u, e) {
      function t() {
        this.off(u, t), e.apply(this, arguments)
      }
      return t.fn = e, this.on(u, t), this
    }, t.prototype.off = t.prototype.removeListener = t.prototype.removeAllListeners = t.prototype.removeEventListener = function(u, e) {
      if (this._callbacks = this._callbacks || {}, 0 == arguments.length) return this._callbacks = {}, this;
      var t, r = this._callbacks["$" + u];
      if (!r) return this;
      if (1 == arguments.length) return delete this._callbacks["$" + u], this;
      for (var n = 0; n < r.length; n++)
        if ((t = r[n]) === e || t.fn === e) {
          r.splice(n, 1);
          break
        }
      return this
    }, t.prototype.emit = function(u) {
      this._callbacks = this._callbacks || {};
      var e = [].slice.call(arguments, 1),
        t = this._callbacks["$" + u];
      if (t)
        for (var r = 0, n = (t = t.slice(0)).length; r < n; ++r) t[r].apply(this, e);
      return this
    }, t.prototype.listeners = function(u) {
      return this._callbacks = this._callbacks || {}, this._callbacks["$" + u] || []
    }, t.prototype.hasListeners = function(u) {
      return !!this.listeners(u).length
    }
  });
  var Ru = function(u) {
      return null !== u && "object" == typeof u
    },
    Uu = Mu;

  function Mu(u) {
    if (u) return function(u) {
      for (var e in Mu.prototype) u[e] = Mu.prototype[e];
      return u
    }(u)
  }
  Mu.prototype.clearTimeout = function() {
    return clearTimeout(this._timer), clearTimeout(this._responseTimeoutTimer), delete this._timer, delete this._responseTimeoutTimer, this
  }, Mu.prototype.parse = function(u) {
    return this._parser = u, this
  }, Mu.prototype.responseType = function(u) {
    return this._responseType = u, this
  }, Mu.prototype.serialize = function(u) {
    return this._serializer = u, this
  }, Mu.prototype.timeout = function(u) {
    if (!u || "object" != typeof u) return this._timeout = u, this._responseTimeout = 0, this;
    for (var e in u) switch (e) {
      case "deadline":
        this._timeout = u.deadline;
        break;
      case "response":
        this._responseTimeout = u.response;
        break;
      default:
        console.warn("Unknown timeout option", e)
    }
    return this
  }, Mu.prototype.retry = function(u, e) {
    return 0 !== arguments.length && !0 !== u || (u = 1), u <= 0 && (u = 0), this._maxRetries = u, this._retries = 0, this._retryCallback = e, this
  };
  var Lu = ["ECONNRESET", "ETIMEDOUT", "EADDRINFO", "ESOCKETTIMEDOUT"];
  Mu.prototype._shouldRetry = function(u, e) {
    if (!this._maxRetries || this._retries++ >= this._maxRetries) return !1;
    if (this._retryCallback) try {
      var t = this._retryCallback(u, e);
      if (!0 === t) return !0;
      if (!1 === t) return !1
    } catch (u) {
      console.error(u)
    }
    if (e && e.status && 500 <= e.status && 501 != e.status) return !0;
    if (u) {
      if (u.code && ~Lu.indexOf(u.code)) return !0;
      if (u.timeout && "ECONNABORTED" == u.code) return !0;
      if (u.crossDomain) return !0
    }
    return !1
  }, Mu.prototype._retry = function() {
    return this.clearTimeout(), this.req && (this.req = null, this.req = this.request()), this._aborted = !1, this.timedout = !1, this._end()
  }, Mu.prototype.then = function(u, e) {
    if (!this._fullfilledPromise) {
      var n = this;
      this._endCalled && console.warn("Warning: superagent request was sent twice, because both .end() and .then() were called. Never call .end() if you use promises"), this._fullfilledPromise = new Promise(function(t, r) {
        n.end(function(u, e) {
          u ? r(u) : t(e)
        })
      })
    }
    return this._fullfilledPromise.then(u, e)
  }, Mu.prototype.catch = function(u) {
    return this.then(void 0, u)
  }, Mu.prototype.use = function(u) {
    return u(this), this
  }, Mu.prototype.ok = function(u) {
    if ("function" != typeof u) throw Error("Callback required");
    return this._okCallback = u, this
  }, Mu.prototype._isResponseOK = function(u) {
    return !!u && (this._okCallback ? this._okCallback(u) : 200 <= u.status && u.status < 300)
  }, Mu.prototype.getHeader = Mu.prototype.get = function(u) {
    return this._header[u.toLowerCase()]
  }, Mu.prototype.set = function(u, e) {
    if (Ru(u)) {
      for (var t in u) this.set(t, u[t]);
      return this
    }
    return this._header[u.toLowerCase()] = e, this.header[u] = e, this
  }, Mu.prototype.unset = function(u) {
    return delete this._header[u.toLowerCase()], delete this.header[u], this
  }, Mu.prototype.field = function(u, e) {
    if (null == u) throw new Error(".field(name, val) name can not be empty");
    if (this._data && console.error(".field() can't be used if .send() is used. Please use only .send() or only .field() & .attach()"), Ru(u)) {
      for (var t in u) this.field(t, u[t]);
      return this
    }
    if (Array.isArray(e)) {
      for (var r in e) this.field(u, e[r]);
      return this
    }
    if (null == e) throw new Error(".field(name, val) val can not be empty");
    return "boolean" == typeof e && (e = "" + e), this._getFormData().append(u, e), this
  }, Mu.prototype.abort = function() {
    return this._aborted || (this._aborted = !0, this.xhr && this.xhr.abort(), this.req && this.req.abort(), this.clearTimeout(), this.emit("abort")), this
  }, Mu.prototype._auth = function(u, e, t, r) {
    switch (t.type) {
      case "basic":
        this.set("Authorization", "Basic " + r(u + ":" + e));
        break;
      case "auto":
        this.username = u, this.password = e;
        break;
      case "bearer":
        this.set("Authorization", "Bearer " + u)
    }
    return this
  }, Mu.prototype.withCredentials = function(u) {
    return null == u && (u = !0), this._withCredentials = u, this
  }, Mu.prototype.redirects = function(u) {
    return this._maxRedirects = u, this
  }, Mu.prototype.maxResponseSize = function(u) {
    if ("number" != typeof u) throw TypeError("Invalid argument");
    return this._maxResponseSize = u, this
  }, Mu.prototype.toJSON = function() {
    return {
      method: this.method,
      url: this.url,
      data: this._data,
      headers: this._header
    }
  }, Mu.prototype.send = function(u) {
    var e = Ru(u),
      t = this._header["content-type"];
    if (this._formData && console.error(".send() can't be used if .attach() or .field() is used. Please use only .send() or only .field() & .attach()"), e && !this._data) Array.isArray(u) ? this._data = [] : this._isHost(u) || (this._data = {});
    else if (u && this._data && this._isHost(this._data)) throw Error("Can't merge these send calls");
    if (e && Ru(this._data))
      for (var r in u) this._data[r] = u[r];
    else "string" == typeof u ? (t || this.type("form"), t = this._header["content-type"], this._data = "application/x-www-form-urlencoded" == t ? this._data ? this._data + "&" + u : u : (this._data || "") + u) : this._data = u;
    return !e || this._isHost(u) || t || this.type("json"), this
  }, Mu.prototype.sortQuery = function(u) {
    return this._sort = void 0 === u || u, this
  }, Mu.prototype._finalizeQueryString = function() {
    var u = this._query.join("&");
    if (u && (this.url += (0 <= this.url.indexOf("?") ? "&" : "?") + u), this._query.length = 0, this._sort) {
      var e = this.url.indexOf("?");
      if (0 <= e) {
        var t = this.url.substring(e + 1).split("&");
        "function" == typeof this._sort ? t.sort(this._sort) : t.sort(), this.url = this.url.substring(0, e) + "?" + t.join("&")
      }
    }
  }, Mu.prototype._appendQueryString = function() {
    console.trace("Unsupported")
  }, Mu.prototype._timeoutError = function(u, e, t) {
    if (!this._aborted) {
      var r = new Error(u + e + "ms exceeded");
      r.timeout = e, r.code = "ECONNABORTED", r.errno = t, this.timedout = !0, this.abort(), this.callback(r)
    }
  }, Mu.prototype._setTimeouts = function() {
    var u = this;
    this._timeout && !this._timer && (this._timer = setTimeout(function() {
      u._timeoutError("Timeout of ", u._timeout, "ETIME")
    }, this._timeout)), this._responseTimeout && !this._responseTimeoutTimer && (this._responseTimeoutTimer = setTimeout(function() {
      u._timeoutError("Response timeout of ", u._responseTimeout, "ETIMEDOUT")
    }, this._responseTimeout))
  };
  var $u = function(u) {
      return u.split(/ *; */).shift()
    },
    Hu = function(u) {
      return u.split(/ *; */).reduce(function(u, e) {
        var t = e.split(/ *= */),
          r = t.shift(),
          n = t.shift();
        return r && n && (u[r] = n), u
      }, {})
    },
    Xu = function(u) {
      return u.split(/ *, */).reduce(function(u, e) {
        var t = e.split(/ *; */),
          r = t[0].slice(1, -1);
        return u[t[1].split(/ *= */)[1].slice(1, -1)] = r, u
      }, {})
    },
    Vu = Wu;

  function Wu(u) {
    if (u) return function(u) {
      for (var e in Wu.prototype) u[e] = Wu.prototype[e];
      return u
    }(u)
  }

  function Ju() {
    this._defaults = []
  }
  Wu.prototype.get = function(u) {
    return this.header[u.toLowerCase()]
  }, Wu.prototype._setHeaderProperties = function(u) {
    var e = u["content-type"] || "";
    this.type = $u(e);
    var t = Hu(e);
    for (var r in t) this[r] = t[r];
    this.links = {};
    try {
      u.link && (this.links = Xu(u.link))
    } catch (u) {}
  }, Wu.prototype._setStatusProperties = function(u) {
    var e = u / 100 | 0;
    this.status = this.statusCode = u, this.statusType = e, this.info = 1 == e, this.ok = 2 == e, this.redirect = 3 == e, this.clientError = 4 == e, this.serverError = 5 == e, this.error = (4 == e || 5 == e) && this.toError(), this.accepted = 202 == u, this.noContent = 204 == u, this.badRequest = 400 == u, this.unauthorized = 401 == u, this.notAcceptable = 406 == u, this.forbidden = 403 == u, this.notFound = 404 == u
  }, ["use", "on", "once", "set", "query", "type", "accept", "auth", "withCredentials", "sortQuery", "retry", "ok", "redirects", "timeout", "buffer", "serialize", "parse", "ca", "key", "pfx", "cert"].forEach(function(u) {
    Ju.prototype[u] = function() {
      return this._defaults.push({
        fn: u,
        arguments: arguments
      }), this
    }
  }), Ju.prototype._setDefaults = function(e) {
    this._defaults.forEach(function(u) {
      e[u.fn].apply(e, u.arguments)
    })
  };
  var Gu, Qu = Ju,
    Zu = qu(function(u, t) {
      var e;

      function r() {}
      "undefined" != typeof window ? e = window : "undefined" != typeof self ? e = self : (console.warn("Using browser-only version of superagent in non-browser environment"), e = Nu);
      var a = t = u.exports = function(u, e) {
        return "function" == typeof e ? new t.Request("GET", u).end(e) : 1 == arguments.length ? new t.Request("GET", u) : new t.Request(u, e)
      };
      t.Request = f, a.getXHR = function() {
        if (!(!e.XMLHttpRequest || e.location && "file:" == e.location.protocol && e.ActiveXObject)) return new XMLHttpRequest;
        try {
          return new ActiveXObject("Microsoft.XMLHTTP")
        } catch (u) {}
        try {
          return new ActiveXObject("Msxml2.XMLHTTP.6.0")
        } catch (u) {}
        try {
          return new ActiveXObject("Msxml2.XMLHTTP.3.0")
        } catch (u) {}
        try {
          return new ActiveXObject("Msxml2.XMLHTTP")
        } catch (u) {}
        throw Error("Browser-only version of superagent could not find XHR")
      };
      var c = "".trim ? function(u) {
        return u.trim()
      } : function(u) {
        return u.replace(/(^\s*|\s*$)/g, "")
      };

      function n(u) {
        if (!Ru(u)) return u;
        var e = [];
        for (var t in u) i(e, t, u[t]);
        return e.join("&")
      }

      function i(e, t, u) {
        if (null != u)
          if (Array.isArray(u)) u.forEach(function(u) {
            i(e, t, u)
          });
          else if (Ru(u))
          for (var r in u) i(e, t + "[" + r + "]", u[r]);
        else e.push(encodeURIComponent(t) + "=" + encodeURIComponent(u));
        else null === u && e.push(encodeURIComponent(t))
      }

      function o(u) {
        for (var e, t, r = {}, n = u.split("&"), i = 0, o = n.length; i < o; ++i) - 1 == (t = (e = n[i]).indexOf("=")) ? r[decodeURIComponent(e)] = "" : r[decodeURIComponent(e.slice(0, t))] = decodeURIComponent(e.slice(t + 1));
        return r
      }

      function s(u) {
        return /[\/+]json\b/.test(u)
      }

      function A(u) {
        this.req = u, this.xhr = this.req.xhr, this.text = "HEAD" != this.req.method && ("" === this.xhr.responseType || "text" === this.xhr.responseType) || void 0 === this.xhr.responseType ? this.xhr.responseText : null, this.statusText = this.req.xhr.statusText;
        var e = this.xhr.status;
        1223 === e && (e = 204), this._setStatusProperties(e), this.header = this.headers = function(u) {
          for (var e, t, r, n, i = u.split(/\r?\n/), o = {}, a = 0, s = i.length; a < s; ++a) - 1 !== (e = (t = i[a]).indexOf(":")) && (r = t.slice(0, e).toLowerCase(), n = c(t.slice(e + 1)), o[r] = n);
          return o
        }(this.xhr.getAllResponseHeaders()), this.header["content-type"] = this.xhr.getResponseHeader("content-type"), this._setHeaderProperties(this.header), null === this.text && u._responseType ? this.body = this.xhr.response : this.body = "HEAD" != this.req.method ? this._parseBody(this.text ? this.text : this.xhr.response) : null
      }

      function f(u, e) {
        var r = this;
        this._query = this._query || [], this.method = u, this.url = e, this.header = {}, this._header = {}, this.on("end", function() {
          var e, t = null,
            u = null;
          try {
            u = new A(r)
          } catch (u) {
            return (t = new Error("Parser is unable to parse the response")).parse = !0, t.original = u, r.xhr ? (t.rawResponse = void 0 === r.xhr.responseType ? r.xhr.responseText : r.xhr.response, t.status = r.xhr.status ? r.xhr.status : null, t.statusCode = t.status) : (t.rawResponse = null, t.status = null), r.callback(t)
          }
          r.emit("response", u);
          try {
            r._isResponseOK(u) || (e = new Error(u.statusText || "Unsuccessful HTTP response"))
          } catch (u) {
            e = u
          }
          e ? (e.original = t, e.response = u, e.status = u.status, r.callback(e, u)) : r.callback(null, u)
        })
      }

      function l(u, e, t) {
        var r = a("DELETE", u);
        return "function" == typeof e && (t = e, e = null), e && r.send(e), t && r.end(t), r
      }
      a.serializeObject = n, a.parseString = o, a.types = {
        html: "text/html",
        json: "application/json",
        xml: "text/xml",
        urlencoded: "application/x-www-form-urlencoded",
        form: "application/x-www-form-urlencoded",
        "form-data": "application/x-www-form-urlencoded"
      }, a.serialize = {
        "application/x-www-form-urlencoded": n,
        "application/json": JSON.stringify
      }, a.parse = {
        "application/x-www-form-urlencoded": o,
        "application/json": JSON.parse
      }, Vu(A.prototype), A.prototype._parseBody = function(u) {
        var e = a.parse[this.type];
        return this.req._parser ? this.req._parser(this, u) : (!e && s(this.type) && (e = a.parse["application/json"]), e && u && (u.length || u instanceof Object) ? e(u) : null)
      }, A.prototype.toError = function() {
        var u = this.req,
          e = u.method,
          t = u.url,
          r = "cannot " + e + " " + t + " (" + this.status + ")",
          n = new Error(r);
        return n.status = this.status, n.method = e, n.url = t, n
      }, a.Response = A, Iu(f.prototype), Uu(f.prototype), f.prototype.type = function(u) {
        return this.set("Content-Type", a.types[u] || u), this
      }, f.prototype.accept = function(u) {
        return this.set("Accept", a.types[u] || u), this
      }, f.prototype.auth = function(u, e, t) {
        1 === arguments.length && (e = ""), "object" == typeof e && null !== e && (t = e, e = ""), t || (t = {
          type: "function" == typeof btoa ? "basic" : "auto"
        });
        return this._auth(u, e, t, function(u) {
          if ("function" == typeof btoa) return btoa(u);
          throw new Error("Cannot use basic auth, btoa is not a function")
        })
      }, f.prototype.query = function(u) {
        return "string" != typeof u && (u = n(u)), u && this._query.push(u), this
      }, f.prototype.attach = function(u, e, t) {
        if (e) {
          if (this._data) throw Error("superagent can't mix .send() and .attach()");
          this._getFormData().append(u, e, t || e.name)
        }
        return this
      }, f.prototype._getFormData = function() {
        return this._formData || (this._formData = new e.FormData), this._formData
      }, f.prototype.callback = function(u, e) {
        if (this._shouldRetry(u, e)) return this._retry();
        var t = this._callback;
        this.clearTimeout(), u && (this._maxRetries && (u.retries = this._retries - 1), this.emit("error", u)), t(u, e)
      }, f.prototype.crossDomainError = function() {
        var u = new Error("Request has been terminated\nPossible causes: the network is offline, Origin is not allowed by Access-Control-Allow-Origin, the page is being unloaded, etc.");
        u.crossDomain = !0, u.status = this.status, u.method = this.method, u.url = this.url, this.callback(u)
      }, f.prototype.buffer = f.prototype.ca = f.prototype.agent = function() {
        return console.warn("This is not supported in browser version of superagent"), this
      }, f.prototype.pipe = f.prototype.write = function() {
        throw Error("Streaming is not supported in browser version of superagent")
      }, f.prototype._isHost = function(u) {
        return u && "object" == typeof u && !Array.isArray(u) && "[object Object]" !== Object.prototype.toString.call(u)
      }, f.prototype.end = function(u) {
        return this._endCalled && console.warn("Warning: .end() was called twice. This is not supported in superagent"), this._endCalled = !0, this._callback = u || r, this._finalizeQueryString(), this._end()
      }, f.prototype._end = function() {
        var t = this,
          r = this.xhr = a.getXHR(),
          u = this._formData || this._data;
        this._setTimeouts(), r.onreadystatechange = function() {
          var u = r.readyState;
          if (2 <= u && t._responseTimeoutTimer && clearTimeout(t._responseTimeoutTimer), 4 == u) {
            var e;
            try {
              e = r.status
            } catch (u) {
              e = 0
            }
            if (!e) {
              if (t.timedout || t._aborted) return;
              return t.crossDomainError()
            }
            t.emit("end")
          }
        };
        var e = function(u, e) {
          0 < e.total && (e.percent = e.loaded / e.total * 100), e.direction = u, t.emit("progress", e)
        };
        if (this.hasListeners("progress")) try {
          r.onprogress = e.bind(null, "download"), r.upload && (r.upload.onprogress = e.bind(null, "upload"))
        } catch (u) {}
        try {
          this.username && this.password ? r.open(this.method, this.url, !0, this.username, this.password) : r.open(this.method, this.url, !0)
        } catch (u) {
          return this.callback(u)
        }
        if (this._withCredentials && (r.withCredentials = !0), !this._formData && "GET" != this.method && "HEAD" != this.method && "string" != typeof u && !this._isHost(u)) {
          var n = this._header["content-type"],
            i = this._serializer || a.serialize[n ? n.split(";")[0] : ""];
          !i && s(n) && (i = a.serialize["application/json"]), i && (u = i(u))
        }
        for (var o in this.header) null != this.header[o] && this.header.hasOwnProperty(o) && r.setRequestHeader(o, this.header[o]);
        return this._responseType && (r.responseType = this._responseType), this.emit("request", this), r.send(void 0 !== u ? u : null), this
      }, a.agent = function() {
        return new Qu
      }, ["GET", "POST", "OPTIONS", "PATCH", "PUT", "DELETE"].forEach(function(r) {
        Qu.prototype[r.toLowerCase()] = function(u, e) {
          var t = new a.Request(r, u);
          return this._setDefaults(t), e && t.end(e), t
        }
      }), Qu.prototype.del = Qu.prototype.delete, a.get = function(u, e, t) {
        var r = a("GET", u);
        return "function" == typeof e && (t = e, e = null), e && r.query(e), t && r.end(t), r
      }, a.head = function(u, e, t) {
        var r = a("HEAD", u);
        return "function" == typeof e && (t = e, e = null), e && r.query(e), t && r.end(t), r
      }, a.options = function(u, e, t) {
        var r = a("OPTIONS", u);
        return "function" == typeof e && (t = e, e = null), e && r.send(e), t && r.end(t), r
      }, a.del = l, a.delete = l, a.patch = function(u, e, t) {
        var r = a("PATCH", u);
        return "function" == typeof e && (t = e, e = null), e && r.send(e), t && r.end(t), r
      }, a.post = function(u, e, t) {
        var r = a("POST", u);
        return "function" == typeof e && (t = e, e = null), e && r.send(e), t && r.end(t), r
      }, a.put = function(u, e, t) {
        var r = a("PUT", u);
        return "function" == typeof e && (t = e, e = null), e && r.send(e), t && r.end(t), r
      }
    }),
    Ku = function(u, e) {
      return Zu[u](e).set("Filestack-Source", "JS-0.6.0")
    },
    Yu = {
      tr: {
        regexp: /\u0130|\u0049|\u0049\u0307/g,
        map: {
          "캅": "i",
          I: "캇",
          "I�": "i"
        }
      },
      az: {
        regexp: /[\u0130]/g,
        map: {
          "캅": "i",
          I: "캇",
          "I�": "i"
        }
      },
      lt: {
        regexp: /[\u0049\u004A\u012E\u00CC\u00CD\u0128]/g,
        map: {
          I: "i�",
          J: "j�",
          "칼": "캄�",
          "횑": "i��",
          "횒": "i��",
          "칩": "i��"
        }
      }
    },
    ue = /[^A-Za-z\xAA\xB5\xBA\xC0-\xD6\xD8-\xF6\xF8-\u02C1\u02C6-\u02D1\u02E0-\u02E4\u02EC\u02EE\u0370-\u0374\u0376\u0377\u037A-\u037D\u037F\u0386\u0388-\u038A\u038C\u038E-\u03A1\u03A3-\u03F5\u03F7-\u0481\u048A-\u052F\u0531-\u0556\u0559\u0561-\u0587\u05D0-\u05EA\u05F0-\u05F2\u0620-\u064A\u066E\u066F\u0671-\u06D3\u06D5\u06E5\u06E6\u06EE\u06EF\u06FA-\u06FC\u06FF\u0710\u0712-\u072F\u074D-\u07A5\u07B1\u07CA-\u07EA\u07F4\u07F5\u07FA\u0800-\u0815\u081A\u0824\u0828\u0840-\u0858\u08A0-\u08B4\u0904-\u0939\u093D\u0950\u0958-\u0961\u0971-\u0980\u0985-\u098C\u098F\u0990\u0993-\u09A8\u09AA-\u09B0\u09B2\u09B6-\u09B9\u09BD\u09CE\u09DC\u09DD\u09DF-\u09E1\u09F0\u09F1\u0A05-\u0A0A\u0A0F\u0A10\u0A13-\u0A28\u0A2A-\u0A30\u0A32\u0A33\u0A35\u0A36\u0A38\u0A39\u0A59-\u0A5C\u0A5E\u0A72-\u0A74\u0A85-\u0A8D\u0A8F-\u0A91\u0A93-\u0AA8\u0AAA-\u0AB0\u0AB2\u0AB3\u0AB5-\u0AB9\u0ABD\u0AD0\u0AE0\u0AE1\u0AF9\u0B05-\u0B0C\u0B0F\u0B10\u0B13-\u0B28\u0B2A-\u0B30\u0B32\u0B33\u0B35-\u0B39\u0B3D\u0B5C\u0B5D\u0B5F-\u0B61\u0B71\u0B83\u0B85-\u0B8A\u0B8E-\u0B90\u0B92-\u0B95\u0B99\u0B9A\u0B9C\u0B9E\u0B9F\u0BA3\u0BA4\u0BA8-\u0BAA\u0BAE-\u0BB9\u0BD0\u0C05-\u0C0C\u0C0E-\u0C10\u0C12-\u0C28\u0C2A-\u0C39\u0C3D\u0C58-\u0C5A\u0C60\u0C61\u0C85-\u0C8C\u0C8E-\u0C90\u0C92-\u0CA8\u0CAA-\u0CB3\u0CB5-\u0CB9\u0CBD\u0CDE\u0CE0\u0CE1\u0CF1\u0CF2\u0D05-\u0D0C\u0D0E-\u0D10\u0D12-\u0D3A\u0D3D\u0D4E\u0D5F-\u0D61\u0D7A-\u0D7F\u0D85-\u0D96\u0D9A-\u0DB1\u0DB3-\u0DBB\u0DBD\u0DC0-\u0DC6\u0E01-\u0E30\u0E32\u0E33\u0E40-\u0E46\u0E81\u0E82\u0E84\u0E87\u0E88\u0E8A\u0E8D\u0E94-\u0E97\u0E99-\u0E9F\u0EA1-\u0EA3\u0EA5\u0EA7\u0EAA\u0EAB\u0EAD-\u0EB0\u0EB2\u0EB3\u0EBD\u0EC0-\u0EC4\u0EC6\u0EDC-\u0EDF\u0F00\u0F40-\u0F47\u0F49-\u0F6C\u0F88-\u0F8C\u1000-\u102A\u103F\u1050-\u1055\u105A-\u105D\u1061\u1065\u1066\u106E-\u1070\u1075-\u1081\u108E\u10A0-\u10C5\u10C7\u10CD\u10D0-\u10FA\u10FC-\u1248\u124A-\u124D\u1250-\u1256\u1258\u125A-\u125D\u1260-\u1288\u128A-\u128D\u1290-\u12B0\u12B2-\u12B5\u12B8-\u12BE\u12C0\u12C2-\u12C5\u12C8-\u12D6\u12D8-\u1310\u1312-\u1315\u1318-\u135A\u1380-\u138F\u13A0-\u13F5\u13F8-\u13FD\u1401-\u166C\u166F-\u167F\u1681-\u169A\u16A0-\u16EA\u16F1-\u16F8\u1700-\u170C\u170E-\u1711\u1720-\u1731\u1740-\u1751\u1760-\u176C\u176E-\u1770\u1780-\u17B3\u17D7\u17DC\u1820-\u1877\u1880-\u18A8\u18AA\u18B0-\u18F5\u1900-\u191E\u1950-\u196D\u1970-\u1974\u1980-\u19AB\u19B0-\u19C9\u1A00-\u1A16\u1A20-\u1A54\u1AA7\u1B05-\u1B33\u1B45-\u1B4B\u1B83-\u1BA0\u1BAE\u1BAF\u1BBA-\u1BE5\u1C00-\u1C23\u1C4D-\u1C4F\u1C5A-\u1C7D\u1CE9-\u1CEC\u1CEE-\u1CF1\u1CF5\u1CF6\u1D00-\u1DBF\u1E00-\u1F15\u1F18-\u1F1D\u1F20-\u1F45\u1F48-\u1F4D\u1F50-\u1F57\u1F59\u1F5B\u1F5D\u1F5F-\u1F7D\u1F80-\u1FB4\u1FB6-\u1FBC\u1FBE\u1FC2-\u1FC4\u1FC6-\u1FCC\u1FD0-\u1FD3\u1FD6-\u1FDB\u1FE0-\u1FEC\u1FF2-\u1FF4\u1FF6-\u1FFC\u2071\u207F\u2090-\u209C\u2102\u2107\u210A-\u2113\u2115\u2119-\u211D\u2124\u2126\u2128\u212A-\u212D\u212F-\u2139\u213C-\u213F\u2145-\u2149\u214E\u2183\u2184\u2C00-\u2C2E\u2C30-\u2C5E\u2C60-\u2CE4\u2CEB-\u2CEE\u2CF2\u2CF3\u2D00-\u2D25\u2D27\u2D2D\u2D30-\u2D67\u2D6F\u2D80-\u2D96\u2DA0-\u2DA6\u2DA8-\u2DAE\u2DB0-\u2DB6\u2DB8-\u2DBE\u2DC0-\u2DC6\u2DC8-\u2DCE\u2DD0-\u2DD6\u2DD8-\u2DDE\u2E2F\u3005\u3006\u3031-\u3035\u303B\u303C\u3041-\u3096\u309D-\u309F\u30A1-\u30FA\u30FC-\u30FF\u3105-\u312D\u3131-\u318E\u31A0-\u31BA\u31F0-\u31FF\u3400-\u4DB5\u4E00-\u9FD5\uA000-\uA48C\uA4D0-\uA4FD\uA500-\uA60C\uA610-\uA61F\uA62A\uA62B\uA640-\uA66E\uA67F-\uA69D\uA6A0-\uA6E5\uA717-\uA71F\uA722-\uA788\uA78B-\uA7AD\uA7B0-\uA7B7\uA7F7-\uA801\uA803-\uA805\uA807-\uA80A\uA80C-\uA822\uA840-\uA873\uA882-\uA8B3\uA8F2-\uA8F7\uA8FB\uA8FD\uA90A-\uA925\uA930-\uA946\uA960-\uA97C\uA984-\uA9B2\uA9CF\uA9E0-\uA9E4\uA9E6-\uA9EF\uA9FA-\uA9FE\uAA00-\uAA28\uAA40-\uAA42\uAA44-\uAA4B\uAA60-\uAA76\uAA7A\uAA7E-\uAAAF\uAAB1\uAAB5\uAAB6\uAAB9-\uAABD\uAAC0\uAAC2\uAADB-\uAADD\uAAE0-\uAAEA\uAAF2-\uAAF4\uAB01-\uAB06\uAB09-\uAB0E\uAB11-\uAB16\uAB20-\uAB26\uAB28-\uAB2E\uAB30-\uAB5A\uAB5C-\uAB65\uAB70-\uABE2\uAC00-\uD7A3\uD7B0-\uD7C6\uD7CB-\uD7FB\uF900-\uFA6D\uFA70-\uFAD9\uFB00-\uFB06\uFB13-\uFB17\uFB1D\uFB1F-\uFB28\uFB2A-\uFB36\uFB38-\uFB3C\uFB3E\uFB40\uFB41\uFB43\uFB44\uFB46-\uFBB1\uFBD3-\uFD3D\uFD50-\uFD8F\uFD92-\uFDC7\uFDF0-\uFDFB\uFE70-\uFE74\uFE76-\uFEFC\uFF21-\uFF3A\uFF41-\uFF5A\uFF66-\uFFBE\uFFC2-\uFFC7\uFFCA-\uFFCF\uFFD2-\uFFD7\uFFDA-\uFFDC0-9\xB2\xB3\xB9\xBC-\xBE\u0660-\u0669\u06F0-\u06F9\u07C0-\u07C9\u0966-\u096F\u09E6-\u09EF\u09F4-\u09F9\u0A66-\u0A6F\u0AE6-\u0AEF\u0B66-\u0B6F\u0B72-\u0B77\u0BE6-\u0BF2\u0C66-\u0C6F\u0C78-\u0C7E\u0CE6-\u0CEF\u0D66-\u0D75\u0DE6-\u0DEF\u0E50-\u0E59\u0ED0-\u0ED9\u0F20-\u0F33\u1040-\u1049\u1090-\u1099\u1369-\u137C\u16EE-\u16F0\u17E0-\u17E9\u17F0-\u17F9\u1810-\u1819\u1946-\u194F\u19D0-\u19DA\u1A80-\u1A89\u1A90-\u1A99\u1B50-\u1B59\u1BB0-\u1BB9\u1C40-\u1C49\u1C50-\u1C59\u2070\u2074-\u2079\u2080-\u2089\u2150-\u2182\u2185-\u2189\u2460-\u249B\u24EA-\u24FF\u2776-\u2793\u2CFD\u3007\u3021-\u3029\u3038-\u303A\u3192-\u3195\u3220-\u3229\u3248-\u324F\u3251-\u325F\u3280-\u3289\u32B1-\u32BF\uA620-\uA629\uA6E6-\uA6EF\uA830-\uA835\uA8D0-\uA8D9\uA900-\uA909\uA9D0-\uA9D9\uA9F0-\uA9F9\uAA50-\uAA59\uABF0-\uABF9\uFF10-\uFF19]+/g,
    ee = /([a-z\xB5\xDF-\xF6\xF8-\xFF\u0101\u0103\u0105\u0107\u0109\u010B\u010D\u010F\u0111\u0113\u0115\u0117\u0119\u011B\u011D\u011F\u0121\u0123\u0125\u0127\u0129\u012B\u012D\u012F\u0131\u0133\u0135\u0137\u0138\u013A\u013C\u013E\u0140\u0142\u0144\u0146\u0148\u0149\u014B\u014D\u014F\u0151\u0153\u0155\u0157\u0159\u015B\u015D\u015F\u0161\u0163\u0165\u0167\u0169\u016B\u016D\u016F\u0171\u0173\u0175\u0177\u017A\u017C\u017E-\u0180\u0183\u0185\u0188\u018C\u018D\u0192\u0195\u0199-\u019B\u019E\u01A1\u01A3\u01A5\u01A8\u01AA\u01AB\u01AD\u01B0\u01B4\u01B6\u01B9\u01BA\u01BD-\u01BF\u01C6\u01C9\u01CC\u01CE\u01D0\u01D2\u01D4\u01D6\u01D8\u01DA\u01DC\u01DD\u01DF\u01E1\u01E3\u01E5\u01E7\u01E9\u01EB\u01ED\u01EF\u01F0\u01F3\u01F5\u01F9\u01FB\u01FD\u01FF\u0201\u0203\u0205\u0207\u0209\u020B\u020D\u020F\u0211\u0213\u0215\u0217\u0219\u021B\u021D\u021F\u0221\u0223\u0225\u0227\u0229\u022B\u022D\u022F\u0231\u0233-\u0239\u023C\u023F\u0240\u0242\u0247\u0249\u024B\u024D\u024F-\u0293\u0295-\u02AF\u0371\u0373\u0377\u037B-\u037D\u0390\u03AC-\u03CE\u03D0\u03D1\u03D5-\u03D7\u03D9\u03DB\u03DD\u03DF\u03E1\u03E3\u03E5\u03E7\u03E9\u03EB\u03ED\u03EF-\u03F3\u03F5\u03F8\u03FB\u03FC\u0430-\u045F\u0461\u0463\u0465\u0467\u0469\u046B\u046D\u046F\u0471\u0473\u0475\u0477\u0479\u047B\u047D\u047F\u0481\u048B\u048D\u048F\u0491\u0493\u0495\u0497\u0499\u049B\u049D\u049F\u04A1\u04A3\u04A5\u04A7\u04A9\u04AB\u04AD\u04AF\u04B1\u04B3\u04B5\u04B7\u04B9\u04BB\u04BD\u04BF\u04C2\u04C4\u04C6\u04C8\u04CA\u04CC\u04CE\u04CF\u04D1\u04D3\u04D5\u04D7\u04D9\u04DB\u04DD\u04DF\u04E1\u04E3\u04E5\u04E7\u04E9\u04EB\u04ED\u04EF\u04F1\u04F3\u04F5\u04F7\u04F9\u04FB\u04FD\u04FF\u0501\u0503\u0505\u0507\u0509\u050B\u050D\u050F\u0511\u0513\u0515\u0517\u0519\u051B\u051D\u051F\u0521\u0523\u0525\u0527\u0529\u052B\u052D\u052F\u0561-\u0587\u13F8-\u13FD\u1D00-\u1D2B\u1D6B-\u1D77\u1D79-\u1D9A\u1E01\u1E03\u1E05\u1E07\u1E09\u1E0B\u1E0D\u1E0F\u1E11\u1E13\u1E15\u1E17\u1E19\u1E1B\u1E1D\u1E1F\u1E21\u1E23\u1E25\u1E27\u1E29\u1E2B\u1E2D\u1E2F\u1E31\u1E33\u1E35\u1E37\u1E39\u1E3B\u1E3D\u1E3F\u1E41\u1E43\u1E45\u1E47\u1E49\u1E4B\u1E4D\u1E4F\u1E51\u1E53\u1E55\u1E57\u1E59\u1E5B\u1E5D\u1E5F\u1E61\u1E63\u1E65\u1E67\u1E69\u1E6B\u1E6D\u1E6F\u1E71\u1E73\u1E75\u1E77\u1E79\u1E7B\u1E7D\u1E7F\u1E81\u1E83\u1E85\u1E87\u1E89\u1E8B\u1E8D\u1E8F\u1E91\u1E93\u1E95-\u1E9D\u1E9F\u1EA1\u1EA3\u1EA5\u1EA7\u1EA9\u1EAB\u1EAD\u1EAF\u1EB1\u1EB3\u1EB5\u1EB7\u1EB9\u1EBB\u1EBD\u1EBF\u1EC1\u1EC3\u1EC5\u1EC7\u1EC9\u1ECB\u1ECD\u1ECF\u1ED1\u1ED3\u1ED5\u1ED7\u1ED9\u1EDB\u1EDD\u1EDF\u1EE1\u1EE3\u1EE5\u1EE7\u1EE9\u1EEB\u1EED\u1EEF\u1EF1\u1EF3\u1EF5\u1EF7\u1EF9\u1EFB\u1EFD\u1EFF-\u1F07\u1F10-\u1F15\u1F20-\u1F27\u1F30-\u1F37\u1F40-\u1F45\u1F50-\u1F57\u1F60-\u1F67\u1F70-\u1F7D\u1F80-\u1F87\u1F90-\u1F97\u1FA0-\u1FA7\u1FB0-\u1FB4\u1FB6\u1FB7\u1FBE\u1FC2-\u1FC4\u1FC6\u1FC7\u1FD0-\u1FD3\u1FD6\u1FD7\u1FE0-\u1FE7\u1FF2-\u1FF4\u1FF6\u1FF7\u210A\u210E\u210F\u2113\u212F\u2134\u2139\u213C\u213D\u2146-\u2149\u214E\u2184\u2C30-\u2C5E\u2C61\u2C65\u2C66\u2C68\u2C6A\u2C6C\u2C71\u2C73\u2C74\u2C76-\u2C7B\u2C81\u2C83\u2C85\u2C87\u2C89\u2C8B\u2C8D\u2C8F\u2C91\u2C93\u2C95\u2C97\u2C99\u2C9B\u2C9D\u2C9F\u2CA1\u2CA3\u2CA5\u2CA7\u2CA9\u2CAB\u2CAD\u2CAF\u2CB1\u2CB3\u2CB5\u2CB7\u2CB9\u2CBB\u2CBD\u2CBF\u2CC1\u2CC3\u2CC5\u2CC7\u2CC9\u2CCB\u2CCD\u2CCF\u2CD1\u2CD3\u2CD5\u2CD7\u2CD9\u2CDB\u2CDD\u2CDF\u2CE1\u2CE3\u2CE4\u2CEC\u2CEE\u2CF3\u2D00-\u2D25\u2D27\u2D2D\uA641\uA643\uA645\uA647\uA649\uA64B\uA64D\uA64F\uA651\uA653\uA655\uA657\uA659\uA65B\uA65D\uA65F\uA661\uA663\uA665\uA667\uA669\uA66B\uA66D\uA681\uA683\uA685\uA687\uA689\uA68B\uA68D\uA68F\uA691\uA693\uA695\uA697\uA699\uA69B\uA723\uA725\uA727\uA729\uA72B\uA72D\uA72F-\uA731\uA733\uA735\uA737\uA739\uA73B\uA73D\uA73F\uA741\uA743\uA745\uA747\uA749\uA74B\uA74D\uA74F\uA751\uA753\uA755\uA757\uA759\uA75B\uA75D\uA75F\uA761\uA763\uA765\uA767\uA769\uA76B\uA76D\uA76F\uA771-\uA778\uA77A\uA77C\uA77F\uA781\uA783\uA785\uA787\uA78C\uA78E\uA791\uA793-\uA795\uA797\uA799\uA79B\uA79D\uA79F\uA7A1\uA7A3\uA7A5\uA7A7\uA7A9\uA7B5\uA7B7\uA7FA\uAB30-\uAB5A\uAB60-\uAB65\uAB70-\uABBF\uFB00-\uFB06\uFB13-\uFB17\uFF41-\uFF5A0-9\xB2\xB3\xB9\xBC-\xBE\u0660-\u0669\u06F0-\u06F9\u07C0-\u07C9\u0966-\u096F\u09E6-\u09EF\u09F4-\u09F9\u0A66-\u0A6F\u0AE6-\u0AEF\u0B66-\u0B6F\u0B72-\u0B77\u0BE6-\u0BF2\u0C66-\u0C6F\u0C78-\u0C7E\u0CE6-\u0CEF\u0D66-\u0D75\u0DE6-\u0DEF\u0E50-\u0E59\u0ED0-\u0ED9\u0F20-\u0F33\u1040-\u1049\u1090-\u1099\u1369-\u137C\u16EE-\u16F0\u17E0-\u17E9\u17F0-\u17F9\u1810-\u1819\u1946-\u194F\u19D0-\u19DA\u1A80-\u1A89\u1A90-\u1A99\u1B50-\u1B59\u1BB0-\u1BB9\u1C40-\u1C49\u1C50-\u1C59\u2070\u2074-\u2079\u2080-\u2089\u2150-\u2182\u2185-\u2189\u2460-\u249B\u24EA-\u24FF\u2776-\u2793\u2CFD\u3007\u3021-\u3029\u3038-\u303A\u3192-\u3195\u3220-\u3229\u3248-\u324F\u3251-\u325F\u3280-\u3289\u32B1-\u32BF\uA620-\uA629\uA6E6-\uA6EF\uA830-\uA835\uA8D0-\uA8D9\uA900-\uA909\uA9D0-\uA9D9\uA9F0-\uA9F9\uAA50-\uAA59\uABF0-\uABF9\uFF10-\uFF19])([A-Z\xC0-\xD6\xD8-\xDE\u0100\u0102\u0104\u0106\u0108\u010A\u010C\u010E\u0110\u0112\u0114\u0116\u0118\u011A\u011C\u011E\u0120\u0122\u0124\u0126\u0128\u012A\u012C\u012E\u0130\u0132\u0134\u0136\u0139\u013B\u013D\u013F\u0141\u0143\u0145\u0147\u014A\u014C\u014E\u0150\u0152\u0154\u0156\u0158\u015A\u015C\u015E\u0160\u0162\u0164\u0166\u0168\u016A\u016C\u016E\u0170\u0172\u0174\u0176\u0178\u0179\u017B\u017D\u0181\u0182\u0184\u0186\u0187\u0189-\u018B\u018E-\u0191\u0193\u0194\u0196-\u0198\u019C\u019D\u019F\u01A0\u01A2\u01A4\u01A6\u01A7\u01A9\u01AC\u01AE\u01AF\u01B1-\u01B3\u01B5\u01B7\u01B8\u01BC\u01C4\u01C7\u01CA\u01CD\u01CF\u01D1\u01D3\u01D5\u01D7\u01D9\u01DB\u01DE\u01E0\u01E2\u01E4\u01E6\u01E8\u01EA\u01EC\u01EE\u01F1\u01F4\u01F6-\u01F8\u01FA\u01FC\u01FE\u0200\u0202\u0204\u0206\u0208\u020A\u020C\u020E\u0210\u0212\u0214\u0216\u0218\u021A\u021C\u021E\u0220\u0222\u0224\u0226\u0228\u022A\u022C\u022E\u0230\u0232\u023A\u023B\u023D\u023E\u0241\u0243-\u0246\u0248\u024A\u024C\u024E\u0370\u0372\u0376\u037F\u0386\u0388-\u038A\u038C\u038E\u038F\u0391-\u03A1\u03A3-\u03AB\u03CF\u03D2-\u03D4\u03D8\u03DA\u03DC\u03DE\u03E0\u03E2\u03E4\u03E6\u03E8\u03EA\u03EC\u03EE\u03F4\u03F7\u03F9\u03FA\u03FD-\u042F\u0460\u0462\u0464\u0466\u0468\u046A\u046C\u046E\u0470\u0472\u0474\u0476\u0478\u047A\u047C\u047E\u0480\u048A\u048C\u048E\u0490\u0492\u0494\u0496\u0498\u049A\u049C\u049E\u04A0\u04A2\u04A4\u04A6\u04A8\u04AA\u04AC\u04AE\u04B0\u04B2\u04B4\u04B6\u04B8\u04BA\u04BC\u04BE\u04C0\u04C1\u04C3\u04C5\u04C7\u04C9\u04CB\u04CD\u04D0\u04D2\u04D4\u04D6\u04D8\u04DA\u04DC\u04DE\u04E0\u04E2\u04E4\u04E6\u04E8\u04EA\u04EC\u04EE\u04F0\u04F2\u04F4\u04F6\u04F8\u04FA\u04FC\u04FE\u0500\u0502\u0504\u0506\u0508\u050A\u050C\u050E\u0510\u0512\u0514\u0516\u0518\u051A\u051C\u051E\u0520\u0522\u0524\u0526\u0528\u052A\u052C\u052E\u0531-\u0556\u10A0-\u10C5\u10C7\u10CD\u13A0-\u13F5\u1E00\u1E02\u1E04\u1E06\u1E08\u1E0A\u1E0C\u1E0E\u1E10\u1E12\u1E14\u1E16\u1E18\u1E1A\u1E1C\u1E1E\u1E20\u1E22\u1E24\u1E26\u1E28\u1E2A\u1E2C\u1E2E\u1E30\u1E32\u1E34\u1E36\u1E38\u1E3A\u1E3C\u1E3E\u1E40\u1E42\u1E44\u1E46\u1E48\u1E4A\u1E4C\u1E4E\u1E50\u1E52\u1E54\u1E56\u1E58\u1E5A\u1E5C\u1E5E\u1E60\u1E62\u1E64\u1E66\u1E68\u1E6A\u1E6C\u1E6E\u1E70\u1E72\u1E74\u1E76\u1E78\u1E7A\u1E7C\u1E7E\u1E80\u1E82\u1E84\u1E86\u1E88\u1E8A\u1E8C\u1E8E\u1E90\u1E92\u1E94\u1E9E\u1EA0\u1EA2\u1EA4\u1EA6\u1EA8\u1EAA\u1EAC\u1EAE\u1EB0\u1EB2\u1EB4\u1EB6\u1EB8\u1EBA\u1EBC\u1EBE\u1EC0\u1EC2\u1EC4\u1EC6\u1EC8\u1ECA\u1ECC\u1ECE\u1ED0\u1ED2\u1ED4\u1ED6\u1ED8\u1EDA\u1EDC\u1EDE\u1EE0\u1EE2\u1EE4\u1EE6\u1EE8\u1EEA\u1EEC\u1EEE\u1EF0\u1EF2\u1EF4\u1EF6\u1EF8\u1EFA\u1EFC\u1EFE\u1F08-\u1F0F\u1F18-\u1F1D\u1F28-\u1F2F\u1F38-\u1F3F\u1F48-\u1F4D\u1F59\u1F5B\u1F5D\u1F5F\u1F68-\u1F6F\u1FB8-\u1FBB\u1FC8-\u1FCB\u1FD8-\u1FDB\u1FE8-\u1FEC\u1FF8-\u1FFB\u2102\u2107\u210B-\u210D\u2110-\u2112\u2115\u2119-\u211D\u2124\u2126\u2128\u212A-\u212D\u2130-\u2133\u213E\u213F\u2145\u2183\u2C00-\u2C2E\u2C60\u2C62-\u2C64\u2C67\u2C69\u2C6B\u2C6D-\u2C70\u2C72\u2C75\u2C7E-\u2C80\u2C82\u2C84\u2C86\u2C88\u2C8A\u2C8C\u2C8E\u2C90\u2C92\u2C94\u2C96\u2C98\u2C9A\u2C9C\u2C9E\u2CA0\u2CA2\u2CA4\u2CA6\u2CA8\u2CAA\u2CAC\u2CAE\u2CB0\u2CB2\u2CB4\u2CB6\u2CB8\u2CBA\u2CBC\u2CBE\u2CC0\u2CC2\u2CC4\u2CC6\u2CC8\u2CCA\u2CCC\u2CCE\u2CD0\u2CD2\u2CD4\u2CD6\u2CD8\u2CDA\u2CDC\u2CDE\u2CE0\u2CE2\u2CEB\u2CED\u2CF2\uA640\uA642\uA644\uA646\uA648\uA64A\uA64C\uA64E\uA650\uA652\uA654\uA656\uA658\uA65A\uA65C\uA65E\uA660\uA662\uA664\uA666\uA668\uA66A\uA66C\uA680\uA682\uA684\uA686\uA688\uA68A\uA68C\uA68E\uA690\uA692\uA694\uA696\uA698\uA69A\uA722\uA724\uA726\uA728\uA72A\uA72C\uA72E\uA732\uA734\uA736\uA738\uA73A\uA73C\uA73E\uA740\uA742\uA744\uA746\uA748\uA74A\uA74C\uA74E\uA750\uA752\uA754\uA756\uA758\uA75A\uA75C\uA75E\uA760\uA762\uA764\uA766\uA768\uA76A\uA76C\uA76E\uA779\uA77B\uA77D\uA77E\uA780\uA782\uA784\uA786\uA78B\uA78D\uA790\uA792\uA796\uA798\uA79A\uA79C\uA79E\uA7A0\uA7A2\uA7A4\uA7A6\uA7A8\uA7AA-\uA7AD\uA7B0-\uA7B4\uA7B6\uFF21-\uFF3A])/g,
    te = /([A-Z\xC0-\xD6\xD8-\xDE\u0100\u0102\u0104\u0106\u0108\u010A\u010C\u010E\u0110\u0112\u0114\u0116\u0118\u011A\u011C\u011E\u0120\u0122\u0124\u0126\u0128\u012A\u012C\u012E\u0130\u0132\u0134\u0136\u0139\u013B\u013D\u013F\u0141\u0143\u0145\u0147\u014A\u014C\u014E\u0150\u0152\u0154\u0156\u0158\u015A\u015C\u015E\u0160\u0162\u0164\u0166\u0168\u016A\u016C\u016E\u0170\u0172\u0174\u0176\u0178\u0179\u017B\u017D\u0181\u0182\u0184\u0186\u0187\u0189-\u018B\u018E-\u0191\u0193\u0194\u0196-\u0198\u019C\u019D\u019F\u01A0\u01A2\u01A4\u01A6\u01A7\u01A9\u01AC\u01AE\u01AF\u01B1-\u01B3\u01B5\u01B7\u01B8\u01BC\u01C4\u01C7\u01CA\u01CD\u01CF\u01D1\u01D3\u01D5\u01D7\u01D9\u01DB\u01DE\u01E0\u01E2\u01E4\u01E6\u01E8\u01EA\u01EC\u01EE\u01F1\u01F4\u01F6-\u01F8\u01FA\u01FC\u01FE\u0200\u0202\u0204\u0206\u0208\u020A\u020C\u020E\u0210\u0212\u0214\u0216\u0218\u021A\u021C\u021E\u0220\u0222\u0224\u0226\u0228\u022A\u022C\u022E\u0230\u0232\u023A\u023B\u023D\u023E\u0241\u0243-\u0246\u0248\u024A\u024C\u024E\u0370\u0372\u0376\u037F\u0386\u0388-\u038A\u038C\u038E\u038F\u0391-\u03A1\u03A3-\u03AB\u03CF\u03D2-\u03D4\u03D8\u03DA\u03DC\u03DE\u03E0\u03E2\u03E4\u03E6\u03E8\u03EA\u03EC\u03EE\u03F4\u03F7\u03F9\u03FA\u03FD-\u042F\u0460\u0462\u0464\u0466\u0468\u046A\u046C\u046E\u0470\u0472\u0474\u0476\u0478\u047A\u047C\u047E\u0480\u048A\u048C\u048E\u0490\u0492\u0494\u0496\u0498\u049A\u049C\u049E\u04A0\u04A2\u04A4\u04A6\u04A8\u04AA\u04AC\u04AE\u04B0\u04B2\u04B4\u04B6\u04B8\u04BA\u04BC\u04BE\u04C0\u04C1\u04C3\u04C5\u04C7\u04C9\u04CB\u04CD\u04D0\u04D2\u04D4\u04D6\u04D8\u04DA\u04DC\u04DE\u04E0\u04E2\u04E4\u04E6\u04E8\u04EA\u04EC\u04EE\u04F0\u04F2\u04F4\u04F6\u04F8\u04FA\u04FC\u04FE\u0500\u0502\u0504\u0506\u0508\u050A\u050C\u050E\u0510\u0512\u0514\u0516\u0518\u051A\u051C\u051E\u0520\u0522\u0524\u0526\u0528\u052A\u052C\u052E\u0531-\u0556\u10A0-\u10C5\u10C7\u10CD\u13A0-\u13F5\u1E00\u1E02\u1E04\u1E06\u1E08\u1E0A\u1E0C\u1E0E\u1E10\u1E12\u1E14\u1E16\u1E18\u1E1A\u1E1C\u1E1E\u1E20\u1E22\u1E24\u1E26\u1E28\u1E2A\u1E2C\u1E2E\u1E30\u1E32\u1E34\u1E36\u1E38\u1E3A\u1E3C\u1E3E\u1E40\u1E42\u1E44\u1E46\u1E48\u1E4A\u1E4C\u1E4E\u1E50\u1E52\u1E54\u1E56\u1E58\u1E5A\u1E5C\u1E5E\u1E60\u1E62\u1E64\u1E66\u1E68\u1E6A\u1E6C\u1E6E\u1E70\u1E72\u1E74\u1E76\u1E78\u1E7A\u1E7C\u1E7E\u1E80\u1E82\u1E84\u1E86\u1E88\u1E8A\u1E8C\u1E8E\u1E90\u1E92\u1E94\u1E9E\u1EA0\u1EA2\u1EA4\u1EA6\u1EA8\u1EAA\u1EAC\u1EAE\u1EB0\u1EB2\u1EB4\u1EB6\u1EB8\u1EBA\u1EBC\u1EBE\u1EC0\u1EC2\u1EC4\u1EC6\u1EC8\u1ECA\u1ECC\u1ECE\u1ED0\u1ED2\u1ED4\u1ED6\u1ED8\u1EDA\u1EDC\u1EDE\u1EE0\u1EE2\u1EE4\u1EE6\u1EE8\u1EEA\u1EEC\u1EEE\u1EF0\u1EF2\u1EF4\u1EF6\u1EF8\u1EFA\u1EFC\u1EFE\u1F08-\u1F0F\u1F18-\u1F1D\u1F28-\u1F2F\u1F38-\u1F3F\u1F48-\u1F4D\u1F59\u1F5B\u1F5D\u1F5F\u1F68-\u1F6F\u1FB8-\u1FBB\u1FC8-\u1FCB\u1FD8-\u1FDB\u1FE8-\u1FEC\u1FF8-\u1FFB\u2102\u2107\u210B-\u210D\u2110-\u2112\u2115\u2119-\u211D\u2124\u2126\u2128\u212A-\u212D\u2130-\u2133\u213E\u213F\u2145\u2183\u2C00-\u2C2E\u2C60\u2C62-\u2C64\u2C67\u2C69\u2C6B\u2C6D-\u2C70\u2C72\u2C75\u2C7E-\u2C80\u2C82\u2C84\u2C86\u2C88\u2C8A\u2C8C\u2C8E\u2C90\u2C92\u2C94\u2C96\u2C98\u2C9A\u2C9C\u2C9E\u2CA0\u2CA2\u2CA4\u2CA6\u2CA8\u2CAA\u2CAC\u2CAE\u2CB0\u2CB2\u2CB4\u2CB6\u2CB8\u2CBA\u2CBC\u2CBE\u2CC0\u2CC2\u2CC4\u2CC6\u2CC8\u2CCA\u2CCC\u2CCE\u2CD0\u2CD2\u2CD4\u2CD6\u2CD8\u2CDA\u2CDC\u2CDE\u2CE0\u2CE2\u2CEB\u2CED\u2CF2\uA640\uA642\uA644\uA646\uA648\uA64A\uA64C\uA64E\uA650\uA652\uA654\uA656\uA658\uA65A\uA65C\uA65E\uA660\uA662\uA664\uA666\uA668\uA66A\uA66C\uA680\uA682\uA684\uA686\uA688\uA68A\uA68C\uA68E\uA690\uA692\uA694\uA696\uA698\uA69A\uA722\uA724\uA726\uA728\uA72A\uA72C\uA72E\uA732\uA734\uA736\uA738\uA73A\uA73C\uA73E\uA740\uA742\uA744\uA746\uA748\uA74A\uA74C\uA74E\uA750\uA752\uA754\uA756\uA758\uA75A\uA75C\uA75E\uA760\uA762\uA764\uA766\uA768\uA76A\uA76C\uA76E\uA779\uA77B\uA77D\uA77E\uA780\uA782\uA784\uA786\uA78B\uA78D\uA790\uA792\uA796\uA798\uA79A\uA79C\uA79E\uA7A0\uA7A2\uA7A4\uA7A6\uA7A8\uA7AA-\uA7AD\uA7B0-\uA7B4\uA7B6\uFF21-\uFF3A]+)([A-Z\xC0-\xD6\xD8-\xDE\u0100\u0102\u0104\u0106\u0108\u010A\u010C\u010E\u0110\u0112\u0114\u0116\u0118\u011A\u011C\u011E\u0120\u0122\u0124\u0126\u0128\u012A\u012C\u012E\u0130\u0132\u0134\u0136\u0139\u013B\u013D\u013F\u0141\u0143\u0145\u0147\u014A\u014C\u014E\u0150\u0152\u0154\u0156\u0158\u015A\u015C\u015E\u0160\u0162\u0164\u0166\u0168\u016A\u016C\u016E\u0170\u0172\u0174\u0176\u0178\u0179\u017B\u017D\u0181\u0182\u0184\u0186\u0187\u0189-\u018B\u018E-\u0191\u0193\u0194\u0196-\u0198\u019C\u019D\u019F\u01A0\u01A2\u01A4\u01A6\u01A7\u01A9\u01AC\u01AE\u01AF\u01B1-\u01B3\u01B5\u01B7\u01B8\u01BC\u01C4\u01C7\u01CA\u01CD\u01CF\u01D1\u01D3\u01D5\u01D7\u01D9\u01DB\u01DE\u01E0\u01E2\u01E4\u01E6\u01E8\u01EA\u01EC\u01EE\u01F1\u01F4\u01F6-\u01F8\u01FA\u01FC\u01FE\u0200\u0202\u0204\u0206\u0208\u020A\u020C\u020E\u0210\u0212\u0214\u0216\u0218\u021A\u021C\u021E\u0220\u0222\u0224\u0226\u0228\u022A\u022C\u022E\u0230\u0232\u023A\u023B\u023D\u023E\u0241\u0243-\u0246\u0248\u024A\u024C\u024E\u0370\u0372\u0376\u037F\u0386\u0388-\u038A\u038C\u038E\u038F\u0391-\u03A1\u03A3-\u03AB\u03CF\u03D2-\u03D4\u03D8\u03DA\u03DC\u03DE\u03E0\u03E2\u03E4\u03E6\u03E8\u03EA\u03EC\u03EE\u03F4\u03F7\u03F9\u03FA\u03FD-\u042F\u0460\u0462\u0464\u0466\u0468\u046A\u046C\u046E\u0470\u0472\u0474\u0476\u0478\u047A\u047C\u047E\u0480\u048A\u048C\u048E\u0490\u0492\u0494\u0496\u0498\u049A\u049C\u049E\u04A0\u04A2\u04A4\u04A6\u04A8\u04AA\u04AC\u04AE\u04B0\u04B2\u04B4\u04B6\u04B8\u04BA\u04BC\u04BE\u04C0\u04C1\u04C3\u04C5\u04C7\u04C9\u04CB\u04CD\u04D0\u04D2\u04D4\u04D6\u04D8\u04DA\u04DC\u04DE\u04E0\u04E2\u04E4\u04E6\u04E8\u04EA\u04EC\u04EE\u04F0\u04F2\u04F4\u04F6\u04F8\u04FA\u04FC\u04FE\u0500\u0502\u0504\u0506\u0508\u050A\u050C\u050E\u0510\u0512\u0514\u0516\u0518\u051A\u051C\u051E\u0520\u0522\u0524\u0526\u0528\u052A\u052C\u052E\u0531-\u0556\u10A0-\u10C5\u10C7\u10CD\u13A0-\u13F5\u1E00\u1E02\u1E04\u1E06\u1E08\u1E0A\u1E0C\u1E0E\u1E10\u1E12\u1E14\u1E16\u1E18\u1E1A\u1E1C\u1E1E\u1E20\u1E22\u1E24\u1E26\u1E28\u1E2A\u1E2C\u1E2E\u1E30\u1E32\u1E34\u1E36\u1E38\u1E3A\u1E3C\u1E3E\u1E40\u1E42\u1E44\u1E46\u1E48\u1E4A\u1E4C\u1E4E\u1E50\u1E52\u1E54\u1E56\u1E58\u1E5A\u1E5C\u1E5E\u1E60\u1E62\u1E64\u1E66\u1E68\u1E6A\u1E6C\u1E6E\u1E70\u1E72\u1E74\u1E76\u1E78\u1E7A\u1E7C\u1E7E\u1E80\u1E82\u1E84\u1E86\u1E88\u1E8A\u1E8C\u1E8E\u1E90\u1E92\u1E94\u1E9E\u1EA0\u1EA2\u1EA4\u1EA6\u1EA8\u1EAA\u1EAC\u1EAE\u1EB0\u1EB2\u1EB4\u1EB6\u1EB8\u1EBA\u1EBC\u1EBE\u1EC0\u1EC2\u1EC4\u1EC6\u1EC8\u1ECA\u1ECC\u1ECE\u1ED0\u1ED2\u1ED4\u1ED6\u1ED8\u1EDA\u1EDC\u1EDE\u1EE0\u1EE2\u1EE4\u1EE6\u1EE8\u1EEA\u1EEC\u1EEE\u1EF0\u1EF2\u1EF4\u1EF6\u1EF8\u1EFA\u1EFC\u1EFE\u1F08-\u1F0F\u1F18-\u1F1D\u1F28-\u1F2F\u1F38-\u1F3F\u1F48-\u1F4D\u1F59\u1F5B\u1F5D\u1F5F\u1F68-\u1F6F\u1FB8-\u1FBB\u1FC8-\u1FCB\u1FD8-\u1FDB\u1FE8-\u1FEC\u1FF8-\u1FFB\u2102\u2107\u210B-\u210D\u2110-\u2112\u2115\u2119-\u211D\u2124\u2126\u2128\u212A-\u212D\u2130-\u2133\u213E\u213F\u2145\u2183\u2C00-\u2C2E\u2C60\u2C62-\u2C64\u2C67\u2C69\u2C6B\u2C6D-\u2C70\u2C72\u2C75\u2C7E-\u2C80\u2C82\u2C84\u2C86\u2C88\u2C8A\u2C8C\u2C8E\u2C90\u2C92\u2C94\u2C96\u2C98\u2C9A\u2C9C\u2C9E\u2CA0\u2CA2\u2CA4\u2CA6\u2CA8\u2CAA\u2CAC\u2CAE\u2CB0\u2CB2\u2CB4\u2CB6\u2CB8\u2CBA\u2CBC\u2CBE\u2CC0\u2CC2\u2CC4\u2CC6\u2CC8\u2CCA\u2CCC\u2CCE\u2CD0\u2CD2\u2CD4\u2CD6\u2CD8\u2CDA\u2CDC\u2CDE\u2CE0\u2CE2\u2CEB\u2CED\u2CF2\uA640\uA642\uA644\uA646\uA648\uA64A\uA64C\uA64E\uA650\uA652\uA654\uA656\uA658\uA65A\uA65C\uA65E\uA660\uA662\uA664\uA666\uA668\uA66A\uA66C\uA680\uA682\uA684\uA686\uA688\uA68A\uA68C\uA68E\uA690\uA692\uA694\uA696\uA698\uA69A\uA722\uA724\uA726\uA728\uA72A\uA72C\uA72E\uA732\uA734\uA736\uA738\uA73A\uA73C\uA73E\uA740\uA742\uA744\uA746\uA748\uA74A\uA74C\uA74E\uA750\uA752\uA754\uA756\uA758\uA75A\uA75C\uA75E\uA760\uA762\uA764\uA766\uA768\uA76A\uA76C\uA76E\uA779\uA77B\uA77D\uA77E\uA780\uA782\uA784\uA786\uA78B\uA78D\uA790\uA792\uA796\uA798\uA79A\uA79C\uA79E\uA7A0\uA7A2\uA7A4\uA7A6\uA7A8\uA7AA-\uA7AD\uA7B0-\uA7B4\uA7B6\uFF21-\uFF3A][a-z\xB5\xDF-\xF6\xF8-\xFF\u0101\u0103\u0105\u0107\u0109\u010B\u010D\u010F\u0111\u0113\u0115\u0117\u0119\u011B\u011D\u011F\u0121\u0123\u0125\u0127\u0129\u012B\u012D\u012F\u0131\u0133\u0135\u0137\u0138\u013A\u013C\u013E\u0140\u0142\u0144\u0146\u0148\u0149\u014B\u014D\u014F\u0151\u0153\u0155\u0157\u0159\u015B\u015D\u015F\u0161\u0163\u0165\u0167\u0169\u016B\u016D\u016F\u0171\u0173\u0175\u0177\u017A\u017C\u017E-\u0180\u0183\u0185\u0188\u018C\u018D\u0192\u0195\u0199-\u019B\u019E\u01A1\u01A3\u01A5\u01A8\u01AA\u01AB\u01AD\u01B0\u01B4\u01B6\u01B9\u01BA\u01BD-\u01BF\u01C6\u01C9\u01CC\u01CE\u01D0\u01D2\u01D4\u01D6\u01D8\u01DA\u01DC\u01DD\u01DF\u01E1\u01E3\u01E5\u01E7\u01E9\u01EB\u01ED\u01EF\u01F0\u01F3\u01F5\u01F9\u01FB\u01FD\u01FF\u0201\u0203\u0205\u0207\u0209\u020B\u020D\u020F\u0211\u0213\u0215\u0217\u0219\u021B\u021D\u021F\u0221\u0223\u0225\u0227\u0229\u022B\u022D\u022F\u0231\u0233-\u0239\u023C\u023F\u0240\u0242\u0247\u0249\u024B\u024D\u024F-\u0293\u0295-\u02AF\u0371\u0373\u0377\u037B-\u037D\u0390\u03AC-\u03CE\u03D0\u03D1\u03D5-\u03D7\u03D9\u03DB\u03DD\u03DF\u03E1\u03E3\u03E5\u03E7\u03E9\u03EB\u03ED\u03EF-\u03F3\u03F5\u03F8\u03FB\u03FC\u0430-\u045F\u0461\u0463\u0465\u0467\u0469\u046B\u046D\u046F\u0471\u0473\u0475\u0477\u0479\u047B\u047D\u047F\u0481\u048B\u048D\u048F\u0491\u0493\u0495\u0497\u0499\u049B\u049D\u049F\u04A1\u04A3\u04A5\u04A7\u04A9\u04AB\u04AD\u04AF\u04B1\u04B3\u04B5\u04B7\u04B9\u04BB\u04BD\u04BF\u04C2\u04C4\u04C6\u04C8\u04CA\u04CC\u04CE\u04CF\u04D1\u04D3\u04D5\u04D7\u04D9\u04DB\u04DD\u04DF\u04E1\u04E3\u04E5\u04E7\u04E9\u04EB\u04ED\u04EF\u04F1\u04F3\u04F5\u04F7\u04F9\u04FB\u04FD\u04FF\u0501\u0503\u0505\u0507\u0509\u050B\u050D\u050F\u0511\u0513\u0515\u0517\u0519\u051B\u051D\u051F\u0521\u0523\u0525\u0527\u0529\u052B\u052D\u052F\u0561-\u0587\u13F8-\u13FD\u1D00-\u1D2B\u1D6B-\u1D77\u1D79-\u1D9A\u1E01\u1E03\u1E05\u1E07\u1E09\u1E0B\u1E0D\u1E0F\u1E11\u1E13\u1E15\u1E17\u1E19\u1E1B\u1E1D\u1E1F\u1E21\u1E23\u1E25\u1E27\u1E29\u1E2B\u1E2D\u1E2F\u1E31\u1E33\u1E35\u1E37\u1E39\u1E3B\u1E3D\u1E3F\u1E41\u1E43\u1E45\u1E47\u1E49\u1E4B\u1E4D\u1E4F\u1E51\u1E53\u1E55\u1E57\u1E59\u1E5B\u1E5D\u1E5F\u1E61\u1E63\u1E65\u1E67\u1E69\u1E6B\u1E6D\u1E6F\u1E71\u1E73\u1E75\u1E77\u1E79\u1E7B\u1E7D\u1E7F\u1E81\u1E83\u1E85\u1E87\u1E89\u1E8B\u1E8D\u1E8F\u1E91\u1E93\u1E95-\u1E9D\u1E9F\u1EA1\u1EA3\u1EA5\u1EA7\u1EA9\u1EAB\u1EAD\u1EAF\u1EB1\u1EB3\u1EB5\u1EB7\u1EB9\u1EBB\u1EBD\u1EBF\u1EC1\u1EC3\u1EC5\u1EC7\u1EC9\u1ECB\u1ECD\u1ECF\u1ED1\u1ED3\u1ED5\u1ED7\u1ED9\u1EDB\u1EDD\u1EDF\u1EE1\u1EE3\u1EE5\u1EE7\u1EE9\u1EEB\u1EED\u1EEF\u1EF1\u1EF3\u1EF5\u1EF7\u1EF9\u1EFB\u1EFD\u1EFF-\u1F07\u1F10-\u1F15\u1F20-\u1F27\u1F30-\u1F37\u1F40-\u1F45\u1F50-\u1F57\u1F60-\u1F67\u1F70-\u1F7D\u1F80-\u1F87\u1F90-\u1F97\u1FA0-\u1FA7\u1FB0-\u1FB4\u1FB6\u1FB7\u1FBE\u1FC2-\u1FC4\u1FC6\u1FC7\u1FD0-\u1FD3\u1FD6\u1FD7\u1FE0-\u1FE7\u1FF2-\u1FF4\u1FF6\u1FF7\u210A\u210E\u210F\u2113\u212F\u2134\u2139\u213C\u213D\u2146-\u2149\u214E\u2184\u2C30-\u2C5E\u2C61\u2C65\u2C66\u2C68\u2C6A\u2C6C\u2C71\u2C73\u2C74\u2C76-\u2C7B\u2C81\u2C83\u2C85\u2C87\u2C89\u2C8B\u2C8D\u2C8F\u2C91\u2C93\u2C95\u2C97\u2C99\u2C9B\u2C9D\u2C9F\u2CA1\u2CA3\u2CA5\u2CA7\u2CA9\u2CAB\u2CAD\u2CAF\u2CB1\u2CB3\u2CB5\u2CB7\u2CB9\u2CBB\u2CBD\u2CBF\u2CC1\u2CC3\u2CC5\u2CC7\u2CC9\u2CCB\u2CCD\u2CCF\u2CD1\u2CD3\u2CD5\u2CD7\u2CD9\u2CDB\u2CDD\u2CDF\u2CE1\u2CE3\u2CE4\u2CEC\u2CEE\u2CF3\u2D00-\u2D25\u2D27\u2D2D\uA641\uA643\uA645\uA647\uA649\uA64B\uA64D\uA64F\uA651\uA653\uA655\uA657\uA659\uA65B\uA65D\uA65F\uA661\uA663\uA665\uA667\uA669\uA66B\uA66D\uA681\uA683\uA685\uA687\uA689\uA68B\uA68D\uA68F\uA691\uA693\uA695\uA697\uA699\uA69B\uA723\uA725\uA727\uA729\uA72B\uA72D\uA72F-\uA731\uA733\uA735\uA737\uA739\uA73B\uA73D\uA73F\uA741\uA743\uA745\uA747\uA749\uA74B\uA74D\uA74F\uA751\uA753\uA755\uA757\uA759\uA75B\uA75D\uA75F\uA761\uA763\uA765\uA767\uA769\uA76B\uA76D\uA76F\uA771-\uA778\uA77A\uA77C\uA77F\uA781\uA783\uA785\uA787\uA78C\uA78E\uA791\uA793-\uA795\uA797\uA799\uA79B\uA79D\uA79F\uA7A1\uA7A3\uA7A5\uA7A7\uA7A9\uA7B5\uA7B7\uA7FA\uAB30-\uAB5A\uAB60-\uAB65\uAB70-\uABBF\uFB00-\uFB06\uFB13-\uFB17\uFF41-\uFF5A])/g,
    re = function(u, e, r) {
      if (null == u) return "";
      return r = "string" != typeof r ? " " : r, u = String(u).replace(ee, "$1 $2").replace(te, "$1 $2").replace(ue, function(u, e, t) {
        return 0 === e || e === t.length - u.length ? "" : r
      }), n = Yu[e], t = null == (t = u) ? "" : String(t), n && (t = t.replace(n.regexp, function(u) {
        return n.map[u]
      })), t.toLowerCase();
      var t, n
    },
    ne = function(u, e) {
      return re(u, e, "_")
    },
    ie = function(u, e, t) {
      return e in u ? Object.defineProperty(u, e, {
        value: t,
        enumerable: !0,
        configurable: !0,
        writable: !0
      }) : u[e] = t, u
    },
    oe = Object.assign || function(u) {
      for (var e = 1; e < arguments.length; e++) {
        var t = arguments[e];
        for (var r in t) Object.prototype.hasOwnProperty.call(t, r) && (u[r] = t[r])
      }
      return u
    },
    ae = zu.validate,
    se = function(e, u, r) {
      var t = Object.keys(r),
        n = u.map(function(u) {
          return u.name
        }),
        i = n.join(", ");
      return t.forEach(function(u) {
        if (n.indexOf(u) < 0) throw new Error(u + " is not a valid option for " + e + ". Valid options are: " + i)
      }), u.forEach(function(u) {
        var e = r[u.name];
        if ("location" === u.name && "string" == typeof e && (e = e.toLowerCase()), void 0 !== e) {
          var t = ae(e, u.type);
          if (!t.isValid()) throw new Error(t.firstError().message)
        }
      }), t
    },
    ce = function(u) {
      var e = oe({}, u);
      return Object.keys(e).forEach(function(u) {
        return !e[u] && void 0 !== e[u] && delete e[u]
      }), e
    },
    Ae = function(u) {
      var t = 1 < arguments.length && void 0 !== arguments[1] ? arguments[1] : "",
        r = oe({}, u);
      return Object.keys(r).reduce(function(u, e) {
        return u[ne(t + "-" + e)] = r[e], delete r[e], u
      }, {})
    },
    fe = {
      init: function() {
        window.filestackInternals.logger.working = !1
      },
      isWorking: function() {
        return window.filestackInternals.logger.working
      },
      on: function() {
        window.filestackInternals.logger.working = !0
      },
      off: function() {
        window.filestackInternals.logger.working = !1
      }
    },
    le = "function" == typeof Symbol && "symbol" == typeof Symbol.iterator ? function(u) {
      return typeof u
    } : function(u) {
      return u && "function" == typeof Symbol && u.constructor === Symbol && u !== Symbol.prototype ? "symbol" : typeof u
    },
    pe = function e(i, o) {
      var u = function() {
        for (var u = arguments.length, e = Array(u), t = 0; t < u; t++) e[t] = arguments[t];
        var r, n = [].concat(e).map(function(u) {
          return "object" === (void 0 === u ? "undefined" : le(u)) ? JSON.stringify(u, function(u, e) {
            if ("function" == typeof e) {
              if ("json" === u) try {
                return e()
              } catch (u) {}
              return "[Function]"
            }
            return e instanceof File ? "[File name: " + e.name + ", mimetype: " + e.type + ", size: " + e.size + "]" : e
          }, 2) : u
        });
        o.isWorking() && (r = console).log.apply(r, ["[" + i + "]"].concat(function(u) {
          if (Array.isArray(u)) {
            for (var e = 0, t = Array(u.length); e < u.length; e++) t[e] = u[e];
            return t
          }
          return Array.from(u)
        }(n)))
      };
      return u.context = function(u) {
        return e(i + "][" + u, o)
      }, u.on = o.on, u.off = o.off, u
    }("filestack", fe);
  Gu = void 0, "object" === ("undefined" == typeof window ? "undefined" : le(window)) && ((Gu = window.filestackInternals) || (Gu = {}, window.filestackInternals = Gu), Gu.logger || (Gu.logger = pe, fe.init()));
  var Ee = pe.context("api-client"),
    de = function(u, e) {
      var t = 2 < arguments.length && void 0 !== arguments[2] ? arguments[2] : {};
      if (!e || "string" != typeof e) throw new Error("handle or storage alias is required for preview");
      var r = [{
        name: "id",
        type: zu.String
      }, {
        name: "css",
        type: zu.String
      }, {
        name: "policy",
        type: zu.String
      }, {
        name: "signature",
        type: zu.String
      }, {
        name: "v1",
        type: zu.Boolean
      }];
      se("preview", r, t);
      var n = ce(t),
        i = function(u, e) {
          var t = 2 < arguments.length && void 0 !== arguments[2] ? arguments[2] : {},
            r = oe({}, t);
          !r.policy && !r.signature && u.policy && u.signature && (r.policy = u.policy, r.signature = u.signature);
          var n = r.signature && r.policy,
            i = r.policy,
            o = r.signature,
            a = [],
            s = [u.urls.previewApiUrl],
            c = t.css,
            A = t.css && encodeURIComponent('"' + t.css + '"'),
            f = A ? "preview=css:" + A : "preview";
          t.v1 ? (s.push("api/preview"), t.css && a.push("css=" + c), n && a.push("policy=" + i + "&signature=" + o)) : (-1 !== e.indexOf("src:") ? s.push(u.apikey + "/" + f) : s.push(f), n && s.push("security=policy:" + i + ",signature:" + o)), s.push(e);
          var l = s.join("/");
          return a.length ? l + "?" + a.join("&") : l
        }(u, e, n);
      if (n.id) {
        var o = n.id,
          a = document.createElement("iframe"),
          s = document.getElementById(o);
        if (a.src = i, a.width = "100%", a.height = "100%", !s) throw new Error('DOM Element with id "' + o + '" not found.');
        return s.appendChild(a)
      }
      return window.open(i, e)
    },
    he = function(e, t) {
      return zu.refinement(zu.Number, function(u) {
        return e <= u && u <= t
      })
    },
    Ce = function(u, e) {
      return zu.tuple([(r = u, zu.refinement(zu.Integer, function(u) {
        return r <= u
      })), (t = e, zu.refinement(zu.Integer, function(u) {
        return u <= t
      }))], "range");
      var t, r
    },
    ye = zu.enums.of("top left right bottom"),
    Fe = zu.refinement(zu.tuple([ye, ye]), function(u) {
      return u[0] !== u[1]
    }, "pair"),
    me = function(u, e, i) {
      var t = e.map(function(u) {
          return t = i, r = ne((e = u).name), n = t[e.name], Array.isArray(n) ? r + ":[" + n + "]" : n ? r + ":" + n : null;
          var e, t, r, n
        }).filter(function(u) {
          return u
        }).join(","),
        r = ne(u);
      return t.length ? r + "=" + t : r
    },
    Be = {
      crop: function() {
        var u = 0 < arguments.length && void 0 !== arguments[0] ? arguments[0] : [],
          e = arguments[1],
          t = [{
            name: "dim",
            type: zu.struct({
              x: zu.Integer,
              y: zu.Integer,
              width: zu.Integer,
              height: zu.Integer
            })
          }];
        se("crop", t, e);
        var r = e.dim,
          n = "crop=dim:[" + r.x + "," + r.y + "," + r.width + "," + r.height + "]";
        return u.concat(n)
      },
      resize: function() {
        var u = 0 < arguments.length && void 0 !== arguments[0] ? arguments[0] : [],
          e = arguments[1],
          t = [{
            name: "width",
            type: he(0, 1e4)
          }, {
            name: "height",
            type: he(0, 1e4)
          }, {
            name: "fit",
            type: zu.enums.of("clip crop scale max")
          }, {
            name: "align",
            type: zu.union([zu.enums.of("center top bottom left right faces"), Fe])
          }];
        if (se("resize", t, e).length < 1) throw new Error("Resize options must contain either width, height, fit, or align");
        var r = me("resize", t, e);
        return u.concat(r)
      },
      rotate: function() {
        var u = 0 < arguments.length && void 0 !== arguments[0] ? arguments[0] : [],
          e = arguments[1],
          t = [{
            name: "deg",
            type: zu.union([he(0, 359), zu.enums.of("exif")])
          }, {
            name: "exif",
            type: zu.Boolean
          }, {
            name: "background",
            type: zu.String
          }];
        if (se("rotate", t, e).length < 1) throw new Error("Rotate options must contain either deg or exif");
        var r = me("rotate", t, e);
        return u.concat(r)
      },
      roundedCorners: function() {
        var u = 0 < arguments.length && void 0 !== arguments[0] ? arguments[0] : [],
          e = arguments[1],
          t = [{
            name: "radius",
            type: zu.union([he(1, 1e4), zu.enums.of("max")])
          }, {
            name: "blur",
            type: he(0, 20)
          }, {
            name: "background",
            type: zu.String
          }];
        se("roundedCorners", t, e);
        var r = me("roundedCorners", t, e);
        return u.concat(r)
      },
      vignette: function() {
        var u = 0 < arguments.length && void 0 !== arguments[0] ? arguments[0] : [],
          e = arguments[1],
          t = [{
            name: "amount",
            type: he(0, 100)
          }, {
            name: "blurmode",
            type: zu.enums.of("linear gaussian")
          }, {
            name: "background",
            type: zu.String
          }];
        se("vignette", t, e);
        var r = me("vignette", t, e);
        return u.concat(r)
      },
      polaroid: function() {
        var u = 0 < arguments.length && void 0 !== arguments[0] ? arguments[0] : [],
          e = arguments[1],
          t = [{
            name: "color",
            type: zu.String
          }, {
            name: "rotate",
            type: he(0, 359)
          }, {
            name: "background",
            type: zu.String
          }];
        se("polaroid", t, e);
        var r = me("polaroid", t, e);
        return u.concat(r)
      },
      tornEdges: function() {
        var u = 0 < arguments.length && void 0 !== arguments[0] ? arguments[0] : [],
          e = arguments[1],
          t = [{
            name: "spread",
            type: Ce(1, 1e4)
          }, {
            name: "background",
            type: zu.String
          }];
        se("tornEdges", t, e);
        var r = me("tornEdges", t, e);
        return u.concat(r)
      },
      shadow: function() {
        var u = 0 < arguments.length && void 0 !== arguments[0] ? arguments[0] : [],
          e = arguments[1],
          t = [{
            name: "blur",
            type: he(0, 20)
          }, {
            name: "opacity",
            type: he(0, 100)
          }, {
            name: "vector",
            type: Ce(-1e3, 1e3)
          }, {
            name: "color",
            type: zu.String
          }, {
            name: "background",
            type: zu.String
          }];
        se("shadow", t, e);
        var r = me("shadow", t, e);
        return u.concat(r)
      },
      circle: function() {
        var u = 0 < arguments.length && void 0 !== arguments[0] ? arguments[0] : [],
          e = arguments[1],
          t = [{
            name: "background",
            type: zu.String
          }];
        se("circle", t, e);
        var r = me("circle", t, e);
        return u.concat(r)
      },
      border: function() {
        var u = 0 < arguments.length && void 0 !== arguments[0] ? arguments[0] : [],
          e = arguments[1],
          t = [{
            name: "width",
            type: he(1, 1e3)
          }, {
            name: "color",
            type: zu.String
          }, {
            name: "background",
            type: zu.String
          }];
        se("border", t, e);
        var r = me("border", t, e);
        return u.concat(r)
      },
      flip: function() {
        var u = 0 < arguments.length && void 0 !== arguments[0] ? arguments[0] : [],
          e = arguments[1];
        if ("boolean" != typeof e) throw Error("flip must be a Boolean value");
        return e ? u.concat("flip") : u
      },
      flop: function() {
        var u = 0 < arguments.length && void 0 !== arguments[0] ? arguments[0] : [],
          e = arguments[1];
        if ("boolean" != typeof e) throw Error("flop must be a Boolean value");
        return e ? u.concat("flop") : u
      },
      blackwhite: function() {
        var u = 0 < arguments.length && void 0 !== arguments[0] ? arguments[0] : [],
          e = arguments[1],
          t = [{
            name: "threshold",
            type: he(0, 100)
          }];
        se("blackwhite", t, e);
        var r = me("blackwhite", t, e);
        return u.concat(r)
      },
      monochrome: function() {
        var u = 0 < arguments.length && void 0 !== arguments[0] ? arguments[0] : [],
          e = arguments[1];
        if ("boolean" != typeof e) throw Error("monochrome must be a Boolean value");
        return e ? u.concat("monochrome") : u
      },
      sepia: function() {
        var u = 0 < arguments.length && void 0 !== arguments[0] ? arguments[0] : [],
          e = arguments[1],
          t = [{
            name: "tone",
            type: he(0, 100)
          }];
        se("sepia", t, e);
        var r = me("sepia", t, e);
        return u.concat(r)
      },
      output: function() {
        var u = 0 < arguments.length && void 0 !== arguments[0] ? arguments[0] : [],
          e = arguments[1],
          t = [{
            name: "format",
            type: zu.String
          }, {
            name: "background",
            type: zu.String
          }, {
            name: "page",
            type: he(1, 1e4)
          }, {
            name: "density",
            type: he(1, 500)
          }, {
            name: "compress",
            type: zu.Boolean
          }, {
            name: "quality",
            type: zu.union([he(1, 100), zu.enums.of("input")])
          }, {
            name: "input",
            type: zu.Boolean
          }, {
            name: "strip",
            type: zu.Boolean
          }, {
            name: "colorspace",
            type: zu.enums.of("rgb cmyk input")
          }, {
            name: "secure",
            type: zu.Boolean
          }, {
            name: "docinfo",
            type: zu.Boolean
          }, {
            name: "pageformat",
            type: zu.enums.of("a3 a4 a5 b4 b5 letter legal tabloid")
          }, {
            name: "pageorientation",
            type: zu.enums.of("landscape portrait")
          }];
        se("output", t, e);
        var r = me("output", t, e);
        return u.concat(r)
      }
    },
    ve = qu(function(u) {
      var e, t;
      e = Nu, t = function() {
        var b = !0;

        function o(t) {
          function u(u) {
            var e = t.match(u);
            return e && 1 < e.length && e[1] || ""
          }
          var e, r, n, i = u(/(ipod|iphone|ipad)/i).toLowerCase(),
            o = !/like android/i.test(t) && /android/i.test(t),
            a = /nexus\s*[0-6]\s*/i.test(t),
            s = !a && /nexus\s*[0-9]+/i.test(t),
            c = /CrOS/.test(t),
            A = /silk/i.test(t),
            f = /sailfish/i.test(t),
            l = /tizen/i.test(t),
            p = /(web|hpw)os/i.test(t),
            E = /windows phone/i.test(t),
            d = (/SamsungBrowser/i.test(t), !E && /windows/i.test(t)),
            h = !i && !A && /macintosh/i.test(t),
            C = !o && !f && !l && !p && /linux/i.test(t),
            y = u(/edge\/(\d+(\.\d+)?)/i),
            F = u(/version\/(\d+(\.\d+)?)/i),
            m = /tablet/i.test(t) && !/tablet pc/i.test(t),
            B = !m && /[^-]mobi/i.test(t),
            v = /xbox/i.test(t);
          /opera/i.test(t) ? e = {
            name: "Opera",
            opera: b,
            version: F || u(/(?:opera|opr|opios)[\s\/](\d+(\.\d+)?)/i)
          } : /opr|opios/i.test(t) ? e = {
            name: "Opera",
            opera: b,
            version: u(/(?:opr|opios)[\s\/](\d+(\.\d+)?)/i) || F
          } : /SamsungBrowser/i.test(t) ? e = {
            name: "Samsung Internet for Android",
            samsungBrowser: b,
            version: F || u(/(?:SamsungBrowser)[\s\/](\d+(\.\d+)?)/i)
          } : /coast/i.test(t) ? e = {
            name: "Opera Coast",
            coast: b,
            version: F || u(/(?:coast)[\s\/](\d+(\.\d+)?)/i)
          } : /yabrowser/i.test(t) ? e = {
            name: "Yandex Browser",
            yandexbrowser: b,
            version: F || u(/(?:yabrowser)[\s\/](\d+(\.\d+)?)/i)
          } : /ucbrowser/i.test(t) ? e = {
            name: "UC Browser",
            ucbrowser: b,
            version: u(/(?:ucbrowser)[\s\/](\d+(?:\.\d+)+)/i)
          } : /mxios/i.test(t) ? e = {
            name: "Maxthon",
            maxthon: b,
            version: u(/(?:mxios)[\s\/](\d+(?:\.\d+)+)/i)
          } : /epiphany/i.test(t) ? e = {
            name: "Epiphany",
            epiphany: b,
            version: u(/(?:epiphany)[\s\/](\d+(?:\.\d+)+)/i)
          } : /puffin/i.test(t) ? e = {
            name: "Puffin",
            puffin: b,
            version: u(/(?:puffin)[\s\/](\d+(?:\.\d+)?)/i)
          } : /sleipnir/i.test(t) ? e = {
            name: "Sleipnir",
            sleipnir: b,
            version: u(/(?:sleipnir)[\s\/](\d+(?:\.\d+)+)/i)
          } : /k-meleon/i.test(t) ? e = {
            name: "K-Meleon",
            kMeleon: b,
            version: u(/(?:k-meleon)[\s\/](\d+(?:\.\d+)+)/i)
          } : E ? (e = {
            name: "Windows Phone",
            windowsphone: b
          }, y ? (e.msedge = b, e.version = y) : (e.msie = b, e.version = u(/iemobile\/(\d+(\.\d+)?)/i))) : /msie|trident/i.test(t) ? e = {
            name: "Internet Explorer",
            msie: b,
            version: u(/(?:msie |rv:)(\d+(\.\d+)?)/i)
          } : c ? e = {
            name: "Chrome",
            chromeos: b,
            chromeBook: b,
            chrome: b,
            version: u(/(?:chrome|crios|crmo)\/(\d+(\.\d+)?)/i)
          } : /chrome.+? edge/i.test(t) ? e = {
            name: "Microsoft Edge",
            msedge: b,
            version: y
          } : /vivaldi/i.test(t) ? e = {
            name: "Vivaldi",
            vivaldi: b,
            version: u(/vivaldi\/(\d+(\.\d+)?)/i) || F
          } : f ? e = {
            name: "Sailfish",
            sailfish: b,
            version: u(/sailfish\s?browser\/(\d+(\.\d+)?)/i)
          } : /seamonkey\//i.test(t) ? e = {
            name: "SeaMonkey",
            seamonkey: b,
            version: u(/seamonkey\/(\d+(\.\d+)?)/i)
          } : /firefox|iceweasel|fxios/i.test(t) ? (e = {
            name: "Firefox",
            firefox: b,
            version: u(/(?:firefox|iceweasel|fxios)[ \/](\d+(\.\d+)?)/i)
          }, /\((mobile|tablet);[^\)]*rv:[\d\.]+\)/i.test(t) && (e.firefoxos = b)) : A ? e = {
            name: "Amazon Silk",
            silk: b,
            version: u(/silk\/(\d+(\.\d+)?)/i)
          } : /phantom/i.test(t) ? e = {
            name: "PhantomJS",
            phantom: b,
            version: u(/phantomjs\/(\d+(\.\d+)?)/i)
          } : /slimerjs/i.test(t) ? e = {
            name: "SlimerJS",
            slimer: b,
            version: u(/slimerjs\/(\d+(\.\d+)?)/i)
          } : /blackberry|\bbb\d+/i.test(t) || /rim\stablet/i.test(t) ? e = {
            name: "BlackBerry",
            blackberry: b,
            version: F || u(/blackberry[\d]+\/(\d+(\.\d+)?)/i)
          } : p ? (e = {
            name: "WebOS",
            webos: b,
            version: F || u(/w(?:eb)?osbrowser\/(\d+(\.\d+)?)/i)
          }, /touchpad\//i.test(t) && (e.touchpad = b)) : /bada/i.test(t) ? e = {
            name: "Bada",
            bada: b,
            version: u(/dolfin\/(\d+(\.\d+)?)/i)
          } : l ? e = {
            name: "Tizen",
            tizen: b,
            version: u(/(?:tizen\s?)?browser\/(\d+(\.\d+)?)/i) || F
          } : /qupzilla/i.test(t) ? e = {
            name: "QupZilla",
            qupzilla: b,
            version: u(/(?:qupzilla)[\s\/](\d+(?:\.\d+)+)/i) || F
          } : /chromium/i.test(t) ? e = {
            name: "Chromium",
            chromium: b,
            version: u(/(?:chromium)[\s\/](\d+(?:\.\d+)?)/i) || F
          } : /chrome|crios|crmo/i.test(t) ? e = {
            name: "Chrome",
            chrome: b,
            version: u(/(?:chrome|crios|crmo)\/(\d+(\.\d+)?)/i)
          } : o ? e = {
            name: "Android",
            version: F
          } : /safari|applewebkit/i.test(t) ? (e = {
            name: "Safari",
            safari: b
          }, F && (e.version = F)) : i ? (e = {
            name: "iphone" == i ? "iPhone" : "ipad" == i ? "iPad" : "iPod"
          }, F && (e.version = F)) : e = /googlebot/i.test(t) ? {
            name: "Googlebot",
            googlebot: b,
            version: u(/googlebot\/(\d+(\.\d+))/i) || F
          } : {
            name: u(/^(.*)\/(.*) /),
            version: (r = /^(.*)\/(.*) /, n = t.match(r), n && 1 < n.length && n[2] || "")
          }, !e.msedge && /(apple)?webkit/i.test(t) ? (/(apple)?webkit\/537\.36/i.test(t) ? (e.name = e.name || "Blink", e.blink = b) : (e.name = e.name || "Webkit", e.webkit = b), !e.version && F && (e.version = F)) : !e.opera && /gecko\//i.test(t) && (e.name = e.name || "Gecko", e.gecko = b, e.version = e.version || u(/gecko\/(\d+(\.\d+)?)/i)), e.windowsphone || e.msedge || !o && !e.silk ? e.windowsphone || e.msedge || !i ? h ? e.mac = b : v ? e.xbox = b : d ? e.windows = b : C && (e.linux = b) : (e[i] = b, e.ios = b) : e.android = b;
          var D = "";
          e.windows ? D = function(u) {
            switch (u) {
              case "NT":
                return "NT";
              case "XP":
                return "XP";
              case "NT 5.0":
                return "2000";
              case "NT 5.1":
                return "XP";
              case "NT 5.2":
                return "2003";
              case "NT 6.0":
                return "Vista";
              case "NT 6.1":
                return "7";
              case "NT 6.2":
                return "8";
              case "NT 6.3":
                return "8.1";
              case "NT 10.0":
                return "10";
              default:
                return
            }
          }(u(/Windows ((NT|XP)( \d\d?.\d)?)/i)) : e.windowsphone ? D = u(/windows phone (?:os)?\s?(\d+(\.\d+)*)/i) : e.mac ? D = (D = u(/Mac OS X (\d+([_\.\s]\d+)*)/i)).replace(/[_\s]/g, ".") : i ? D = (D = u(/os (\d+([_\s]\d+)*) like mac os x/i)).replace(/[_\s]/g, ".") : o ? D = u(/android[ \/-](\d+(\.\d+)*)/i) : e.webos ? D = u(/(?:web|hpw)os\/(\d+(\.\d+)*)/i) : e.blackberry ? D = u(/rim\stablet\sos\s(\d+(\.\d+)*)/i) : e.bada ? D = u(/bada\/(\d+(\.\d+)*)/i) : e.tizen && (D = u(/tizen[\/\s](\d+(\.\d+)*)/i)), D && (e.osversion = D);
          var g = !e.windows && D.split(".")[0];
          return m || s || "ipad" == i || o && (3 == g || 4 <= g && !B) || e.silk ? e.tablet = b : (B || "iphone" == i || "ipod" == i || o || a || e.blackberry || e.webos || e.bada) && (e.mobile = b), e.msedge || e.msie && 10 <= e.version || e.yandexbrowser && 15 <= e.version || e.vivaldi && 1 <= e.version || e.chrome && 20 <= e.version || e.samsungBrowser && 4 <= e.version || e.firefox && 20 <= e.version || e.safari && 6 <= e.version || e.opera && 10 <= e.version || e.ios && e.osversion && 6 <= e.osversion.split(".")[0] || e.blackberry && 10.1 <= e.version || e.chromium && 20 <= e.version ? e.a = b : e.msie && e.version < 10 || e.chrome && e.version < 20 || e.firefox && e.version < 20 || e.safari && e.version < 6 || e.opera && e.version < 10 || e.ios && e.osversion && e.osversion.split(".")[0] < 6 || e.chromium && e.version < 20 ? e.c = b : e.x = b, e
        }
        var a = o("undefined" != typeof navigator && navigator.userAgent || "");

        function r(u) {
          return u.split(".").length
        }

        function n(u, e) {
          var t, r = [];
          if (Array.prototype.map) return Array.prototype.map.call(u, e);
          for (t = 0; t < u.length; t++) r.push(e(u[t]));
          return r
        }

        function s(u) {
          for (var t = Math.max(r(u[0]), r(u[1])), e = n(u, function(u) {
              var e = t - r(u);
              return n((u += new Array(e + 1).join(".0")).split("."), function(u) {
                return new Array(20 - u.length).join("0") + u
              }).reverse()
            }); 0 <= --t;) {
            if (e[0][t] > e[1][t]) return 1;
            if (e[0][t] !== e[1][t]) return -1;
            if (0 === t) return 0
          }
        }

        function i(u, e, t) {
          var r = a;
          "string" == typeof e && (t = e, e = void 0), void 0 === e && (e = !1), t && (r = o(t));
          var n = "" + r.version;
          for (var i in u)
            if (u.hasOwnProperty(i) && r[i]) {
              if ("string" != typeof u[i]) throw new Error("Browser version in the minVersion map should be a string: " + i + ": " + String(u));
              return s([n, u[i]]) < 0
            }
          return e
        }
        return a.test = function(u) {
          for (var e = 0; e < u.length; ++e) {
            var t = u[e];
            if ("string" == typeof t && t in a) return !0
          }
          return !1
        }, a.isUnsupportedBrowser = i, a.compareVersions = s, a.check = function(u, e, t) {
          return !i(u, e, t)
        }, a._detect = o, a
      }, u.exports ? u.exports = t() : e.bowser = t()
    }),
    De = qu(function(u, e) {
      u.exports = function(A) {
        var r = ["0", "1", "2", "3", "4", "5", "6", "7", "8", "9", "a", "b", "c", "d", "e", "f"];

        function c(u, e) {
          var t = u[0],
            r = u[1],
            n = u[2],
            i = u[3];
          t += (r & n | ~r & i) + e[0] - 680876936 | 0, i += ((t = (t << 7 | t >>> 25) + r | 0) & r | ~t & n) + e[1] - 389564586 | 0, n += ((i = (i << 12 | i >>> 20) + t | 0) & t | ~i & r) + e[2] + 606105819 | 0, r += ((n = (n << 17 | n >>> 15) + i | 0) & i | ~n & t) + e[3] - 1044525330 | 0, t += ((r = (r << 22 | r >>> 10) + n | 0) & n | ~r & i) + e[4] - 176418897 | 0, i += ((t = (t << 7 | t >>> 25) + r | 0) & r | ~t & n) + e[5] + 1200080426 | 0, n += ((i = (i << 12 | i >>> 20) + t | 0) & t | ~i & r) + e[6] - 1473231341 | 0, r += ((n = (n << 17 | n >>> 15) + i | 0) & i | ~n & t) + e[7] - 45705983 | 0, t += ((r = (r << 22 | r >>> 10) + n | 0) & n | ~r & i) + e[8] + 1770035416 | 0, i += ((t = (t << 7 | t >>> 25) + r | 0) & r | ~t & n) + e[9] - 1958414417 | 0, n += ((i = (i << 12 | i >>> 20) + t | 0) & t | ~i & r) + e[10] - 42063 | 0, r += ((n = (n << 17 | n >>> 15) + i | 0) & i | ~n & t) + e[11] - 1990404162 | 0, t += ((r = (r << 22 | r >>> 10) + n | 0) & n | ~r & i) + e[12] + 1804603682 | 0, i += ((t = (t << 7 | t >>> 25) + r | 0) & r | ~t & n) + e[13] - 40341101 | 0, n += ((i = (i << 12 | i >>> 20) + t | 0) & t | ~i & r) + e[14] - 1502002290 | 0, r += ((n = (n << 17 | n >>> 15) + i | 0) & i | ~n & t) + e[15] + 1236535329 | 0, t += ((r = (r << 22 | r >>> 10) + n | 0) & i | n & ~i) + e[1] - 165796510 | 0, i += ((t = (t << 5 | t >>> 27) + r | 0) & n | r & ~n) + e[6] - 1069501632 | 0, n += ((i = (i << 9 | i >>> 23) + t | 0) & r | t & ~r) + e[11] + 643717713 | 0, r += ((n = (n << 14 | n >>> 18) + i | 0) & t | i & ~t) + e[0] - 373897302 | 0, t += ((r = (r << 20 | r >>> 12) + n | 0) & i | n & ~i) + e[5] - 701558691 | 0, i += ((t = (t << 5 | t >>> 27) + r | 0) & n | r & ~n) + e[10] + 38016083 | 0, n += ((i = (i << 9 | i >>> 23) + t | 0) & r | t & ~r) + e[15] - 660478335 | 0, r += ((n = (n << 14 | n >>> 18) + i | 0) & t | i & ~t) + e[4] - 405537848 | 0, t += ((r = (r << 20 | r >>> 12) + n | 0) & i | n & ~i) + e[9] + 568446438 | 0, i += ((t = (t << 5 | t >>> 27) + r | 0) & n | r & ~n) + e[14] - 1019803690 | 0, n += ((i = (i << 9 | i >>> 23) + t | 0) & r | t & ~r) + e[3] - 187363961 | 0, r += ((n = (n << 14 | n >>> 18) + i | 0) & t | i & ~t) + e[8] + 1163531501 | 0, t += ((r = (r << 20 | r >>> 12) + n | 0) & i | n & ~i) + e[13] - 1444681467 | 0, i += ((t = (t << 5 | t >>> 27) + r | 0) & n | r & ~n) + e[2] - 51403784 | 0, n += ((i = (i << 9 | i >>> 23) + t | 0) & r | t & ~r) + e[7] + 1735328473 | 0, r += ((n = (n << 14 | n >>> 18) + i | 0) & t | i & ~t) + e[12] - 1926607734 | 0, t += ((r = (r << 20 | r >>> 12) + n | 0) ^ n ^ i) + e[5] - 378558 | 0, i += ((t = (t << 4 | t >>> 28) + r | 0) ^ r ^ n) + e[8] - 2022574463 | 0, n += ((i = (i << 11 | i >>> 21) + t | 0) ^ t ^ r) + e[11] + 1839030562 | 0, r += ((n = (n << 16 | n >>> 16) + i | 0) ^ i ^ t) + e[14] - 35309556 | 0, t += ((r = (r << 23 | r >>> 9) + n | 0) ^ n ^ i) + e[1] - 1530992060 | 0, i += ((t = (t << 4 | t >>> 28) + r | 0) ^ r ^ n) + e[4] + 1272893353 | 0, n += ((i = (i << 11 | i >>> 21) + t | 0) ^ t ^ r) + e[7] - 155497632 | 0, r += ((n = (n << 16 | n >>> 16) + i | 0) ^ i ^ t) + e[10] - 1094730640 | 0, t += ((r = (r << 23 | r >>> 9) + n | 0) ^ n ^ i) + e[13] + 681279174 | 0, i += ((t = (t << 4 | t >>> 28) + r | 0) ^ r ^ n) + e[0] - 358537222 | 0, n += ((i = (i << 11 | i >>> 21) + t | 0) ^ t ^ r) + e[3] - 722521979 | 0, r += ((n = (n << 16 | n >>> 16) + i | 0) ^ i ^ t) + e[6] + 76029189 | 0, t += ((r = (r << 23 | r >>> 9) + n | 0) ^ n ^ i) + e[9] - 640364487 | 0, i += ((t = (t << 4 | t >>> 28) + r | 0) ^ r ^ n) + e[12] - 421815835 | 0, n += ((i = (i << 11 | i >>> 21) + t | 0) ^ t ^ r) + e[15] + 530742520 | 0, r += ((n = (n << 16 | n >>> 16) + i | 0) ^ i ^ t) + e[2] - 995338651 | 0, t += (n ^ ((r = (r << 23 | r >>> 9) + n | 0) | ~i)) + e[0] - 198630844 | 0, i += (r ^ ((t = (t << 6 | t >>> 26) + r | 0) | ~n)) + e[7] + 1126891415 | 0, n += (t ^ ((i = (i << 10 | i >>> 22) + t | 0) | ~r)) + e[14] - 1416354905 | 0, r += (i ^ ((n = (n << 15 | n >>> 17) + i | 0) | ~t)) + e[5] - 57434055 | 0, t += (n ^ ((r = (r << 21 | r >>> 11) + n | 0) | ~i)) + e[12] + 1700485571 | 0, i += (r ^ ((t = (t << 6 | t >>> 26) + r | 0) | ~n)) + e[3] - 1894986606 | 0, n += (t ^ ((i = (i << 10 | i >>> 22) + t | 0) | ~r)) + e[10] - 1051523 | 0, r += (i ^ ((n = (n << 15 | n >>> 17) + i | 0) | ~t)) + e[1] - 2054922799 | 0, t += (n ^ ((r = (r << 21 | r >>> 11) + n | 0) | ~i)) + e[8] + 1873313359 | 0, i += (r ^ ((t = (t << 6 | t >>> 26) + r | 0) | ~n)) + e[15] - 30611744 | 0, n += (t ^ ((i = (i << 10 | i >>> 22) + t | 0) | ~r)) + e[6] - 1560198380 | 0, r += (i ^ ((n = (n << 15 | n >>> 17) + i | 0) | ~t)) + e[13] + 1309151649 | 0, t += (n ^ ((r = (r << 21 | r >>> 11) + n | 0) | ~i)) + e[4] - 145523070 | 0, i += (r ^ ((t = (t << 6 | t >>> 26) + r | 0) | ~n)) + e[11] - 1120210379 | 0, n += (t ^ ((i = (i << 10 | i >>> 22) + t | 0) | ~r)) + e[2] + 718787259 | 0, r = ((r += (i ^ ((n = (n << 15 | n >>> 17) + i | 0) | ~t)) + e[9] - 343485551 | 0) << 21 | r >>> 11) + n | 0, u[0] = t + u[0] | 0, u[1] = r + u[1] | 0, u[2] = n + u[2] | 0, u[3] = i + u[3] | 0
        }

        function f(u) {
          var e, t = [];
          for (e = 0; e < 64; e += 4) t[e >> 2] = u.charCodeAt(e) + (u.charCodeAt(e + 1) << 8) + (u.charCodeAt(e + 2) << 16) + (u.charCodeAt(e + 3) << 24);
          return t
        }

        function l(u) {
          var e, t = [];
          for (e = 0; e < 64; e += 4) t[e >> 2] = u[e] + (u[e + 1] << 8) + (u[e + 2] << 16) + (u[e + 3] << 24);
          return t
        }

        function n(u) {
          var e, t, r, n, i, o, a = u.length,
            s = [1732584193, -271733879, -1732584194, 271733878];
          for (e = 64; e <= a; e += 64) c(s, f(u.substring(e - 64, e)));
          for (u = u.substring(e - 64), t = u.length, r = [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0], e = 0; e < t; e += 1) r[e >> 2] |= u.charCodeAt(e) << (e % 4 << 3);
          if (r[e >> 2] |= 128 << (e % 4 << 3), 55 < e)
            for (c(s, r), e = 0; e < 16; e += 1) r[e] = 0;
          return n = (n = 8 * a).toString(16).match(/(.*?)(.{0,8})$/), i = parseInt(n[2], 16), o = parseInt(n[1], 16) || 0, r[14] = i, r[15] = o, c(s, r), s
        }

        function t(u) {
          var e, t = "";
          for (e = 0; e < 4; e += 1) t += r[u >> 8 * e + 4 & 15] + r[u >> 8 * e & 15];
          return t
        }

        function o(u) {
          var e;
          for (e = 0; e < u.length; e += 1) u[e] = t(u[e]);
          return u.join("")
        }

        function i(u) {
          return /[\u0080-\uFFFF]/.test(u) && (u = unescape(encodeURIComponent(u))), u
        }

        function a(u) {
          var e, t = [],
            r = u.length;
          for (e = 0; e < r - 1; e += 2) t.push(parseInt(u.substr(e, 2), 16));
          return String.fromCharCode.apply(String, t)
        }

        function s() {
          this.reset()
        }
        return o(n("hello")), "undefined" == typeof ArrayBuffer || ArrayBuffer.prototype.slice || function() {
          function c(u, e) {
            return (u = 0 | u || 0) < 0 ? Math.max(u + e, 0) : Math.min(u, e)
          }
          ArrayBuffer.prototype.slice = function(u, e) {
            var t, r, n, i, o = this.byteLength,
              a = c(u, o),
              s = o;
            return e !== A && (s = c(e, o)), s < a ? new ArrayBuffer(0) : (t = s - a, r = new ArrayBuffer(t), n = new Uint8Array(r), i = new Uint8Array(this, a, t), n.set(i), r)
          }
        }(), s.prototype.append = function(u) {
          return this.appendBinary(i(u)), this
        }, s.prototype.appendBinary = function(u) {
          this._buff += u, this._length += u.length;
          var e, t = this._buff.length;
          for (e = 64; e <= t; e += 64) c(this._hash, f(this._buff.substring(e - 64, e)));
          return this._buff = this._buff.substring(e - 64), this
        }, s.prototype.end = function(u) {
          var e, t, r = this._buff,
            n = r.length,
            i = [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0];
          for (e = 0; e < n; e += 1) i[e >> 2] |= r.charCodeAt(e) << (e % 4 << 3);
          return this._finish(i, n), t = o(this._hash), u && (t = a(t)), this.reset(), t
        }, s.prototype.reset = function() {
          return this._buff = "", this._length = 0, this._hash = [1732584193, -271733879, -1732584194, 271733878], this
        }, s.prototype.getState = function() {
          return {
            buff: this._buff,
            length: this._length,
            hash: this._hash
          }
        }, s.prototype.setState = function(u) {
          return this._buff = u.buff, this._length = u.length, this._hash = u.hash, this
        }, s.prototype.destroy = function() {
          delete this._hash, delete this._buff, delete this._length
        }, s.prototype._finish = function(u, e) {
          var t, r, n, i = e;
          if (u[i >> 2] |= 128 << (i % 4 << 3), 55 < i)
            for (c(this._hash, u), i = 0; i < 16; i += 1) u[i] = 0;
          t = (t = 8 * this._length).toString(16).match(/(.*?)(.{0,8})$/), r = parseInt(t[2], 16), n = parseInt(t[1], 16) || 0, u[14] = r, u[15] = n, c(this._hash, u)
        }, s.hash = function(u, e) {
          return s.hashBinary(i(u), e)
        }, s.hashBinary = function(u, e) {
          var t = o(n(u));
          return e ? a(t) : t
        }, (s.ArrayBuffer = function() {
          this.reset()
        }).prototype.append = function(u) {
          var e, t, r, n, i, o = (t = this._buff.buffer, r = u, n = !0, (i = new Uint8Array(t.byteLength + r.byteLength)).set(new Uint8Array(t)), i.set(new Uint8Array(r), t.byteLength), n ? i : i.buffer),
            a = o.length;
          for (this._length += u.byteLength, e = 64; e <= a; e += 64) c(this._hash, l(o.subarray(e - 64, e)));
          return this._buff = e - 64 < a ? new Uint8Array(o.buffer.slice(e - 64)) : new Uint8Array(0), this
        }, s.ArrayBuffer.prototype.end = function(u) {
          var e, t, r = this._buff,
            n = r.length,
            i = [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0];
          for (e = 0; e < n; e += 1) i[e >> 2] |= r[e] << (e % 4 << 3);
          return this._finish(i, n), t = o(this._hash), u && (t = a(t)), this.reset(), t
        }, s.ArrayBuffer.prototype.reset = function() {
          return this._buff = new Uint8Array(0), this._length = 0, this._hash = [1732584193, -271733879, -1732584194, 271733878], this
        }, s.ArrayBuffer.prototype.getState = function() {
          var u, e = s.prototype.getState.call(this);
          return e.buff = (u = e.buff, String.fromCharCode.apply(null, new Uint8Array(u))), e
        }, s.ArrayBuffer.prototype.setState = function(u) {
          return u.buff = function(u, e) {
            var t, r = u.length,
              n = new ArrayBuffer(r),
              i = new Uint8Array(n);
            for (t = 0; t < r; t += 1) i[t] = u.charCodeAt(t);
            return e ? i : n
          }(u.buff, !0), s.prototype.setState.call(this, u)
        }, s.ArrayBuffer.prototype.destroy = s.prototype.destroy, s.ArrayBuffer.prototype._finish = s.prototype._finish, s.ArrayBuffer.hash = function(u, e) {
          var t = o(function(u) {
            var e, t, r, n, i, o, a = u.length,
              s = [1732584193, -271733879, -1732584194, 271733878];
            for (e = 64; e <= a; e += 64) c(s, l(u.subarray(e - 64, e)));
            for (u = e - 64 < a ? u.subarray(e - 64) : new Uint8Array(0), t = u.length, r = [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0], e = 0; e < t; e += 1) r[e >> 2] |= u[e] << (e % 4 << 3);
            if (r[e >> 2] |= 128 << (e % 4 << 3), 55 < e)
              for (c(s, r), e = 0; e < 16; e += 1) r[e] = 0;
            return n = (n = 8 * a).toString(16).match(/(.*?)(.{0,8})$/), i = parseInt(n[2], 16), o = parseInt(n[1], 16) || 0, r[14] = i, r[15] = o, c(s, r), s
          }(new Uint8Array(u)));
          return e ? a(t) : t
        }, s
      }()
    }),
    ge = qu(function(t) {
      function s(u, e, t, r) {
        this.resolve = u, this.fn = e, this.self = t || null, this.args = r
      }

      function c() {
        this._s1 = [], this._s2 = []
      }
      t.exports = function(u) {
        var a;

        function e(n, t) {
          var i = new c;

          function r(e, t, r) {
            if (n) {
              n--;
              var u = new a(function(u) {
                u(e.apply(t, r))
              });
              return u.then(o, o), u
            }
            return new a(function(u) {
              i.push(new s(u, e, t, r))
            })
          }

          function o() {
            if (n++, !i.isEmpty()) {
              var u = i.shift();
              u.resolve(r(u.fn, u.self, u.args))
            }
          }
          if ("function" == typeof n) {
            var u = t;
            t = n, n = u
          }
          if ("number" != typeof n) throw new TypeError("Expected throat size to be a number but got " + typeof n);
          if (void 0 !== t && "function" != typeof t) throw new TypeError("Expected throat fn to be a function but got " + typeof t);
          return "function" == typeof t ? function() {
            for (var u = [], e = 0; e < arguments.length; e++) u.push(arguments[e]);
            return r(t, this, u)
          } : function(u) {
            if ("function" != typeof u) throw new TypeError("Expected throat fn to be a function but got " + typeof u);
            for (var e = [], t = 1; t < arguments.length; t++) e.push(arguments[t]);
            return r(u, this, e)
          }
        }
        if (1 === arguments.length && "function" == typeof u) return a = u, e;
        if ("function" != typeof(a = t.exports.Promise)) throw new Error("You must provide a Promise polyfill for this library to work in older environments");
        return e(u, arguments[1])
      }, "function" == typeof Promise && (t.exports.Promise = Promise), c.prototype.push = function(u) {
        this._s1.push(u)
      }, c.prototype.shift = function() {
        var u = this._s2;
        if (0 === u.length) {
          var e = this._s1;
          if (0 === e.length) return;
          this._s1 = u, u = this._s2 = e.reverse()
        }
        return u.pop()
      }, c.prototype.isEmpty = function() {
        return !this._s1.length && !this._s2.length
      }
    }),
    be = 1 / 0,
    we = 9007199254740991,
    ke = 1.7976931348623157e308,
    xe = NaN,
    _e = "[object Function]",
    Se = "[object GeneratorFunction]",
    Te = "[object Symbol]",
    Pe = /^\s+|\s+$/g,
    Oe = /^[-+]0x[0-9a-f]+$/i,
    je = /^0b[01]+$/i,
    ze = /^0o[0-7]+$/i,
    Ne = /^(?:0|[1-9]\d*)$/,
    qe = parseInt,
    Ie = Object.prototype.toString,
    Re = Math.ceil,
    Ue = Math.max;

  function Me(u) {
    var e = typeof u;
    return !!u && ("object" == e || "function" == e)
  }

  function Le(u) {
    return u ? (u = function(u) {
      if ("number" == typeof u) return u;
      if (e = u, "symbol" == typeof e || (t = e) && "object" == typeof t && Ie.call(e) == Te) return xe;
      var e, t;
      if (Me(u)) {
        var r = "function" == typeof u.valueOf ? u.valueOf() : u;
        u = Me(r) ? r + "" : r
      }
      if ("string" != typeof u) return 0 === u ? u : +u;
      u = u.replace(Pe, "");
      var n = je.test(u);
      return n || ze.test(u) ? qe(u.slice(2), n ? 2 : 8) : Oe.test(u) ? xe : +u
    }(u)) === be || u === -be ? (u < 0 ? -1 : 1) * ke : u == u ? u : 0 : 0 === u ? u : 0
  }
  var $e, He = function(u, e, t) {
      return t && "number" != typeof t && function(u, e, t) {
          if (!Me(t)) return !1;
          var r, n, i, o, a, s, c, A, f = typeof e;
          return !!("number" == f ? null != (a = t) && "number" == typeof(A = a.length) && -1 < A && A % 1 == 0 && A <= we && (c = Me(s = a) ? Ie.call(s) : "") != _e && c != Se && (i = e, (o = null == (o = t.length) ? we : o) && ("number" == typeof i || Ne.test(i)) && -1 < i && i % 1 == 0 && i < o) : "string" == f && e in t) && ((r = t[e]) === (n = u) || r != r && n != n)
        }(u, e, t) && (e = t = void 0), u = Le(u), void 0 === e ? (e = u, u = 0) : e = Le(e),
        function(u, e, t, r) {
          for (var n = -1, i = Ue(Re((e - u) / (t || 1)), 0), o = Array(i); i--;) o[r ? i : ++n] = u, u += t;
          return o
        }(u, e, t = void 0 === t ? u < e ? 1 : -1 : Le(t), $e)
    },
    Xe = "Expected a function",
    Ve = NaN,
    We = "[object Symbol]",
    Je = /^\s+|\s+$/g,
    Ge = /^[-+]0x[0-9a-f]+$/i,
    Qe = /^0b[01]+$/i,
    Ze = /^0o[0-7]+$/i,
    Ke = parseInt,
    Ye = "object" == typeof Nu && Nu && Nu.Object === Object && Nu,
    ut = "object" == typeof self && self && self.Object === Object && self,
    et = Ye || ut || Function("return this")(),
    tt = Object.prototype.toString,
    rt = Math.max,
    nt = Math.min,
    it = function() {
      return et.Date.now()
    };

  function ot(r, n, u) {
    var i, o, a, s, c, A, f = 0,
      l = !1,
      p = !1,
      e = !0;
    if ("function" != typeof r) throw new TypeError(Xe);

    function E(u) {
      var e = i,
        t = o;
      return i = o = void 0, f = u, s = r.apply(t, e)
    }

    function d(u) {
      var e = u - A;
      return void 0 === A || n <= e || e < 0 || p && a <= u - f
    }

    function h() {
      var u, e, t = it();
      if (d(t)) return C(t);
      c = setTimeout(h, (e = n - ((u = t) - A), p ? nt(e, a - (u - f)) : e))
    }

    function C(u) {
      return c = void 0, e && i ? E(u) : (i = o = void 0, s)
    }

    function t() {
      var u, e = it(),
        t = d(e);
      if (i = arguments, o = this, A = e, t) {
        if (void 0 === c) return f = u = A, c = setTimeout(h, n), l ? E(u) : s;
        if (p) return c = setTimeout(h, n), E(A)
      }
      return void 0 === c && (c = setTimeout(h, n)), s
    }
    return n = st(n) || 0, at(u) && (l = !!u.leading, a = (p = "maxWait" in u) ? rt(st(u.maxWait) || 0, n) : a, e = "trailing" in u ? !!u.trailing : e), t.cancel = function() {
      void 0 !== c && clearTimeout(c), i = A = o = c = void(f = 0)
    }, t.flush = function() {
      return void 0 === c ? s : C(it())
    }, t
  }

  function at(u) {
    var e = typeof u;
    return !!u && ("object" == e || "function" == e)
  }

  function st(u) {
    if ("number" == typeof u) return u;
    if ("symbol" == typeof(e = u) || (t = e) && "object" == typeof t && tt.call(e) == We) return Ve;
    var e, t;
    if (at(u)) {
      var r = "function" == typeof u.valueOf ? u.valueOf() : u;
      u = at(r) ? r + "" : r
    }
    if ("string" != typeof u) return 0 === u ? u : +u;
    u = u.replace(Je, "");
    var n = Qe.test(u);
    return n || Ze.test(u) ? Ke(u.slice(2), n ? 2 : 8) : Ge.test(u) ? Ve : +u
  }
  var ct, At = function(u, e, t) {
      var r = !0,
        n = !0;
      if ("function" != typeof u) throw new TypeError(Xe);
      return at(t) && (r = "leading" in t ? !!t.leading : r, n = "trailing" in t ? !!t.trailing : n), ot(u, e, {
        leading: r,
        maxWait: e,
        trailing: n
      })
    },
    ft = pe.context("api-client"),
    lt = function(u) {
      return u && "https://" + u
    },
    pt = function(u) {
      return u.customName || u.name
    },
    Et = function(u, e, t) {
      var r, n, i, o = File.prototype.slice || File.prototype.mozSlice || File.prototype.webkitSlice,
        a = (r = u, {
          start: i = e * (n = t).partSize,
          end: Math.min(i + n.partSize, r.size)
        }),
        s = a.start,
        c = a.end;
      return o.call(u, s, c)
    },
    dt = function(u) {
      return window.btoa(De.ArrayBuffer.hash(u, !0))
    },
    ht = function(e, t) {
      var r = new FormData;
      return Object.keys(e).forEach(function(u) {
        r.append(u, e[u])
      }), Object.keys(t.store).forEach(function(u) {
        r.append(u, t.store[u])
      }), r
    },
    Ct = function(u, e, t, r, n, i) {
      var o = n.debug ? n.host : lt(u.location_url) || n.host,
        a = u.location_region,
        s = oe({
          apikey: n.apikey,
          part: e.number + 1,
          size: t,
          md5: r
        }, u);
      (!0 === n.intelligent || e.intelligentOverride) && (s.multipart = !0, s.offset = i);
      var c = ht(s, n);
      return Ku("post", o + "/multipart/upload").set("Filestack-Upload-Region", a).timeout(n.timeout).send(c)
    },
    yt = function(u, e, t, r) {
      var n = r.fakeS3 ? r.host + "/fakeS3" : e.url,
        i = Math.max(r.timeout, u.byteLength / 100),
        o = Zu.put(n).set(e.headers).timeout(i).send(u);
      return t ? o.on("progress", t) : o
    },
    Ft = function(c, A, t) {
      ft("calling upload with config:", A, "file: ", c);
      var f = {
          progressTick: null,
          paused: !1,
          failed: !1,
          done: !1,
          retries: {}
        },
        u = Math.ceil(c.size / A.partSize),
        s = He(0, u).map(function(u) {
          return {
            size: null,
            number: u,
            loaded: 0,
            request: null,
            intelligentOverride: !1,
            chunks: [],
            chunkSize: A.intelligentChunkSize ? A.intelligentChunkSize : ve.mobile ? 1048576 : 8388608
          }
        }),
        r = function() {
          A.onProgress && (f.progressTick = setInterval(function() {
            var u = s.map(function(u) {
                return u.loaded
              }),
              e = s.map(function(u) {
                return u.chunks
              }).reduce(function(u, e) {
                return u.concat(e)
              }, []).map(function(u) {
                return u.loaded
              }).filter(function(u) {
                return u
              }),
              t = u;
            (!0 === A.intelligent && (t = e), "fallback" === A.intelligent) && (t = s.filter(function(u) {
              return !u.intelligentOverride
            }).map(function(u) {
              return u.loaded
            }).concat(e));
            var r, n = t.reduce(function(u, e) {
                return u + e
              }, 0),
              i = (r = n, Math.round(r / c.size * 100)),
              o = {
                totalBytes: n,
                totalPercent: i
              },
              a = f.previousPayload || {};
            100 !== i ? (i < a.totalPercent && (o.totalBytes = a.totalBytes, o.totalPercent = a.totalPercent), A.onProgress(o), f.previousPayload = o) : clearInterval(f.progressTick)
          }, A.progressInterval))
        },
        i = function() {
          if (A.onProgress) {
            var u = {
              totalBytes: c.size,
              totalPercent: 100
            };
            A.onProgress(u), clearInterval(f.progressTick)
          }
        };
      t.pause = function() {
        f.failed || f.done || f.paused || (ft("Upload flow paused"), f.paused = !0, clearInterval(f.progressTick))
      }, t.resume = function() {
        f.failed || f.done || !f.paused || (ft("Upload flow resumed"), f.paused = !1, r()), f.paused && f.done && (f.paused = !1, i())
      };
      var l = new Promise(function(u, e) {
          t.cancel = function() {
            f.failed || f.done || (clearInterval(f.progressTick), s.forEach(function(u) {
              u.request && u.request.abort(), delete u.request, u.chunks.forEach(function(u) {
                u.request && u.request.abort(), delete u.request
              })
            }), f.failed = !0, e(new Error("Upload cancelled")))
          }
        }),
        o = function(r) {
          return function() {
            for (var u = arguments.length, t = Array(u), e = 0; e < u; e++) t[e] = arguments[e];
            return f.failed ? Promise.resolve() : f.paused ? new Promise(function(e) {
              ! function u() {
                f.paused ? setTimeout(function() {
                  return u()
                }, 100) : e(r.apply(void 0, t))
              }()
            }) : r.apply(void 0, t)
          }
        },
        a = function(t, r, n) {
          var i = 3 < arguments.length && void 0 !== arguments[3] ? arguments[3] : {},
            o = f.retries[t] || 0,
            a = Math.min(A.retryMaxTime, 1e3 * Math.pow(A.retryFactor, o)),
            u = new Promise(function(u, e) {
              o === A.retry || f.failed || 400 === n.status && "PUT" !== n.method || 401 === n.status || 403 === n.status || 404 === n.status || i.chunkSize <= 32768 ? (clearInterval(f.progressTick), f.failed = !0, e(new Error("Upload for " + pt(c) + " failed. " + n.message))) : setTimeout(function() {
                f.failed ? u() : (!0 === A.intelligent || i.intelligentOverride) && (n.crossDomain && "PUT" === n.method || 400 === n.status && "PUT" === n.method || n.timeout) ? i.chunkSize <= 32768 ? u() : (i.chunkSize /= 2, A.onRetry && A.onRetry({
                  location: t,
                  parts: s,
                  filename: pt(c),
                  chunkSize: i.chunkSize
                }), u(r())) : ("fallback" === A.intelligent && (n.crossDomain && "PUT" === n.method || 400 === n.status && "PUT" === n.method || n.timeout) ? (i.intelligentOverride = !0, i.chunkSize === A.partSize && (i.chunkSize /= 2), A.onRetry && A.onRetry({
                  location: t,
                  parts: s,
                  filename: pt(c),
                  chunkSize: i.chunkSize
                })) : (o += 1, f.retries[t] = o, A.onRetry && A.onRetry({
                  location: t,
                  parts: s,
                  filename: pt(c),
                  attempt: o
                })), u(r()))
              }, a)
            });
          return Promise.race([l, u])
        },
        p = function(t, s) {
          var r, u = (r = Et(c, t.number, A), new Promise(function(u, e) {
            var t = void 0;
            window.File && window.FileReader && window.Blob ? t = new FileReader : e(new Error("The File APIs are not fully supported by your browser")), t.onloadend = u, t.onerror = e, t.readAsArrayBuffer(r)
          })).then(function(u) {
            return t.buffer = !0 === A.intelligent || t.intelligentOverride ? u.target.result : new Uint8Array(u.target.result), t.size = t.buffer.byteLength, 0 === t.size ? (f.failed = !0, Promise.reject(new Error("Upload aborted due to empty chunk."))) : t
          });
          return !0 === A.intelligent || t.intelligentOverride ? u.then(function(a) {
            var u = o(function(u) {
              return function(t, u, r) {
                t.buf = new Uint8Array(t.buf);
                var e = dt(t.buf);
                return Ct(u, t.part, t.size, e, r, t.offset).then(function(u) {
                  var e = void 0;
                  return r.onProgress && (e = At(function(u) {
                    0 < u.loaded && (t.loaded = u.loaded)
                  }, r.progressInterval)), delete u.xhr, delete u.req, t.request = yt(t.buf, u.body, e, r), t.request
                }).then(function(u) {
                  return delete t.buf, delete t.request, delete u.req, delete u.xhr, u
                })
              }(u, s, A)
            });
            return a.chunks = function(u, e) {
              for (var t = 0, r = [], n = ArrayBuffer.prototype.slice; t < u.size;) {
                var i = n.call(u.buffer, t, t + e),
                  o = {
                    buf: i,
                    offset: t,
                    size: i.byteLength,
                    part: u
                  };
                r.push(o), t += e
              }
              return r
            }(a, a.chunkSize), Promise.race([l, Promise.all(a.chunks.map(ge(A.concurrency, u)))]).then(function() {
              return delete a.buffer, a.loaded = a.size, (u = c, e = a, t = s, r = A, n = r.debug ? r.host : lt(t.location_url) || r.host, i = oe({
                apikey: r.apikey,
                part: e.number + 1,
                size: u.size
              }, t), o = ht(i, r), Ku("post", n + "/multipart/commit").timeout(r.timeout).send(o)).then(function(u) {
                return 206 === u.status ? Promise.reject(new Error("FII chunks missing")) : u
              });
              var u, e, t, r, n, i, o
            })
          }) : u.then(function(u) {
            var e = dt(u.buffer);
            return u.request = Ct(s, u, u.size, e, A), u.request
          }).then(function(u) {
            var e = void 0;
            return A.onProgress && (e = At(function(u) {
              0 < u.loaded && (t.loaded = u.loaded)
            }, A.progressInterval)), t.request = yt(t.buffer, u.body, e, A), t.request
          }).then(function(u) {
            if (delete t.buffer, delete t.request, delete u.req, delete u.xhr, void 0 === u.headers.etag) {
              f.failed = !0;
              return Promise.reject(new Error("Response from S3 is missing ETag header. Please expose it in your bucket CORS config."))
            }
            return u
          })
        };
      return Promise.race([l, function e() {
        return function(u, e) {
          var t = {
            apikey: e.apikey,
            filename: pt(u),
            mimetype: u.type || "application/octet-stream",
            size: u.size
          };
          e.policy && e.signature && (t.policy = e.policy, t.signature = e.signature), e.intelligent && (t.multipart = !0);
          var r = ht(t, e);
          return Ku("post", e.host + "/multipart/start").timeout(e.timeout).send(r)
        }(c, A).catch(function(u) {
          return a("start", e, u)
        })
      }()]).then(function(u) {
        var n = u.body;
        r();
        var t = o(function(e) {
            return p(e, n).catch(function(u) {
              return e.loaded = 0, e.chunks = [], a("upload part " + (e.number + 1), function() {
                return t(e)
              }, u, e)
            })
          }),
          e = Promise.all(s.map(ge(A.concurrency, t)));
        return Promise.race([l, e]).then(function(u) {
          var e, t = void 0;
          !0 !== A.intelligent && (e = u.map(function(u) {
            return u.headers && u.headers.etag
          }), t = e.map(function(u, e) {
            return e + 1 + ":" + u
          }).join(";"));
          var r = o(function() {
            return function(u, e, t, r) {
              var n = r.debug ? r.host : lt(t.location_url) || r.host,
                i = t.location_region,
                o = oe({
                  apikey: r.apikey,
                  size: u.size,
                  filename: u.customName || u.name,
                  mimetype: u.type || "application/octet-stream",
                  parts: e
                }, t);
              r.intelligent && (o.multipart = !0, delete o.parts);
              var a = ht(o, r);
              return Ku("post", n + "/multipart/complete").set("Filestack-Upload-Region", i).timeout(r.timeout).send(a)
            }(c, t, n, A).then(function(u) {
              return 202 === u.status ? new Promise(function(u) {
                setTimeout(function() {
                  return u(r())
                }, 1e3)
              }) : (f.done = !0, f.paused || i(), u.body)
            }).catch(function(u) {
              return a("complete", r, u)
            })
          });
          return r()
        })
      })
    },
    mt = function(u, e) {
      var t, r = 2 < arguments.length && void 0 !== arguments[2] ? arguments[2] : {},
        n = 3 < arguments.length && void 0 !== arguments[3] ? arguments[3] : {},
        i = 4 < arguments.length && void 0 !== arguments[4] ? arguments[4] : {};
      if ("string" == typeof e && (e = function(u) {
          var e = 1 < arguments.length && void 0 !== arguments[1] ? arguments[1] : 512,
            t = void 0,
            r = "";
          0 <= u.split(",")[0].indexOf("base64") && (t = u.split(",")[1]), void 0 !== t && (r = u.split(",")[0].split(":")[1].split(";")[0], u = decodeURI(t));
          for (var n = atob(u), i = [], o = 0; o < n.length; o += e) {
            for (var a = n.slice(o, o + e), s = new Array(a.length), c = 0; c < a.length; c += 1) s[c] = a.charCodeAt(c);
            var A = new Uint8Array(s);
            i.push(A)
          }
          return new Blob(i, {
            type: r
          })
        }(e)), !e || "[object File]" !== (t = e).toString() && "[object Blob]" !== t.toString()) return Promise.reject(new TypeError("File parameter is not a valid Blob or File instance"));
      if (void 0 !== e.size && 0 === e.size) return Promise.reject(new Error("File has a size of 0."));
      var o = [{
          name: "host",
          type: zu.String
        }, {
          name: "partSize",
          type: zu.Number
        }, {
          name: "concurrency",
          type: zu.refinement(zu.Integer, function(u) {
            return 0 < u
          })
        }, {
          name: "onProgress",
          type: zu.Function
        }, {
          name: "progressInterval",
          type: zu.Integer
        }, {
          name: "onRetry",
          type: zu.Function
        }, {
          name: "retry",
          type: zu.Integer
        }, {
          name: "retryFactor",
          type: zu.Integer
        }, {
          name: "retryMaxTime",
          type: zu.Integer
        }, {
          name: "timeout",
          type: zu.Integer
        }, {
          name: "debug",
          type: zu.Bool
        }, {
          name: "intelligent",
          type: zu.union([zu.Bool, zu.enums.of("fallback")])
        }, {
          name: "intelligentChunkSize",
          type: zu.Number
        }, {
          name: "fakeS3",
          type: zu.Bool
        }],
        a = [{
          name: "location",
          type: zu.enums.of("s3 gcs rackspace azure dropbox")
        }, {
          name: "region",
          type: zu.String
        }, {
          name: "path",
          type: zu.String
        }, {
          name: "container",
          type: zu.String
        }, {
          name: "filename",
          type: zu.String
        }, {
          name: "access",
          type: zu.enums.of("public private")
        }];
      if (se("upload (options)", o, r), se("upload (storeOptions)", a, n), n.filename) e.customName = n.filename;
      else if (void 0 === e.name)
        if (e.type) {
          var s = e.type.split("/").pop();
          e.customName = "untitled." + s
        } else e.customName = "untitled";
      delete n.filename, void 0 === n.location && (n.location = "s3"), r.intelligent && (r.partSize = 8388608);
      var c = Ae(n, "store"),
        A = oe({
          host: u.urls.uploadApiUrl,
          apikey: u.apikey,
          policy: u.policy,
          signature: u.signature,
          partSize: 6291456,
          concurrency: 3,
          onProgress: null,
          progressInterval: 1e3,
          onRetry: null,
          retry: 10,
          retryFactor: 2,
          retryMaxTime: 1e4,
          store: c,
          timeout: 12e4,
          debug: !1
        }, r);
      return Ft(e, A, i)
    },
    Bt = function(u, e, t) {
      if (!u || "string" != typeof u) throw new Error("apikey is required to initialize the Filestack client");
      var r, n = oe({}, e, {
        apikey: u,
        urls: (r = i, t && Object.keys(i).forEach(function(u) {
          r[u] = i[u].replace("filestackapi.com", t)
        }), r)
      });
      return {
        apikey: u,
        cname: t,
        getSecurity: function() {
          return {
            policy: n.policy,
            signature: n.signature
          }
        },
        setSecurity: function(u) {
          if (u && (!u.policy || !u.signature)) throw new Error("signature and policy are both required for security");
          return n.policy = u.policy, n.signature = u.signature, n
        },
        storeURL: function(u, e, t) {
          return function(e, u) {
            var t = 2 < arguments.length && void 0 !== arguments[2] ? arguments[2] : {},
              r = 3 < arguments.length && void 0 !== arguments[3] ? arguments[3] : {},
              n = e.urls.storeApiUrl;
            if (!u || "string" != typeof u) throw new Error("url is required for storeURL");
            var i = [{
              name: "filename",
              type: zu.String
            }, {
              name: "location",
              type: zu.enums.of("s3 gcs rackspace azure dropbox")
            }, {
              name: "mimetype",
              type: zu.String
            }, {
              name: "path",
              type: zu.String
            }, {
              name: "region",
              type: zu.String
            }, {
              name: "container",
              type: zu.String
            }, {
              name: "access",
              type: zu.enums.of("public private")
            }];
            se("storeURL", i, t);
            var o = t.location || "s3",
              a = ce(t);
            e.policy && e.signature && (a.policy = e.policy, a.signature = e.signature);
            var s = n + "/" + o,
              c = new FormData;
            return c.append("url", u), new Promise(function(n, i) {
              var u = Zu.post(s).query({
                key: e.apikey
              }).query(a).send(c).end(function(u, e) {
                if (u) i(u);
                else if (e.body && e.body.url) {
                  var t = e.body.url.split("/").pop(),
                    r = oe({}, e.body, {
                      handle: t
                    });
                  n(r)
                } else n(e.body)
              });
              r.cancel = function() {
                u.abort(), i(new Error("Upload cancelled"))
              }
            })
          }(n, u, e, t)
        },
        retrieve: function(u, e) {
          return function(u, e) {
            var t = 2 < arguments.length && void 0 !== arguments[2] ? arguments[2] : {},
              r = u.urls.fileApiUrl;
            if (!e || "string" != typeof e) throw new Error("handle is required for retrieve");
            var n = [{
              name: "metadata",
              type: zu.Boolean
            }, {
              name: "head",
              type: zu.Boolean
            }, {
              name: "cache",
              type: zu.Boolean
            }, {
              name: "dl",
              type: zu.Boolean
            }, {
              name: "extension",
              type: zu.String
            }];
            se("retrieve", n, t);
            var i = r + "/" + e,
              o = ce(t);
            return o.extension && (i += "+" + o.extension, delete o.extension), o.metadata && (i += "/metadata"), u.policy && u.signature && (o.policy = u.policy, o.signature = u.signature), o.head ? (delete o.head, new Promise(function(t, r) {
              Zu.head(i).query(o).end(function(u, e) {
                u ? r(u) : t(e.headers)
              })
            })) : new Promise(function(t, r) {
              var u = o.metadata ? "json" : "blob";
              delete o.metadata, Zu.get(i).query(o).responseType(u).end(function(u, e) {
                u ? r(u) : t(e.body)
              })
            })
          }(n, u, e)
        },
        remove: function(u, e) {
          return function(u, e) {
            var t = u.urls.fileApiUrl;
            if (!e || "string" != typeof e) throw new Error("handle is required for remove");
            if (!u.policy || !u.signature) throw new Error("security policy and signature are required for remove");
            var n = t + "/" + e;
            return new Promise(function(t, r) {
              Zu.delete(n).query({
                key: u.apikey
              }).query({
                policy: u.policy,
                signature: u.signature
              }).end(function(u, e) {
                u ? r(u) : t(e)
              })
            })
          }(n, u)
        },
        preview: function(u, e) {
          return de(n, u, e)
        },
        overwrite: function(u, e) {
          return function(u, i) {
            var e = u.urls.fileApiUrl;
            if (!i || "string" != typeof i) throw new Error("handle is required for overwrite");
            if (!u.policy || !u.signature) throw new Error("security policy and signature are required for overwrite");
            var t = e + "/" + i;
            return new Promise(function(r, n) {
              Zu.post(t).query({
                key: u.apikey
              }).query({
                policy: u.policy,
                signature: u.signature
              }).end(function(u, e) {
                if (u) n(u);
                else {
                  var t = oe({}, e.body, {
                    handle: i
                  });
                  r(t)
                }
              })
            })
          }(n, u)
        },
        metadata: function(u, e) {
          return function(u, e) {
            var t = 2 < arguments.length && void 0 !== arguments[2] ? arguments[2] : {},
              r = u.urls.fileApiUrl;
            if (!e || "string" != typeof e) throw new Error("handle is required for metadata");
            var n = [{
              name: "size",
              type: zu.Boolean
            }, {
              name: "mimetype",
              type: zu.Boolean
            }, {
              name: "filename",
              type: zu.Boolean
            }, {
              name: "width",
              type: zu.Boolean
            }, {
              name: "height",
              type: zu.Boolean
            }, {
              name: "uploaded",
              type: zu.Boolean
            }, {
              name: "writeable",
              type: zu.Boolean
            }, {
              name: "cloud",
              type: zu.Boolean
            }, {
              name: "sourceUrl",
              type: zu.Boolean
            }, {
              name: "md5",
              type: zu.Boolean
            }, {
              name: "sha1",
              type: zu.Boolean
            }, {
              name: "sha224",
              type: zu.Boolean
            }, {
              name: "sha256",
              type: zu.Boolean
            }, {
              name: "sha384",
              type: zu.Boolean
            }, {
              name: "sha512",
              type: zu.Boolean
            }, {
              name: "location",
              type: zu.Boolean
            }, {
              name: "path",
              type: zu.Boolean
            }, {
              name: "container",
              type: zu.Boolean
            }, {
              name: "exif",
              type: zu.Boolean
            }];
            se("retrieve", n, t);
            var i = ce(Ae(t));
            u.policy && u.signature && (i.policy = u.policy, i.signature = u.signature);
            var o = r + "/" + e + "/metadata";
            return new Promise(function(t, r) {
              Zu.get(o).query(i).end(function(u, e) {
                u ? r(u) : t(e.body)
              })
            })
          }(n, u, e)
        },
        transform: function(u, e) {
          return function(u, e, o) {
            var t = u.urls.processApiUrl,
              r = Object.keys(Be),
              a = Object.keys(o);
            a.forEach(function(u) {
              if (r.indexOf(u) < 0) throw new Error("Invalid option specified: " + u + " is not a valid transform option.")
            });
            var n = function u() {
              var e = 0 < arguments.length && void 0 !== arguments[0] ? arguments[0] : [],
                t = 1 < arguments.length && void 0 !== arguments[1] ? arguments[1] : 0;
              if (t === a.length) return e;
              var r = a[t],
                n = o[r],
                i = t + 1;
              return u((0, Be[r])(e, n), i)
            };
            if (u.policy && u.signature) {
              var i = "security=policy:" + u.policy + ",signature:" + u.signature;
              return t + "/" + u.apikey + "/" + i + "/" + n().join("/") + "/" + e
            }
            var s = t + "/" + u.apikey;
            return n().length ? s + "/" + n().join("/") + "/" + e : e
          }(n, u, e)
        },
        upload: function(u, e, t, r) {
          return mt(n, u, e, t, r)
        },
        prefetch: function() {
          return e = (u = n).urls.cloudApiUrl, t = {
            apikey: u.apikey
          }, Zu.get(e + "/prefetch").timeout(5e3).query(t).then(function(u) {
            return u.body
          });
          var u, e, t
        },
        cloud: function() {
          return s = (a = n).urls.cloudApiUrl, {
            list: function(u) {
              var e = 1 < arguments.length && void 0 !== arguments[1] ? arguments[1] : {},
                n = {
                  apikey: a.apikey,
                  clouds: u
                };
              return a.policy && a.signature && (n.policy = a.policy, n.signature = a.signature), Ee("cloud.list() called:", n), new Promise(function(t, r) {
                var u = Zu.post(s + "/folder/list").send(n).withCredentials().end(function(u, e) {
                  u ? r(u) : (Ee("cloud.list() responded:", e.body), t(e.body))
                });
                e.cancel = function() {
                  u.abort(), r(new Error("Cancelled"))
                }
              })
            },
            store: function(n, u) {
              var e = 2 < arguments.length && void 0 !== arguments[2] ? arguments[2] : {},
                t = 3 < arguments.length && void 0 !== arguments[3] ? arguments[3] : {},
                i = 4 < arguments.length && void 0 !== arguments[4] ? arguments[4] : {};
              Ee("cloud.store() called:", n, u, e);
              var r = [{
                name: "location",
                type: zu.enums.of("s3 gcs rackspace azure dropbox")
              }, {
                name: "region",
                type: zu.String
              }, {
                name: "path",
                type: zu.String
              }, {
                name: "container",
                type: zu.String
              }, {
                name: "access",
                type: zu.enums.of("public private")
              }];
              se("cloud.store", r, e), void 0 === e.location && (e.location = "s3");
              var o = {
                apikey: a.apikey,
                clouds: ie({}, n, {
                  path: u,
                  store: oe({}, ce(e))
                })
              };
              return "customsource" === n && t.customSourcePath && (o.clouds.customsource.customSourcePath = t.customSourcePath), "customsource" === n && t.customSourceContainer && (o.clouds.customsource.customSourceContainer = t.customSourceContainer), a.policy && a.signature && (o.policy = a.policy, o.signature = a.signature), new Promise(function(t, r) {
                var u = Zu.post(s + "/store/").send(o).withCredentials().end(function(u, e) {
                  u ? r(u) : (Ee("cloud.store() responded:", e.body), e.body[n] ? t(e.body[n]) : t(e.body))
                });
                i.cancel = function() {
                  u.abort(), r(new Error("Cancelled"))
                }
              })
            },
            link: function(n, u) {
              var e = 2 < arguments.length && void 0 !== arguments[2] ? arguments[2] : {},
                i = 3 < arguments.length && void 0 !== arguments[3] ? arguments[3] : {};
              Ee("cloud.link() called:", n, u);
              var o = {
                apikey: a.apikey,
                clouds: ie({}, n, {
                  path: u
                })
              };
              return "customsource" === n && e.customSourcePath && (o.clouds.customsource.customSourcePath = e.customSourcePath), "customsource" === n && e.customSourceContainer && (o.clouds.customsource.customSourceContainer = e.customSourceContainer), a.policy && a.signature && (o.policy = a.policy, o.signature = a.signature), new Promise(function(t, r) {
                var u = Zu.post(s + "/link/").send(o).withCredentials().end(function(u, e) {
                  u ? r(u) : (Ee("cloud.link() responded:", e.body), e.body[n] ? t(e.body[n]) : t(e.body))
                });
                i.cancel = function() {
                  u.abort(), r(new Error("Cancelled"))
                }
              })
            },
            metadata: function(u) {
              var e = {
                apikey: a.apikey,
                url: u
              };
              return a.policy && a.signature && (e.policy = a.policy, e.signature = a.signature), new Promise(function(t, r) {
                Zu.post(s + "/metadata").send(e).end(function(u, e) {
                  u ? r(u) : (Ee("cloud.metadata() responded:", e.body), t(e.body))
                })
              })
            },
            logout: function(u) {
              Ee("cloud.logout() called:", u);
              var e = {
                apikey: a.apikey
              };
              return u && (e.clouds = ie({}, u, {})), new Promise(function(t, r) {
                Zu.post(s + "/auth/logout/").send(e).withCredentials().end(function(u, e) {
                  u ? r(u) : (Ee("cloud.logout() responded:", e.body), t(e.body))
                })
              })
            },
            tokInit: function(u) {
              if ("video" !== u && "audio" !== u) throw new Error("Type must be one of video or audio.");
              return Zu.post(s + "/recording/" + u + "/init")
            },
            tokStart: function(u, e, t) {
              if ("video" !== u && "audio" !== u) throw new Error("Type must be one of video or audio.");
              var r = {
                apikey: e,
                session_id: t
              };
              return Zu.post(s + "/recording/" + u + "/start").send(r)
            },
            tokStop: function(u, e, t, r) {
              if ("video" !== u && "audio" !== u) throw new Error("Type must be one of video or audio.");
              var n = {
                apikey: e,
                session_id: t,
                archive_id: r
              };
              return Zu.post(s + "/recording/" + u + "/stop").send(n)
            }
          };
          var a, s
        }
      }
    },
    vt = "function" == typeof Symbol && "symbol" == typeof Symbol.iterator ? function(u) {
      return typeof u
    } : function(u) {
      return u && "function" == typeof Symbol && u.constructor === Symbol && u !== Symbol.prototype ? "symbol" : typeof u
    },
    Dt = (ct = void 0, "object" === ("undefined" == typeof window ? "undefined" : vt(window)) && ((ct = window.filestackInternals) || (ct = {}, window.filestackInternals = ct), ct.loader || (ct.loader = {
      modules: {}
    })), ct),
    gt = Dt && Dt.loader.modules,
    bt = function(r, n) {
      var i = gt[r];
      if (i || (gt[r] = {}, i = gt[r]), i.instance) return Promise.resolve(i.instance);
      if (i.promise) return i.promise;
      var u = new Promise(function(e, t) {
        ! function u() {
          "complete" === document.readyState ? function() {
            i.resolvePromise = e;
            var u = document.createElement("script");
            u.src = r, u.onerror = t, n && (u.id = n), document.body.appendChild(u)
          }() : setTimeout(u, 50)
        }()
      });
      return i.promise = u
    },
    wt = {
      picker: "__filestack-picker-module"
    },
    kt = Object.assign || function(u) {
      for (var e = 1; e < arguments.length; e++) {
        var t = arguments[e];
        for (var r in t) Object.prototype.hasOwnProperty.call(t, r) && (u[r] = t[r])
      }
      return u
    };
  return {
    version: "0.11.5",
    init: function(u, e, t) {
      var n = Bt(u, e, t),
        r = {
          picker: "https://static." + (t || "filestackapi.com") + "/picker/v3/picker-0.12.11.js"
        };
      return {
        getSecurity: function() {
          return n.getSecurity()
        },
        setSecurity: function(u) {
          return n.setSecurity(u)
        },
        cropFiles: function(u, e) {
          var t = kt({}, e, {
            cropFiles: u
          });
          return bt(r.picker, wt.picker).then(function(u) {
            return u(n, t)
          })
        },
        makeDropPane: function(u, e) {
          var t = kt({}, e, {
            dropPane: u
          });
          bt(r.picker, wt.picker).then(function(u) {
            u(n, t)
          })
        },
        pick: function(e) {
          return bt(r.picker, wt.picker).then(function(u) {
            return u(n, e)
          })
        },
        storeURL: function(u, e) {
          return n.storeURL(u, e)
        },
        transform: function(u, e) {
          return n.transform(u, e)
        },
        upload: function(u, e, t, r) {
          return n.upload(u, e, t, r)
        },
        retrieve: function(u, e) {
          return n.retrieve(u, e)
        },
        remove: function(u) {
          return n.remove(u)
        },
        metadata: function(u, e) {
          return n.metadata(u, e)
        },
        preview: function(u, e) {
          return n.preview(u, e)
        },
        logout: function() {
          return n.cloud().logout()
        }
      }
    }
  }
});
//# sourceMappingURL=filestack.js.map