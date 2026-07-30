import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.MolecularBiologyRecombinantDnaTechnologyLemmaCanonicalLaneLean.TransformationPackage

namespace HautevilleHouse
namespace MolecularBiologyRecombinantDnaTechnologyLemmaCanonicalLaneLean

structure ScreeningPackage {R : RestrictionEnzymePackage} {L : LigationPackage R} (T : TransformationPackage L) where
  colonyPCR : Bool
  restrictionDigest : Bool
  sequencingResult : String
  recombinantIdentified : Bool

structure ScreeningEvidence {R : RestrictionEnzymePackage} {L : LigationPackage R} {T : TransformationPackage L}
    (S : ScreeningPackage T) where
  pcrClosed : S.colonyPCR = true → S.recombinantIdentified = true
  digestClosed : S.restrictionDigest = true → S.recombinantIdentified = true
  sequencingClosed : S.sequencingResult ≠ "" → S.recombinantIdentified = true

def ScreeningClosed {R : RestrictionEnzymePackage} {L : LigationPackage R} {T : TransformationPackage L}
    (S : ScreeningPackage T) : Prop :=
  (S.colonyPCR → S.recombinantIdentified) ∧
  (S.restrictionDigest → S.recombinantIdentified) ∧
  (S.sequencingResult ≠ "" → S.recombinantIdentified)

theorem screening_closed_from_evidence
    {R : RestrictionEnzymePackage} {L : LigationPackage R} {T : TransformationPackage L}
    (S : ScreeningPackage T) (E : ScreeningEvidence S) : ScreeningClosed S :=
  And.intro (fun h => E.pcrClosed h) (And.intro (fun h => E.digestClosed h) (fun h => E.sequencingClosed h))

end MolecularBiologyRecombinantDnaTechnologyLemmaCanonicalLaneLean
end HautevilleHouse