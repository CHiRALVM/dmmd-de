//<continuation number="110">
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


scene dm0220.nss_MAIN
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
	#ev022���t���y����=true;
	#ev022���t���y����a=true;

	#bg104001_3_���t��O�ʂ茺�֏���=true;
	#bg210011_2_�\�I�C�ƍ��l=true;
	#bg104011_5_���t��֏���=true;
	#bg209011_2_�\�I���t����O�ό��グ=true;

	//�����[�g�t���O�A�I�����A����GameName
	$PreGameName = $GameName;
	$GameName = "dm0230.nss";

}


scene dm0220.nss
{

	//���V�[���̓��ɕK���L�q
	$�X�N���v�g�o�[�W���� = " $Revision:  $";
	$�\���� = ModuleFileName();
	$�\���� = $SYSTEM_present_process;
	SystemInit();


//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\

	PrintBG("��w�i", 30000);

	OnBG(10,"bg104001_3_���t��O�ʂ茺�֏���");
	FadeBG(0,true);

	FadeDelete("��w�i", 1000, null, true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0010]
Nachdem ich vor dem Laden ummaechtig wurde&.&.&.

Ren hat Haga-san gerufen und er hat mich in den Laden gebracht&.

Obwohl ich den Beutel&, welchen ich ausliefern sollte&, verloren hatte&, 
sagte Haga-san mit seinem ueblichen Laecheln das ich nach Hause gehen koenne&.

Ich entschied mich dazu mich auf Haga-san's Freundlichkeit zu verlassen und ging
gehorsam nach Hause&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	CreateSE("SE01","se����_���t���_���J���������01");
	MusicStart("SE01",0,700,0,1000,null,false);

	SetVolumeEX("SE*", 3000, 0, null);

	CreateColorSP("�G����", 25000, "BLACK");

	DrawTransition("�G����", 1000, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);

	CreateTextureSP("�G�w�i100", 100, Center, Middle, "cg/bg/bg104011_5_���t��֏���.jpg");

	DrawDelete("�G����", 1000, 100, null, "blind_01_00_1", true);


	OnBG(10,"bg104011_5_���t���");
	FadeBG(0,true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0011]
Es sieht danach aus als waere Grossmutter noch nicht zu Hause und
es ist dunkel im Haus&.

{
	CreateSE("SE01","se����_���t��Ɩ�_�_��01");
	MusicStart("SE01",0,700,0,1000,null,false);

	FadeDelete("�G�w�i100", 200, null, true);
}
Ich schalte das Licht im Flur an&, betrete den Korridor und laufe in die Kueche&. 
Ich nehme eine Pille gegen meine Kopfschmerzen vom Regal und trinke mehr Wasser
als sonst&.

Normalerweise sollte man die Pille nach einer Mahlzeit zu sich nehmen&, 
aber es ist mir momentan wichtiger das die Kopfschmerzen aufhoeren&.

{
	CreateSE("SE01","se����_���t��K�i_�o��ʏ�01");
	MusicStart("SE01",0,700,0,1000,null,false);
}
Es mag daran liegen&, dass ich erleichtert bin zu Hause zu sein&, aber ich fuehle mich 
ploetzlich so muede&, dass es schwer wird zu laufen&.

Ich will sofort einschlafen&, aber bahne mir trotzdem meinen Weg nach oben in den 
zweiten Stock&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	SetVolumeEX("SE*", 2000, 0, null);

	OnBG(10,"bg104031_5_���t���");
	FadeBG(1000,true);

	CreateSE("SE01","se����_�x�b�h_�|�ꍞ��");
	MusicStart("SE01",0,700,0,1000,null,false);

	CreatePlainSP("�G��", 990);
	Shake("�G��", 200, 0, 15, 0, 0, 500, null, true);
	Delete("�G��");

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0012]
Ich nehme Ren aus der Tasche und lege ihn aufs Bett&. 
Ich ziehe meine Jacke aus und lege mich neben ihn hin&.

Hch&.&.&.

Ich habe den Beutel den ich ausliefern sollte verloren und bin
dann sogar frueher nach Hause gegangen&.&.&.

Haga-sans Laecheln und Fuersorge waren grossartig und ich fuehle mich allein beim
daran denken schuldig&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	SoundPlay("@dm012",0,450,true);

	Fw("fw���t_�ʏ�_worry");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0020]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm02/2000010a01">
"Was mache ich&.&.&.?"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);


//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0021]
Alles nur wegen dem Hasenkopf&.

Und&.&.&. Rhyme&.

Es ist es wirklich wert danach suechtig zu werden?

