local k = (import 'ksonnet-util/kausal.libsonnet');

{
  _config:: {
    name: 'Константин Арефьев',
    namespace: std.extVar('qbec.io/defaultNs'),

    container: {
      requests: { cpu: '10m', memory: '100Mi' },
      limits: { cpu: '200m', memory: '200Mi' },
    },
  },

  local serviceAccount = k.core.v1.serviceAccount,

  serviceAccount:
    serviceAccount.new($._config.name) +
    serviceAccount.mixin.metadata.withNamespace($._config.namespace),
}
