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


scene dm2630ed.nss_MAIN
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
	#ev263�m�C�YGOODED=true;

	//�����[�g�t���O�A�I�����A����GameName
	$PreGameName = $GameName;
	$GameName = "dm9999.nss";


	//���G���h���[��
	PreSetRoll(10);
	TheEND(10);

#GDED2=1;//�m�C�Y�O�b�h�G���h�t���O�擾

}


scene dm2630ed.nss
{

	//���V�[���̓��ɕK���L�q
	$�X�N���v�g�o�[�W���� = " $Revision:  $";
	$�\���� = ModuleFileName();
	$�\���� = $SYSTEM_present_process;
	SystemInit();


//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\

	SoundPlay("@dm003",0,450,true);

	PrintBG("��w�i", 30000);

	OnBG(10,"bg102011_5_���}�X��");
	FadeBG(0,true);

	St("ML",720, @0,@0,"st�~�I_�ʏ�_shout2");
	St("MR",720, @0,@0,"st�m�C�Y_�X�[�c_normal");
	FadeAllSt(0,true);

	FadeDelete("��w�i", 0, null, true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0010]
{	DeleteAllSt(200,true);

	CreateSE("SE01","se�l��_����_�ߎC��02");
	MusicStart("SE01",0,700,0,1000,null,false);

	CreateTextureEX("�G�w�i100", 100, -458, -414, "cg/bg/l/bg102011_5_���}�X��_l.jpg");
	Move("�G�w�i100", 500, -458, -364, Dxl1, false);
	Fade("�G�w�i100", 500, 1000, null, true);}
After he said that&, Noiz turned around to me and jumped 
over the counter&.

What? What does he want now?

{
	Fw("fw�m�C�Y_�X�[�c_smile2");
}
//�y�m�C�Y�z
<voice name="�m�C�Y" class="�m�C�Y" src="voice/dm26/3000010a03">
"Since I have this guy&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	DeleteFw();
	CreateSE("SE01","se�l��_����_�ߎC��17");
	MusicStart("SE01",0,700,0,1000,null,false);

	CreatePlainSP("�G��", 990);
	Shake("�G��", 200, 0, 15, 0, 2, 500, null, true);
	Delete("�G��");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0011]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm26/3000020a01">
"!? Uwah!"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	CreateTextureEX("�G�d�u101", 101, Center, Middle, "cg/ev/ev263�m�C�YGOODED.jpg");
	CreateTextureEX("�G�d�u100", 100, -306, -575, "cg/ev/l/ev263�m�C�YGOODED_l.jpg");
	Move("�G�d�u100", 1000, -613, -334, Dxl3, false);
	Fade("�G�d�u100", 1000, 1000, null, true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0012]
When I try to guess what he's about to do&, Noiz suddenly 
picks me up&.

{
	Fw("fw�H��_�ʏ�_smile");
}
//�y�H��z
<voice name="�H��" class="�H��" src="voice/dm26/3000030b07">
"Young men sure are strong&."

{
	Fw("fwAM�@_�ʏ�_normal");
}
//�y�@�z
<voice name="�@" class="�@" src="voice/dm26/3000040a06">
"Aoba&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	DeleteFw();

	CreateSE("SE01","se�l��_����_�ߎC��17");
	MusicStart("SE01",0,600,0,1000,null,false);

	Move("�G�d�u100", 500, -613, -165, Dxl3, true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0020]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm26/3000050a01">
"-Hey&, you! Let me down&, idiot! What're you doing&,
 asshole!?"

//�y�m�C�Y�z
<voice name="�m�C�Y" class="�m�C�Y" src="voice/dm26/3000060a03">
"Don't be so rowdy&. You'll fall&."

{
	Fw("fw�~�I_�ʏ�_shock");
}
//�y�~�I�z
<voice name="�~�I" class="�~�I" src="voice/dm26/3000070b11">
"Hey&.&.&.!"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0021]
//�y�m�C�Y�z
<voice name="�m�C�Y" class="�m�C�Y" src="voice/dm26/3000080a03">
"Sorry&. But you'll be a fine girl someday&."

{
	Fw("fw�~�I_�ʏ�_normal");
}
//�y�~�I�z
<voice name="�~�I" class="�~�I" src="voice/dm26/3000090b11">
"&.&.Hmph! I know that even if you didn't tell me! I'm going
 to find a better man than you someday&, too!"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fwAM�@_�ʏ�_normal");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0030]
//�y�@�z
<voice name="�@" class="�@" src="voice/dm26/3000100a06">
"Aoba&. Your pulse rate has suddenly jumped&. Your heart
 seems as if it's about to burst&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);


//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0040]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm26/3000110a01">
"You don't have to report on something like that!!"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0041]
&.&.&.I just can't understand some things&.

That power again&.&.&.

I don't know what's happened to Scrap or that guy&, or if 
he'll ever come out again&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	Move("�G�d�u100", 600, -613, -205, Dxl3, false);
	Fade("�G�d�u101", 600, 1000, null, true);
	Delete("�G�d�u100");

	Wait(500);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0042]
{
	SetVolumeEX("@dm*", 2000, 0, null);
	SoundPlay("@dmedgood",0,450,false);
}
But I have a feeling it's all right now&.

They're all here for me&.

Noiz told me himself&.
That no matter what happens to me&, he'll definitely think 
of a way&.

That's not a definite promise&, but it is reassuring&.

So&.&.&.

I think it'd be fine if I enjoyed myself a little more&.&.&.? Maybe&.

I can live out my life in these unchanging&, peaceful days&.


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	ClearFadeAll(3000, true);

	Wait(1000);

//�����t�@�C��["dm9999.nss"]

}
