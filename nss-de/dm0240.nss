//<continuation number="130">
//<continuation number="">


chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}


scene dm0240.nss_MAIN
{
//�������ݒ�
	if(($SYSTEM_skip && #SYSTEM_skip_express && $AllRead) || ($SYSTEM_skip && #SYSTEM_skip_express && #SYSTEM_skip_absolute)){
		SkipOut();
	}else{
		$MainGameName="@->"+$GameName;
		GameMainSet();
		call_scene $MainGameName;
		GameMainSet2();
	}

//���I�����X�N���v�g�y�уt���O�ݒ�
	//���C�x���g�b�f
	#�C�x���g�t�@�C����=true;
	#bg104051_5_���t���=true;
	#bg104011_5_���t��֏���=true;

	//�����[�g�t���O�A�I�����A����GameName
	$PreGameName = $GameName;
	$GameName = "dm0250.nss";

}


scene dm0240.nss
{

	//���V�[���̓��ɕK���L�q
	$�X�N���v�g�o�[�W���� = " $Revision:  $";
	$�\���� = ModuleFileName();
	$�\���� = $SYSTEM_present_process;
	SystemInit();


//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\

	PrintBG("��w�i", 30000);

	OnBG(10,"bg104011_5_���t���");
	FadeBG(0,true);

	CreateSE("SE01","se�[��_��_�V�����[01");
	MusicStart("SE01",1000,450,0,1000,null,true);

	Wait(2000);

	SetVolumeEX("SE01", 1000, 0, null);
	CreateSE("SE02","se�[��_��_�V�����[�߂�01");
	MusicStart("SE02",0,700,0,1000,null,false);

	Wait(2000);

	CreateSE("SE01","se����_���t���_���J���������01");
	MusicStart("SE01",0,700,0,1000,null,false);

	FadeDelete("��w�i", 1000, null, true);

//�����o�F���t�A���C�i�s�p�H�j
//���r�d�F�V�����[�̐����i�s�p�H�j
//���r�d�F�����~�܂�i�s�p�H�j
//���r�d�F���t����_�E�ߏ����J�i�K���K���j

	Fw("fw���t_�ʏ�_normal2");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0010]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm02/4000010a01">
"&.&.&.Woow&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);


//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0011]
Ich dusche nach dem Essen und bedecke mein halb-feuchtes Haar mit dem Handtuch auf meinen
Schultern und gehe in das Wohnzimmer&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	OnBG(10,"bg104051_5_���t���");
	FadeBG(1000,true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0012]
Ich luge ins Wohnzimmer und sehe das Grossmutter fernsieht und Tee trinkt&. 
Koujaku ist nicht zu sehen&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw���t_�ʏ�_shock");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0013]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm02/4000020a01">
"Wo ist Koujaku?"

{	Fw("fw�^�G_�ʏ�_normal");}
//�y�^�G�z
<voice name="�^�G" class="�^�G" src="voice/dm02/4000030b03">
"Er ist nach oben gegangen&. Er ist wahrscheinlich in deinem Zimmer&."

{
//	SoundPlay("@dm013",0,450,true);
	Fw("fw���t_�ʏ�_normal2");
}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm02/4000040a01">
"Okay&. &.&.&.Ah&, uebrigens&, Grossmutter&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw�^�G_�ʏ�_normal2");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0020]
//�y�^�G�z
<voice name="�^�G" class="�^�G" src="voice/dm02/4000050b03">
"Was?"

{	Fw("fw���t_�ʏ�_shock2");}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm02/4000060a01">
"Immer wenn ich Kopfschmerzen bekomme nehme ich meine Medizin wie ueblich&,
 aber in letzter Zeit ist es nicht mehr so wirksam&."

{	Fw("fw�^�G_�ʏ�_normal");}
//�y�^�G�z
<voice name="�^�G" class="�^�G" src="voice/dm02/4000070b03">
"&.&.&.Hmmm&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);


//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0021]
Grossmutter&, die die ganze Zeit auf den Fernseher gestart hat&, 
dreht sich zu mir um&.

Grossmutter hat mir gesagt das ich ihr sofort Bescheid sagen soll&,
falls meine Kopfschmerzen schlimmer werden&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	St("C",740, @0,@0,"st�^�G_�ʏ�_sad");
	FadeSt("C",200,true);
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0022]
//�y�^�G�z
<voice name="�^�G" class="�^�G" src="voice/dm02/4000080b03">
"Wirkt die Medizin gar nicht mehr?"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw���t_�ʏ�_worry");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0030]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm02/4000090a01">
"Emm&, so ist es nicht&, aber ich habe das Gefuehl&, dass sie
 nicht den gleichen Effekt hat wie frueher&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	St("C",740, @0,@0,"st�^�G_�ʏ�_normal");
	FadeSt("C",200,true);
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0031]
//�y�^�G�z
<voice name="�^�G" class="�^�G" src="voice/dm02/4000100b03">
"Ist das so? Dann lass uns mal versuchen die Formel etwas ab zu aendern&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw���t_�ʏ�_normal");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0032]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm02/4000110a01">
"Ich zaehle auf dich&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	DeleteFw();
	DeleteAllSt(200,true);
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0033]
Als ich mich tief verbeuge&, schnaubt Grossmutter und starrt wieder auf den Fernseher&.

Tja dann&.&.&.
Anscheinend ist Koujaku in meinem Zimmer&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	OnBG(10,"bg104011_5_���t���");
	FadeBG(1000,true);

	CreateSE("SE01","se����_���t��K�i_�o��ʏ�01");
	MusicStart("SE01",0,700,0,1000,null,true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0034]
Ich verlasse das Wohnzimmer und gehe nach oben&.

Viele Orte an meinem Koerper pulsieren vor Schmerz&,
obwohl ich nur meinen Fuss anhebe&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	CreateTextureSP("�G�w�i", 100, Center, Middle, "cg/bg/bg104011_5_���t���.jpg");
	SetVolumeEX("SE*", 0, 0, null);
	CreateSE("SE01","se����_���t��K�i_�o��ʏ�01");
	MusicStart("SE01",0,700,0,1000,null,false);
	Shake("�G�w�i", 300, 0, 5, 0, 0, 500, Dxl3, true);
	SetVolumeEX("SE*", 0, 0, null);

	Fw("fw���t_�ʏ�_pinch");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0035]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm02/4000120a01">
"Au&, au&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);


//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0040]
Obwohl es keine sichtbaren Einschnitte oder Bluterguesse gibt&, 
gibt es einen dumpfen Schmerz in der Mitte meines Koerpers&.

Ist es weil ich in Rhyme Schaden genommen habe&.&.&.?

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw���t_�ʏ�_sigh2");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0041]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm02/4000130a01">
"Obwohl der Kampf in meinem Kopf stattgefunden hat&,
 tut es immer noch ziemlich weh&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);


//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0042]
Als ich mit diesem seltsamen Hasenkopf gekaempft habe&,
sagte Ren das der Schaden begrenzt sei&.

Ist das ueberhaupt moeglich?

Ich versuche den Schmerz zu ertragen&, bahne mir den Weg die Treppen hoch
und gehe in mein Zimmer&.


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

//�����t�@�C��["dm0250.nss"]

}
