cwlVersion: v1.0
steps:
  read-potential-cases-i2b2:
    run: read-potential-cases-i2b2.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule1
  ace-inhibitors-tablet---primary:
    run: ace-inhibitors-tablet---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule2
      potentialCases:
        id: potentialCases
        source: read-potential-cases-i2b2/output
  ace-inhibitors-aprovel---primary:
    run: ace-inhibitors-aprovel---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule3
      potentialCases:
        id: potentialCases
        source: ace-inhibitors-tablet---primary/output
  ace-inhibitors-625mg---primary:
    run: ace-inhibitors-625mg---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule4
      potentialCases:
        id: potentialCases
        source: ace-inhibitors-aprovel---primary/output
  ace-inhibitors-captopril---primary:
    run: ace-inhibitors-captopril---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule5
      potentialCases:
        id: potentialCases
        source: ace-inhibitors-625mg---primary/output
  ace-inhibitors-400mg---primary:
    run: ace-inhibitors-400mg---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule6
      potentialCases:
        id: potentialCases
        source: ace-inhibitors-captopril---primary/output
  ace-inhibitors-codiovan---primary:
    run: ace-inhibitors-codiovan---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule7
      potentialCases:
        id: potentialCases
        source: ace-inhibitors-400mg---primary/output
  ace-inhibitors-150mg---primary:
    run: ace-inhibitors-150mg---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule8
      potentialCases:
        id: potentialCases
        source: ace-inhibitors-codiovan---primary/output
  ace-inhibitors-irbesartan---primary:
    run: ace-inhibitors-irbesartan---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule9
      potentialCases:
        id: potentialCases
        source: ace-inhibitors-150mg---primary/output
  ace-inhibitors-160mg---primary:
    run: ace-inhibitors-160mg---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule10
      potentialCases:
        id: potentialCases
        source: ace-inhibitors-irbesartan---primary/output
  ace-inhibitors-erbumine---primary:
    run: ace-inhibitors-erbumine---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule11
      potentialCases:
        id: potentialCases
        source: ace-inhibitors-160mg---primary/output
  ace-inhibitors-320mg---primary:
    run: ace-inhibitors-320mg---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule12
      potentialCases:
        id: potentialCases
        source: ace-inhibitors-erbumine---primary/output
  ace-inhibitors-microgram---primary:
    run: ace-inhibitors-microgram---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule13
      potentialCases:
        id: potentialCases
        source: ace-inhibitors-320mg---primary/output
  ace-inhibitors-cilazapril---primary:
    run: ace-inhibitors-cilazapril---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule14
      potentialCases:
        id: potentialCases
        source: ace-inhibitors-microgram---primary/output
  ace-inhibitors-chiesi---primary:
    run: ace-inhibitors-chiesi---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule15
      potentialCases:
        id: potentialCases
        source: ace-inhibitors-cilazapril---primary/output
  ace-inhibitors-600mg---primary:
    run: ace-inhibitors-600mg---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule16
      potentialCases:
        id: potentialCases
        source: ace-inhibitors-chiesi---primary/output
  ace-inhibitors-imidapril---primary:
    run: ace-inhibitors-imidapril---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule17
      potentialCases:
        id: potentialCases
        source: ace-inhibitors-600mg---primary/output
  ace-inhibitors-180mg---primary:
    run: ace-inhibitors-180mg---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule18
      potentialCases:
        id: potentialCases
        source: ace-inhibitors-imidapril---primary/output
  ace-inhibitors-100mg---primary:
    run: ace-inhibitors-100mg---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule19
      potentialCases:
        id: potentialCases
        source: ace-inhibitors-180mg---primary/output
  ace-inhibitors-wafer---primary:
    run: ace-inhibitors-wafer---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule20
      potentialCases:
        id: potentialCases
        source: ace-inhibitors-100mg---primary/output
  servier-ace-inhibitors---primary:
    run: servier-ace-inhibitors---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule21
      potentialCases:
        id: potentialCases
        source: ace-inhibitors-wafer---primary/output
  ace-inhibitors-accupro---primary:
    run: ace-inhibitors-accupro---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule22
      potentialCases:
        id: potentialCases
        source: servier-ace-inhibitors---primary/output
  ace-inhibitors-ramipril---primary:
    run: ace-inhibitors-ramipril---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule23
      potentialCases:
        id: potentialCases
        source: ace-inhibitors-accupro---primary/output
  ace-inhibitors-cozaarcomp---primary:
    run: ace-inhibitors-cozaarcomp---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule24
      potentialCases:
        id: potentialCases
        source: ace-inhibitors-ramipril---primary/output
  ace-inhibitors-olmetec---primary:
    run: ace-inhibitors-olmetec---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule25
      potentialCases:
        id: potentialCases
        source: ace-inhibitors-cozaarcomp---primary/output
  ace-inhibitors-pfizer---primary:
    run: ace-inhibitors-pfizer---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule26
      potentialCases:
        id: potentialCases
        source: ace-inhibitors-olmetec---primary/output
  ace-inhibitors-titration---primary:
    run: ace-inhibitors-titration---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule27
      potentialCases:
        id: potentialCases
        source: ace-inhibitors-pfizer---primary/output
  ace-inhibitors-quinapril---primary:
    run: ace-inhibitors-quinapril---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule28
      potentialCases:
        id: potentialCases
        source: ace-inhibitors-titration---primary/output
  ace-inhibitors-moexipril---primary:
    run: ace-inhibitors-moexipril---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule29
      potentialCases:
        id: potentialCases
        source: ace-inhibitors-quinapril---primary/output
  ace-inhibitors-capozide---primary:
    run: ace-inhibitors-capozide---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule30
      potentialCases:
        id: potentialCases
        source: ace-inhibitors-moexipril---primary/output
  ace-inhibitors-roche---primary:
    run: ace-inhibitors-roche---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule31
      potentialCases:
        id: potentialCases
        source: ace-inhibitors-capozide---primary/output
  ace-inhibitors-gopten---primary:
    run: ace-inhibitors-gopten---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule32
      potentialCases:
        id: potentialCases
        source: ace-inhibitors-roche---primary/output
  ace-inhibitors-liquid---primary:
    run: ace-inhibitors-liquid---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule33
      potentialCases:
        id: potentialCases
        source: ace-inhibitors-gopten---primary/output
  ace-inhibitors-verapamil---primary:
    run: ace-inhibitors-verapamil---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule34
      potentialCases:
        id: potentialCases
        source: ace-inhibitors-liquid---primary/output
  ace-inhibitors-squibb---primary:
    run: ace-inhibitors-squibb---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule35
      potentialCases:
        id: potentialCases
        source: ace-inhibitors-verapamil---primary/output
  ace-inhibitors-tensopril---primary:
    run: ace-inhibitors-tensopril---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule36
      potentialCases:
        id: potentialCases
        source: ace-inhibitors-squibb---primary/output
  ace-inhibitors-suspension---primary:
    run: ace-inhibitors-suspension---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule37
      potentialCases:
        id: potentialCases
        source: ace-inhibitors-tensopril---primary/output
  ace-inhibitors-kaplon---primary:
    run: ace-inhibitors-kaplon---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule38
      potentialCases:
        id: potentialCases
        source: ace-inhibitors-suspension---primary/output
  pralenal-ace-inhibitors---primary:
    run: pralenal-ace-inhibitors---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule39
      potentialCases:
        id: potentialCases
        source: ace-inhibitors-kaplon---primary/output
  ace-inhibitors-dumex---primary:
    run: ace-inhibitors-dumex---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule40
      potentialCases:
        id: potentialCases
        source: pralenal-ace-inhibitors---primary/output
  ace-inhibitors-perdix---primary:
    run: ace-inhibitors-perdix---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule41
      potentialCases:
        id: potentialCases
        source: ace-inhibitors-dumex---primary/output
  ace-inhibitors-odrik---primary:
    run: ace-inhibitors-odrik---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule42
      potentialCases:
        id: potentialCases
        source: ace-inhibitors-perdix---primary/output
  ace-inhibitors-takeda---primary:
    run: ace-inhibitors-takeda---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule43
      potentialCases:
        id: potentialCases
        source: ace-inhibitors-odrik---primary/output
  ace-inhibitors-discovery---primary:
    run: ace-inhibitors-discovery---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule44
      potentialCases:
        id: potentialCases
        source: ace-inhibitors-takeda---primary/output
  ace-inhibitors-hillcross---primary:
    run: ace-inhibitors-hillcross---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule45
      potentialCases:
        id: potentialCases
        source: ace-inhibitors-discovery---primary/output
  ace-inhibitors-capoten---primary:
    run: ace-inhibitors-capoten---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule46
      potentialCases:
        id: potentialCases
        source: ace-inhibitors-hillcross---primary/output
  ace-inhibitors-genus---primary:
    run: ace-inhibitors-genus---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule47
      potentialCases:
        id: potentialCases
        source: ace-inhibitors-capoten---primary/output
  ace-inhibitors-dexcel---primary:
    run: ace-inhibitors-dexcel---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule48
      potentialCases:
        id: potentialCases
        source: ace-inhibitors-genus---primary/output
  ace-inhibitors-sovereign---primary:
    run: ace-inhibitors-sovereign---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule49
      potentialCases:
        id: potentialCases
        source: ace-inhibitors-dexcel---primary/output
  ace-inhibitors-zentiva---primary:
    run: ace-inhibitors-zentiva---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule50
      potentialCases:
        id: potentialCases
        source: ace-inhibitors-sovereign---primary/output
  ace-inhibitors-exforge---primary:
    run: ace-inhibitors-exforge---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule51
      potentialCases:
        id: potentialCases
        source: ace-inhibitors-zentiva---primary/output
  ace-inhibitors-dominion---primary:
    run: ace-inhibitors-dominion---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule52
      potentialCases:
        id: potentialCases
        source: ace-inhibitors-exforge---primary/output
  ace-inhibitors-arginine---primary:
    run: ace-inhibitors-arginine---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule53
      potentialCases:
        id: potentialCases
        source: ace-inhibitors-dominion---primary/output
  ace-inhibitors-perindopril---primary:
    run: ace-inhibitors-perindopril---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule54
      potentialCases:
        id: potentialCases
        source: ace-inhibitors-arginine---primary/output
  ace-inhibitors-quinil---primary:
    run: ace-inhibitors-quinil---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule55
      potentialCases:
        id: potentialCases
        source: ace-inhibitors-perindopril---primary/output
  zestoretic-ace-inhibitors---primary:
    run: zestoretic-ace-inhibitors---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule56
      potentialCases:
        id: potentialCases
        source: ace-inhibitors-quinil---primary/output
  ace-inhibitors-sterwin---primary:
    run: ace-inhibitors-sterwin---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule57
      potentialCases:
        id: potentialCases
        source: zestoretic-ace-inhibitors---primary/output
  ace-inhibitors-losartan---primary:
    run: ace-inhibitors-losartan---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule58
      potentialCases:
        id: potentialCases
        source: ace-inhibitors-sterwin---primary/output
  ace-inhibitors-trandolapril---primary:
    run: ace-inhibitors-trandolapril---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule59
      potentialCases:
        id: potentialCases
        source: ace-inhibitors-losartan---primary/output
  ace-inhibitors-actavis---primary:
    run: ace-inhibitors-actavis---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule60
      potentialCases:
        id: potentialCases
        source: ace-inhibitors-trandolapril---primary/output
  ace-inhibitors-staril---primary:
    run: ace-inhibitors-staril---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule61
      potentialCases:
        id: potentialCases
        source: ace-inhibitors-actavis---primary/output
  ace-inhibitors-tillomed---primary:
    run: ace-inhibitors-tillomed---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule62
      potentialCases:
        id: potentialCases
        source: ace-inhibitors-staril---primary/output
  ace-inhibitors-candesartan---primary:
    run: ace-inhibitors-candesartan---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule63
      potentialCases:
        id: potentialCases
        source: ace-inhibitors-tillomed---primary/output
  ace-inhibitors-indapamide---primary:
    run: ace-inhibitors-indapamide---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule64
      potentialCases:
        id: potentialCases
        source: ace-inhibitors-candesartan---primary/output
  ace-inhibitors-sandoz---primary:
    run: ace-inhibitors-sandoz---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule65
      potentialCases:
        id: potentialCases
        source: ace-inhibitors-indapamide---primary/output
  ace-inhibitors-fosinopril---primary:
    run: ace-inhibitors-fosinopril---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule66
      potentialCases:
        id: potentialCases
        source: ace-inhibitors-sandoz---primary/output
  ace-inhibitors-aventi---primary:
    run: ace-inhibitors-aventi---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule67
      potentialCases:
        id: potentialCases
        source: ace-inhibitors-fosinopril---primary/output
  ace-inhibitors-zestril---primary:
    run: ace-inhibitors-zestril---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule68
      potentialCases:
        id: potentialCases
        source: ace-inhibitors-aventi---primary/output
  ace-inhibitors-eprosartan---primary:
    run: ace-inhibitors-eprosartan---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule69
      potentialCases:
        id: potentialCases
        source: ace-inhibitors-zestril---primary/output
  ace-inhibitors-teveten---primary:
    run: ace-inhibitors-teveten---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule70
      potentialCases:
        id: potentialCases
        source: ace-inhibitors-eprosartan---primary/output
  output-cases:
    run: output-cases.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule71
      potentialCases:
        id: potentialCases
        source: ace-inhibitors-teveten---primary/output
