import MolecularBiologyRnaInterferenceFoundationCanonicalLaneLean.RNAInterferenceFoundationObjects
import MolecularBiologyRnaInterferenceFoundationCanonicalLaneLean.SilencingComplex
import MolecularBiologyRnaInterferenceFoundationCanonicalLaneLean.TargetRecognition

namespace HautevilleHouse
namespace MolecularBiologyRnaInterferenceFoundationCanonicalLaneLean

structure RegulatoryPathwayPackage {O : RnaInterferenceAdmittedObject}
    {S : SilencingComplexPackage O} {T : TargetRecognitionPackage S} where
  endogenousMicrornaPathway : Prop
  exogenousSirnaPathway : Prop
  pirnaPathway : Prop
  amplificationFeedback : Prop
  geneRegulationNetwork : Prop

structure RegulatoryPathwayEvidence {O : RnaInterferenceAdmittedObject}
    {S : SilencingComplexPackage O} {T : TargetRecognitionPackage S}
    (R : RegulatoryPathwayPackage T) where
  endogenousMicrornaPathwayClosed : R.endogenousMicrornaPathway
  exogenousSirnaPathwayClosed : R.exogenousSirnaPathway
  pirnaPathwayClosed : R.pirnaPathway
  amplificationFeedbackClosed : R.amplificationFeedback
  geneRegulationNetworkClosed : R.geneRegulationNetwork

def RegulatoryPathwayClosed {O : RnaInterferenceAdmittedObject}
    {S : SilencingComplexPackage O} {T : TargetRecognitionPackage S}
    (R : RegulatoryPathwayPackage T) : Prop :=
  R.endogenousMicrornaPathway ∧ R.exogenousSirnaPathway ∧
  R.pirnaPathway ∧ R.amplificationFeedback ∧ R.geneRegulationNetwork

theorem regulatory_pathway_closed_from_evidence
    {O : RnaInterferenceAdmittedObject} {S : SilencingComplexPackage O}
    {T : TargetRecognitionPackage S} (R : RegulatoryPathwayPackage T)
    (E : RegulatoryPathwayEvidence R) : RegulatoryPathwayClosed R := by
  exact And.intro E.endogenousMicrornaPathwayClosed
    (And.intro E.exogenousSirnaPathwayClosed
      (And.intro E.pirnaPathwayClosed
        (And.intro E.amplificationFeedbackClosed E.geneRegulationNetworkClosed)))

end MolecularBiologyRnaInterferenceFoundationCanonicalLaneLean
end HautevilleHouse