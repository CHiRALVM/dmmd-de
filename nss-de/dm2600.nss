//<continuation number="250">
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


scene dm2600.nss_MAIN
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

	//�����[�g�t���O�A�I�����A����GameName
	$PreGameName = $GameName;
	$GameName = "dm2610.nss";

}


scene dm2600.nss
{

	//���V�[���̓��ɕK���L�q
	$�X�N���v�g�o�[�W���� = " $Revision:  $";
	$�\���� = ModuleFileName();
	$�\���� = $SYSTEM_present_process;
	SystemInit();


//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\

	PrintBG("��w�i", 30000);

	OnBG(10,"bg102011_5_���}�X��");
	FadeBG(0,true);

	FadeDelete("��w�i", 0, null, true);

	SoundPlay("@dm003",0,450,true);

	CreateSE("SE01","se����_�h�A���}_��01");
	MusicStart("SE01",0,700,0,1000,null,false);

	CreateSE("SE02","se�l��_����_���苎��q��01");
	MusicStart("SE02",0,700,0,1000,null,false);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0010]
{	St("L",730, @-50,@0,"st�L�I_�ʏ�_normal");
	Move("@L*", 200, @50, @0, Dxl1, false);
	FadeSt("L",200,true);}
//�y�L�I�z
<voice name="�L�I" class="�L�I" src="voice/dm26/0000010b10">
"ATTAAAAACCCKKK!!!!!"

{
	St("C",740, @0, @50,"st�i�I_�ʏ�_normal");
	Move("@C*", 200, @0, @-50, Dxl1, false);
	FadeSt("C",200,true);
}
//�y�i�I�z
<voice name="�i�I" class="�i�I" src="voice/dm26/0000020b13">
"Attack!!!!!!"

{
	SetVolumeEX("SE*", 1000, 0, null);
	St("R",730, @50,@0,"st�~�I_�ʏ�_normal");
	Move("@R*", 200, @-50, @0, Dxl1, false);
	FadeSt("R",200,true);
}
//�y�~�I�z
<voice name="�~�I" class="�~�I" src="voice/dm26/0000030b11">
"Charges are so kiddy nowadays!"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	DeleteAllSt(200,true);
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0020]
With their mischievous yells&, the three brats come raging 
through the store like a storm&.

{
	St("C",740, @0,@0,"st�H��_�ʏ�_worry");
	FadeSt("C",200,true);
}
//�y�H��z
<voice name="�H��" class="�H��" src="voice/dm26/0000040b07">
"Oh&, you three&. Welco-&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	DeleteAllSt(180,true);

	CreateSE("SE01","se�[��_�R�~�J��_�L���s��01");
	MusicStart("SE01",0,700,0,1000,null,false);

	St("L",730, @0,@0,"bu�L�I_�ʏ�_shout");
	FadeSt("L",180,true);
	FadeFFR("@StNameL/L*",0,1000,150,0,0,30,null, true);
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0021]
//�y�L�I�z
<voice name="�L�I" class="�L�I" src="voice/dm26/0000050b10">
"Ah&, enemy spotted!"

{
	CreateSE("SE01","se�[��_�R�~�J��_�L���s��01");
	MusicStart("SE01",0,700,0,1200,null,false);

	St("R",730, @0,@0,"bu�i�I_�ʏ�_shout");
	FadeSt("R",200,true);
	FadeFFR("@StNameR/R*",0,1000,150,0,0,30,null, true);
}
//�y�i�I�z
<voice name="�i�I" class="�i�I" src="voice/dm26/0000060b13">
"Spotted!"

{
	St("L",730, @0,@0,"bu�L�I_�ʏ�_normal");
	FadeSt("L",200,true);
}
//�y�L�I�z
<voice name="�L�I" class="�L�I" src="voice/dm26/0000070b10">
"We'll start our offensive now!"

{
	St("R",730, @0,@0,"bu�i�I_�ʏ�_normal");
	FadeSt("R",200,true);
}
//�y�i�I�z
<voice name="�i�I" class="�i�I" src="voice/dm26/0000080b13">
"Nowwww!!!"