class: Workflow
inputs:
  inputModule1:
    id: inputModule1
    doc: Js implementation unit
    type: File
  inputModule2:
    id: inputModule2
    doc: Python implementation unit
    type: File
  inputModule3:
    id: inputModule3
    doc: Python implementation unit
    type: File
  inputModule4:
    id: inputModule4
    doc: Python implementation unit
    type: File
  inputModule5:
    id: inputModule5
    doc: Python implementation unit
    type: File
  inputModule6:
    id: inputModule6
    doc: Python implementation unit
    type: File
  inputModule7:
    id: inputModule7
    doc: Python implementation unit
    type: File
  inputModule8:
    id: inputModule8
    doc: Python implementation unit
    type: File
  inputModule9:
    id: inputModule9
    doc: Python implementation unit
    type: File
  inputModule10:
    id: inputModule10
    doc: Python implementation unit
    type: File
  inputModule11:
    id: inputModule11
    doc: Python implementation unit
    type: File
  inputModule12:
    id: inputModule12
    doc: Python implementation unit
    type: File
  inputModule13:
    id: inputModule13
    doc: Python implementation unit
    type: File
  inputModule14:
    id: inputModule14
    doc: Python implementation unit
    type: File
  inputModule15:
    id: inputModule15
    doc: Python implementation unit
    type: File
  inputModule16:
    id: inputModule16
    doc: Python implementation unit
    type: File
  inputModule17:
    id: inputModule17
    doc: Python implementation unit
    type: File
  inputModule18:
    id: inputModule18
    doc: Python implementation unit
    type: File
  inputModule19:
    id: inputModule19
    doc: Python implementation unit
    type: File
  inputModule20:
    id: inputModule20
    doc: Python implementation unit
    type: File
  inputModule21:
    id: inputModule21
    doc: Python implementation unit
    type: File
  inputModule22:
    id: inputModule22
    doc: Python implementation unit
    type: File
  inputModule23:
    id: inputModule23
    doc: Python implementation unit
    type: File
  inputModule24:
    id: inputModule24
    doc: Python implementation unit
    type: File
  inputModule25:
    id: inputModule25
    doc: Python implementation unit
    type: File
  inputModule26:
    id: inputModule26
    doc: Python implementation unit
    type: File
  inputModule27:
    id: inputModule27
    doc: Python implementation unit
    type: File
  inputModule28:
    id: inputModule28
    doc: Python implementation unit
    type: File
  inputModule29:
    id: inputModule29
    doc: Python implementation unit
    type: File
  inputModule30:
    id: inputModule30
    doc: Python implementation unit
    type: File
  inputModule31:
    id: inputModule31
    doc: Python implementation unit
    type: File
  inputModule32:
    id: inputModule32
    doc: Python implementation unit
    type: File
  inputModule33:
    id: inputModule33
    doc: Python implementation unit
    type: File
  inputModule34:
    id: inputModule34
    doc: Python implementation unit
    type: File
  inputModule35:
    id: inputModule35
    doc: Python implementation unit
    type: File
  inputModule36:
    id: inputModule36
    doc: Python implementation unit
    type: File
  inputModule37:
    id: inputModule37
    doc: Python implementation unit
    type: File
  inputModule38:
    id: inputModule38
    doc: Python implementation unit
    type: File
  inputModule39:
    id: inputModule39
    doc: Python implementation unit
    type: File
  inputModule40:
    id: inputModule40
    doc: Python implementation unit
    type: File
  inputModule41:
    id: inputModule41
    doc: Python implementation unit
    type: File
  inputModule42:
    id: inputModule42
    doc: Python implementation unit
    type: File
  inputModule43:
    id: inputModule43
    doc: Python implementation unit
    type: File
  inputModule44:
    id: inputModule44
    doc: Python implementation unit
    type: File
  inputModule45:
    id: inputModule45
    doc: Python implementation unit
    type: File
  inputModule46:
    id: inputModule46
    doc: Python implementation unit
    type: File
  inputModule47:
    id: inputModule47
    doc: Python implementation unit
    type: File
  inputModule48:
    id: inputModule48
    doc: Python implementation unit
    type: File
  inputModule49:
    id: inputModule49
    doc: Python implementation unit
    type: File
  inputModule50:
    id: inputModule50
    doc: Python implementation unit
    type: File
  inputModule51:
    id: inputModule51
    doc: Python implementation unit
    type: File
  inputModule52:
    id: inputModule52
    doc: Python implementation unit
    type: File
  inputModule53:
    id: inputModule53
    doc: Python implementation unit
    type: File
  inputModule54:
    id: inputModule54
    doc: Python implementation unit
    type: File
  inputModule55:
    id: inputModule55
    doc: Python implementation unit
    type: File
  inputModule56:
    id: inputModule56
    doc: Python implementation unit
    type: File
  inputModule57:
    id: inputModule57
    doc: Python implementation unit
    type: File
  inputModule58:
    id: inputModule58
    doc: Python implementation unit
    type: File
  inputModule59:
    id: inputModule59
    doc: Python implementation unit
    type: File
  inputModule60:
    id: inputModule60
    doc: Python implementation unit
    type: File
  inputModule61:
    id: inputModule61
    doc: Python implementation unit
    type: File
  inputModule62:
    id: inputModule62
    doc: Python implementation unit
    type: File
  inputModule63:
    id: inputModule63
    doc: Python implementation unit
    type: File
  inputModule64:
    id: inputModule64
    doc: Python implementation unit
    type: File
  inputModule65:
    id: inputModule65
    doc: Python implementation unit
    type: File
  inputModule66:
    id: inputModule66
    doc: Python implementation unit
    type: File
  inputModule67:
    id: inputModule67
    doc: Python implementation unit
    type: File
  inputModule68:
    id: inputModule68
    doc: Python implementation unit
    type: File
  inputModule69:
    id: inputModule69
    doc: Python implementation unit
    type: File
  inputModule70:
    id: inputModule70
    doc: Python implementation unit
    type: File
  inputModule71:
    id: inputModule71
    doc: Python implementation unit
    type: File
outputs:
  cases:
    id: cases
    type: File
    outputSource: output-cases/output
    outputBinding:
      glob: '*.csv'
requirements:
  SubworkflowFeatureRequirement: {}