{
	CreateSE("SE01","se����_�x�b�h_�Q��01");
	MusicStart("SE01",0,700,0,1200,null,false);
}
Ich setze mich langsam auf und errinere mich an das Rhyme Feld&.&.&.
und ich fuehle mich nur schlechter&.

Ich denke die Medizin wirkt noch nicht&, da die Kopfschmerzen immer noch da sind&. 
Ich werde etwas anderes ausprobieren&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	CreateSE("SE01","se�l��_����_����01");
	MusicStart("SE01",0,600,0,1400,null,false);

	Wait(500);

	CreateSE("SE02","se����_�x�b�h_�Q��01");
	MusicStart("SE02",0,600,0,1200,null,false);

	CreateTextureEX("�G�d�u120", 120, -957, -114, "cg/ev/l/ev022���t���y����_l.jpg");
	CreateTextureEX("�G�d�u102", 102, -955, -24, "cg/ev/l/ev022���t���y����a_l.jpg");
	CreateTextureEX("�G�d�u101", 101, Center, Middle, "cg/ev/ev022���t���y����a.jpg");
	CreateTextureEX("�G�d�u100", 100, Center, Middle, "cg/ev/ev022���t���y����.jpg");
	Fade("�G�d�u100", 1000, 1000, null, true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0030]
Ich nehme meine Kopfhoerer&, die ich mit meiner Jacke aufs Bett geworfen habe
und ziehe sie auf&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	Fade("�G�d�u101", 800, 1000, null, true);
	Delete("�G�d�u100");

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0031]
Ich waehle auf meinem Coil meine Lieblingsmusik aus und schliesse meine Augen
und lasse meinen Koerper mit der Musik fliessen&.

Immer wenn ich mich unwohl fuehle&, hilft mir das&, mich wieder zu entspannen&.

Ich werde in meine Welt der Musik hineingezogen&.

//�y���t�z
<voice name="���t" class="���t" src="voice/dm02/2000020a01">
"&.&.&.Mn&."

Der Rhythmus und das Tempo der Musik&, meine eigenes Atmen und mein Herzschlag&.

Sie stimmen sich langsam ab und verschmelzen schliesslich zu einer wogenden Welle&.

//�y���t�z
<voice name="���t" class="���t" src="voice/dm02/2000030a01">
"Ha&, &.&.&.&.&.&."

Dieser Whirlpool aus Melodien umgibt mich und streichelt meinen Koerper zaertlich&.

Der Klang durchdringt meine Haut&, vermischt sich mit meinem Blut und fliesst
durch mich hindurch&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	CreateSE("SE01","se�l��_����_�ߎC��05");
	MusicStart("SE01",0,600,0,800,null,false);
	SetVolumeEX("SE*", 1000, 0, null);

	Move("�G�d�u102", 1000, -955, -114, Dxl1, false);
	Fade("�G�d�u102", 1000, 1000, null, true);
	Delete("�G�d�u101");

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0040]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm02/2000040a01">
"&.&.&.Ah&.&.&."

Lichter aller Farben tanzen in meinem Kopf wie ein weicher Film&.

Es ist angenehm und ich beruhige mich langsam&. Ich sage mir selbst 
das nur ich hier bin&, ein Ort nur fuer mich&. Es ist friedlich&.

//�y���t�z
<voice name="���t" class="���t" src="voice/dm02/2000050a01">
"Ahhh&.&.&."

{
	CreateTextureEX("�G�w�i110", 110, 0, -556, "cg/bg/l/bg104031_5_���t���_l.jpg");
	Move("�G�w�i110", 500, 0, -572, Dxl1, false);
	Fade("�G�w�i110", 500, 1000, null, true);

	Delete("�G�d�u102");
}
Der Mistston meiner Kopfschmerzen und die Gerauesche in meinem Koerper sind weit 
entfernt und nur das leise Gerauesch meiner eigenen Atmung bleibt&.

Es war als waere ich in eine Welle gestossen worden&, die alle Teile meines Koerpers
durchdringt&. Ein entferntes Atmen entspringt gelegentlich meinen Lippen&.

So angenehm&.&.&.

Ich habe das Gefuehl das ich heute tiefer einsinke als sonst&.

Der Schmerz und aehnliches sind verschwunden&.

Falls ich so einschlafe&, muss ich nur darauf warten das ich zaertlich geweckt werde&.