{
	CreateSE("SE02","se�l��_����_���苎��q��01");
	MusicStart("SE02",0,700,0,1000,null,false);

	Move("@StNameL/L*", 200, @-50, @0, Dxl3, false);
	Move("@StNameR/R*", 200, @50, @0, Dxl3, false);
	DeleteAllSt(200,true);
}
{
	St("C",740, @0,@0,"bu�~�I_�ʏ�_shout2");
	FadeFFR("@StNameC/C*",0,1000,150,0,0,30,null, true);
	FadeSt("C",200,true);
}
//�y�~�I�z
<voice name="�~�I" class="�~�I" src="voice/dm26/0000090b11">
"Hey! Don't step on my toes!"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	SetVolumeEX("SE*", 1000, 0, null);

	Move("@StNameC/C*", 200, @0, @50, Dxl3, false);
	DeleteAllSt(200,true);

	St("C",740, @0,@0,"stAM�}�l����_�ʏ�_normal");
	FadeSt("C",200,true);
	Shake("@StNameC/C*", 150, 0, 5, 0, 0, 500, null, true);

	CreateSE("SE01","se����_����_�����}�l01L");
	MusicStart("SE01",0,700,0,1000,null,false);

	Move("@StNameC/C*", 500, @80, @0, Dxl1, false);
	DeleteAllSt(200,true);

	SetVolumeEX("SE*", 2000, 0, null);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0022]
The three brats find Bonjin-kun cleaning something and 
start running after him&.

Ren hides himself behind some boxes to avoid being stepped on&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	SetVolumeEX("SE*", 1000, 0, null);

	CreateSE("SE02","se�l��_����_���苎��q��01");
	MusicStart("SE02",0,700,0,1000,null,false);

	St("ML",730, @-50,@0,"st�L�I_�ʏ�_normal");
	Move("@StNameML/ML*", 200, @50, @0, Dxl3, false);
	FadeSt("ML",200,true);

	FadeFFR("@StNameML/ML*",0,1000,150,0,0,30,null, false);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0030]
//�y�L�I�z
<voice name="�L�I" class="�L�I" src="voice/dm26/0000100b10">
"Wait&, wait!! Don't run away!"

{
	SetVolumeEX("SE*", 1000, 0, null);
	CreateSE("SE02","se�l��_����_���苎��q��01");
	MusicStart("SE02",0,700,0,1000,null,false);

	Move("@StNameML/ML*", 200, @50, @0, Axl3, false);
	DeleteAllSt(180,true);

	St("MR",730, @50,@0,"st�i�I_�ʏ�_normal");
	Move("@StNameMR/MR*", 180, @-50, @0, Dxl3, false);
	FadeSt("MR",180,true);

	FadeFFR("@StNameMR/MR*",0,1000,150,0,0,30,null, false);
}
//�y�i�I�z
<voice name="�i�I" class="�i�I" src="voice/dm26/0000110b13">
"Wait&, wait!"

{
	Move("@StNameMR/MR*", 200, @-50, @0, Axl3, false);
	DeleteAllSt(180,true);

	St("C",740, @0,@0,"st�H��_�ʏ�_worry");
	FadeSt("C",180,true);
}
//�y�H��z
<voice name="�H��" class="�H��" src="voice/dm26/0000120b07">
"Ah&.&.&. You three&.&.&. Please don't run around like that&.&.&."

{
	DeleteAllSt(180,true);

	St("L",730, @-50,@0,"bu�L�I_�ʏ�_shout");
	Move("@StNameL/L*", 180, @50, @0, Dxl1, false);
	FadeSt("L",180,true);
}
//�y�L�I�z
<voice name="�L�I" class="�L�I" src="voice/dm26/0000130b10">
"Shut up&, baldy!"

{
	SetVolumeEX("@dm*", 1000, 0, null);

	St("R",740, @50,@0,"bu�i�I_�ʏ�_fear");
	Move("@StNameR/R*", 200, @-50, @0, Dxl1, false);
	FadeSt("R",200,true);
	Shake("@StNameR/R*", 150, 0, 10, 0, 0, 500, null, false);
}
//�y�i�I�z
<voice name="�i�I" class="�i�I" src="voice/dm26/0000140b13">
"Ba&.&.&. Ba? Bah- You idiot! Big bro!"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	DeleteAllSt(180,true);

	St("C",740, @0,@0,"st�H��_�ʏ�_normal2");
	FadeSt("C",180,true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0040]
//�y�H��z
<voice name="�H��" class="�H��" src="voice/dm26/0000150b07">
"&.&.&.&.&.&.&.Did you say something just now?"

{
	Fw("fw���t_�ʏ�_sigh");
}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm26/0000160a01">
"&.&.&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	DeleteFw();

	CreateTextureEXmul("�G����201", 201, 0, -530, "cg/data/slide_02_01_0.png");
	Move("�G����201", 3000, 0, 0, Dxl3, false);
	Fade("�G����201", 3000, 1000, null, false);
	CreateTextureEX("�G�w�i151", 151, 0, 0, "cg/ef/efbg�{��̋Ɖ�.jpg");
	CreateTextureEX("�G�w�i150", 150, 0, 0, "cg/ef/efbg�{��̋Ɖ�.jpg");
	Fade("�G�w�i151", 3000, 1000, null, false);
	Fade("�G�w�i150", 3000, 1000, null, false);

	CreateSE("SE��","se��_���R_��01L");
	MusicStart("SE��",3000,500,0,1000,null,true);

	Shake("�G�w�i151", 500000, 1, 0, 0, 0, 500, null, false);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0041]
