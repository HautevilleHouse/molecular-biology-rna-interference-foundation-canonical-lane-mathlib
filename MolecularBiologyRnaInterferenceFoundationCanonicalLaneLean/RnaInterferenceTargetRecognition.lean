import MolecularBiologyRnaInterferenceFoundationCanonicalLaneLean.RNAInterferenceFoundationObjects
import MolecularBiologyRnaInterferenceFoundationCanonicalLaneLean.SilencingComplex

namespace HautevilleHouse
namespace MolecularBiologyRnaInterferenceFoundationCanonicalLaneLean

structure TargetRecognitionPackage {O : RnaInterferenceAdmittedObject}
    {S : SilencingComplexPackage O} where
  basePairComplementarity : Prop
  targetMessengerRnaBinding : Prop
  seedRegionRecognition : Prop
  cleavageInduction : Prop
  translationalInhibition : Prop

structure TargetRecognitionEvidence {O : RnaInterferenceAdmittedObject}
    {S : SilencingComplexPackage O} (T : TargetRecognitionPackage S) where
  basePairComplementarityClosed : T.basePairComplementarity
  targetMessengerRnaBindingClosed : T.targetMessengerRnaBinding
  seedRegionRecognitionClosed : T.seedRegionRecognition
  cleavageInductionClosed : T.cleavageInduction
  translationalInhibitionClosed : T.translationalInhibition

def TargetRecognitionClosed {O : RnaInterferenceAdmittedObject}
    {S : SilencingComplexPackage O} (T : TargetRecognitionPackage S) : Prop :=
  T.basePairComplementarity ∧ T.targetMessengerRnaBinding ∧
  T.seedRegionRecognition ∧ T.cleavageInduction ∧ T.translationalInhibition

theorem target_recognition_closed_from_evidence
    {O : RnaInterferenceAdmittedObject} {S : SilencingComplexPackage O}
    (T : TargetRecognitionPackage S) (E : TargetRecognitionEvidence T) :
    TargetRecognitionClosed T := by
  exact And.intro E.basePairComplementarityClosed
    (And.intro E.targetMessengerRnaBindingClosed
      (And.intro E.seedRegionRecognitionClosed
        (And.intro E.cleavageInductionClosed E.translationalInhibitionClosed)))

end MolecularBiologyRnaInterferenceFoundationCanonicalLaneLean
end HautevilleHouse