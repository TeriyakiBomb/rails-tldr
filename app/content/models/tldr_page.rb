class TldrPage < Sitepress::Model
  collection glob: "tldr/*.html*"
  data :title
end
