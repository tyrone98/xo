{{- $table := (.Table.TableName) -}}
{{- if .Comment -}}
// {{ .Comment }}
{{- else -}}
// {{ .Name }} represents a row from '{{ $table }}'.
{{- end }}
type {{ .Name }} struct {
{{- range .Fields }}
	{{ .Name }} {{ retype .Type }} `json:"{{ firstLetterToLower .Name }}"` // {{ .Col.ColumnName }}
{{- end }}
}

