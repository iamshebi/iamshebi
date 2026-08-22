#!/bin/bash

# Add nazirabas as admin to all repositories

# Personal repositories
repos=(
  "a1" "abc1" "ansonfotos-clone" "aria-vercel-deploy" "dubai-yachts"
  "dyb" "dyb1" "dyb2026" "eee" "elite-media-wizard"
  "elite-rentals-europe" "elite-yacht-viewer" "elyon-audit-fix" "elyon-codes-admin" "elyon-infinity"
  "elyon-masterpiece" "elyon-offer" "elyon-street-review-funnel" "elyon-white" "elyondubai-theme"
  "elyonv2" "EMW" "emw-backup" "ere" "etc-from-desk"
  "godwin" "himeros-landing" "iamshebi" "infinity-landing" "infinity-landing-ecomwize"
  "jul" "landing-page" "may6" "media" "mod1-0"
  "new-shebs" "openclaw-2026-3-13-1" "pdf-eliterentalsdubai-com" "pdf-viewer" "pdf-viewer-copy"
  "pdf-viewerimg" "pdf-viewerog" "pixonproductions" "pixonproductions-backup-2026-05-12" "ppp"
  "printerdoc" "shebs-dev" "shebs-dev2026" "shopify-currency-display" "shopify-elyon"
  "shopnew" "sovereign-consultation-elyon" "street-rev" "tester" "testpdf"
  "Try.elyondubai" "vids" "yacht-sales" "yacht-white" "yachtds"
)

echo "Starting to add nazirabas as admin to all repositories..."
echo ""

# Add to personal repositories
for repo in "${repos[@]}"; do
  gh repo add-collaborator "iamshebi/$repo" "nazirabas" --permission admin 2>/dev/null
  if [ $? -eq 0 ]; then
    echo "✓ Added nazirabas as admin to iamshebi/$repo"
  else
    echo "✗ Failed to add nazirabas to iamshebi/$repo (may already have access)"
  fi
done

# Add to organization repositories
org_repos=(
  "urdev-team/elite-rentals-dubai-backend"
  "urdev-team/elite-rentals-dubai-frontend"
  "urdev-team/elite-rentals-dubai-strapi"
)

echo ""
echo "Adding to organization repositories..."

for repo in "${org_repos[@]}"; do
  gh repo add-collaborator "$repo" "nazirabas" --permission admin 2>/dev/null
  if [ $? -eq 0 ]; then
    echo "✓ Added nazirabas as admin to $repo"
  else
    echo "✗ Failed to add nazirabas to $repo"
  fi
done

echo ""
echo "✓ All done! nazirabas now has admin access to all repositories."
