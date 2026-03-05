{{/*
Create chart name and version as used by the chart label.
*/}}
{{- define "chart" -}}
{{- printf "%s-%s" .Chart.Name .Chart.Version | replace "+" "_" | trunc 63 | trimSuffix "-" }}
{{- end }}

{{/*
manual operation labels
*/}}
{{- define "app.labels" -}}
helm.sh/chart: {{ include "chart" . }}
app: {{ .Values.app.name }}
part-of: debug
{{- end }}

{{/*
manual operation Selector labels
*/}}
{{- define "app.selectorLabels" -}}
app: {{ .Values.app.name }}
{{- end }}