Kio said a taboo word&, and a black aura leered over 
Haga-san's back&.

You'd think they'd learn not to do that by now&.&.&.

{
	SetVolumeEX("SE��", 3000, 700, null);
	Move("�G�w�i151", 8000, 0, -450, Dxl1, false);
	Move("�G�w�i150", 8000, 0, -450, Dxl1, false);

	St("C",740, @0,@0,"st�H��_�ʏ�_smile");
	FadeSt("C",200,true);
}
//�y�H��z
<voice name="�H��" class="�H��" src="voice/dm26/0000170b07">
"What was it&.&.&.? Could you say it once more? Go ahead&.
 Ba&.&.&.?"

{
	Fw("fw�L�I_�ʏ�_fear");
}
//�y�L�I�z
<voice name="�L�I" class="�L�I" src="voice/dm26/0000180b10">
"Wa-Wah&, wah!"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw�i�I_�ʏ�_fear");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0050]
//�y�i�I�z
<voice name="�i�I" class="�i�I" src="voice/dm26/0000190b13">
"Run away!"

{
	Fw("fw�~�I_�ʏ�_shout");
}
//�y�~�I�z
<voice name="�~�I" class="�~�I" src="voice/dm26/0000200b11">
"Boys are really stupid!"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	DeleteFw();

	SetVolumeEX("SE��", 1000, 0, null);

	CreatePlainSP("�G��", 990);
	Delete("�G����*");
	Delete("�G�w�i*");
	DeleteAllSt(0,true);
	FadeDelete("�G��", 200, null, true);

	CreateSE("SE01","se����_�h�A���}_��01");
	MusicStart("SE01",0,700,0,1000,null,false);
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0051]
At that moment&, the door bell rings and cuts into the 
lively atmosphere&.

{
	CreateSE("SE01","se�l��_����_���苎��q��01");
	MusicStart("SE01",0,700,0,1000,null,false);

	St("C",730, @50,@0,"st�L�I_�ʏ�_shout");
	Move("@StNameC/C*", 200, @-50, @0, Dxl3, false);
	FadeSt("C",200,true);
}
//�y�L�I�z
<voice name="�L�I" class="�L�I" src="voice/dm26/0000210b10">
"Run away&.&.&. Bffght!"{

	CreateSE("SE01","se�l��_����_�ߎC��25");
	MusicStart("SE01",0,500,0,1000,null,false);

	St("C",730, @0,@0,"st�L�I_�ʏ�_shock2");
	FadeSt("C",200,false);

	Move("@StNameC/C*", 500, @30, @0, Dxl3, false);
	Shake("@StNameC/C*", 500, 0, 15, 0, 0, 500, null, false);
	DeleteAllSt(500,false);
}<BR>

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	DeleteAllSt(200,true);
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0052]
Kio&, who had been running to the door&, runs into the 
customer entering the store&.

{
	St("MR",730, @0,@0,"st�~�I_�ʏ�_shock");
	FadeSt("MR",200,true);
}
//�y�~�I�z
<voice name="�~�I" class="�~�I" src="voice/dm26/0000220b11">
"Hey&, Kio!"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	St("ML",740, @0,@0,"st�i�I_�ʏ�_normal");
	FadeSt("ML",200,true);
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0060]
//�y�i�I�z
<voice name="�i�I" class="�i�I" src="voice/dm26/0000230b13">
"It's a customer!"

{
	DeleteAllSt(180,true);

	St("C",740, @0,@0,"st�H��_�ʏ�_worry");
	FadeSt("C",180,true);
}
//�y�H��z
<voice name="�H��" class="�H��" src="voice/dm26/0000240b07">
"Ah&, excuse me&.&.&.!"

Haga-san panics and his black aura disappears in a mere 
second&.

{
	St("L",730, @-30,@0,"st�L�I_�ʏ�_fear");
	FadeSt("L",200,true);
	Move("@StNameL/L*", 500, @30, @0, null, true);
}
//�y�L�I�z
<voice name="�L�I" class="�L�I" src="voice/dm26/0000250b10">
"I'm very sorry!"


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�����t�@�C��["dm2610.nss"]

}