Falls ich so einschlafe&.&.&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	CreateSE("SE01","se����_��_��01");
	MusicStart("SE01",0,450,0,2000,null,false);

	Move("�G�d�u120", 500, -957, -101, Dxl1, false);
	Fade("�G�d�u120", 500, 1000, null, true);
	Delete("�G�w�i110");

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0050]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm02/2000060a01">
"&.&.&.&.&.?"

Ein Gerauesch&.&.&.?

Ich oeffne meine Augen leicht&, aber mit meinem verschwommenen Bewusstsein&, kann 
ich nicht sicher sagen was es ist&.

&.&.&.&.&.&.&.&.Tja&, was auch immer&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	ClearFadeAll(2000, true);
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0060]
Ich versuche erst gar nicht einen klaren Gedanken zu fassen und schliesse meine Augen 
wieder&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	SetVolumeEX("@dm*", 5000, 0, null);

	ClearFadeAll(2000, true);
	CreateColorSP("�G�F��", 5000, "000000");

	Wait(1000);

	CreateColorSPadd("�G�F��", 3000, "FFFFFF");

	CreateTextureSP("�G�w�i101", 101, Center, -766, "cg/bg/bg209011_2_�\�I���t����O�ό��グ.jpg");
	SetShade("�G�w�i101", NOMORE);
	CreateTextureSP("�G�w�i100", 100, -212, -559, "cg/bg/l/bg210011_2_�\�I�C�ƍ��l_l.jpg");
	SetShade("�G�w�i100", NOMORE);

	CreateSE("SE01","se��_���R_�g01L");
	MusicStart("SE01",4000,400,0,1000,null,true);

	Wait(1500);

	FadeDelete("�G�F��", 1500, null, true);

	Fade("�G�F��", 2000, 500, null, true);

	CreateVOICE("���t","dm02/2000070b01");
	MusicStart("���t",5000,300,0,1000,null,true);

	CreateVOICE("�@","dm02/2000080c03");
	MusicStart("�@",5000,300,0,1000,null,true);

	FadeDelete("�G�w�i101", 1000, null, true);
	Fade("�G�F��", 3000, 100, null, true);

	Wait(1500);

	SetVolumeEX("SE01", 3000, 300, null);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0061]
Dieser Ort&.&.&. Ich habe ihn schon zuvor gesehen&.

Ich kenne ihn gut&.

Ich sitze an einem sandigen Strand und rede mit einer bestimmten Person&.

Ich hege seine Worte so als wuerden sie strahlen&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	Fade("�G�F��", 1000, 1000, null, true);

	CreateTextureSP("�G�d�u200", 200, -732, -406, "cg/ev/l/evf10�L���̒��̕��̉e_l.jpg");
	CreateTextureEXadd("�G�d�u201", 201, -732, -406, "cg/ev/l/evf10�L���̒��̕��̉e_l.jpg");
	LastfireOGMIX("@�G�d�u201","�v���Z�X�t�@�C���[");

	Fade("�G�F��", 2000, 100, null, true);

	Wait(1000);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0062]
//�������F�������H�����Ďg�p�i�قƂ�Ǖ������Ȃ������Ɂj
//�y�i�C���z
<voice name="�i�C��" class="�i�C��" src="voice/dm02/2000090b17">
"&.&.&.&.&."

//�u�|���Ȃ�����A�����̐��E����o�Ă����Łv

//�������F�������H�����Ďg�p�i�قƂ�Ǖ������Ȃ������Ɂj
//�y�i�C���z
<voice name="�i�C��" class="�i�C��" src="voice/dm02/2000100b17">
"&.&.&.&.&."

//�u���v�B���E�͂��ł��󂷂��Ƃ��ł��邩��v

//�������F�������H�����Ďg�p�i�قƂ�Ǖ������Ȃ������Ɂj
//�y�i�C���z
<voice name="�i�C��" class="�i�C��" src="voice/dm02/2000110b17">
"&.&.&.&.&."

//�u�󂵂āA���̂��Ƃɂ܂��V���Ȑ��E�����o���΂����B�\���ɏI���Ȃ�ĂȂ��񂾁v
//Hihi, it's nice that the words actually are written here&. Beautiful&.

&.&.&.Was hat er wieder gesagt? Ich kann mich nicht erinnern&.

Was er gesagt hat&, war wichtig&.&.&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

Wait(8);
	SetVolumeEX("SE*", 3000, 0, null);
	SetVolumeEX("���t", 3000, 0, null);
	SetVolumeEX("�@", 3000, 0, null);
	Fade("�G�F��", 3000, 1000, null, true);

//�����I���

	ClearFadeAll(3000, true);

	Wait(4000);

//�����t�@�C��["dm0230.nss"]

}
