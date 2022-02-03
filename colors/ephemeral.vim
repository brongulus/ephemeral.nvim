lua << EOF
package.loaded['ephemeral'] = nil
package.loaded['ephemeral.util'] = nil
package.loaded['ephemeral.colors'] = nil
package.loaded['ephemeral.theme'] = nil
package.loaded['ephemeral.functions'] = nil

require('ephemeral').set()
EOF
