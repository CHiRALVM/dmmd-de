//<continuation number="100">
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


scene dm4550.nss_MAIN
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

	#dm4550_Add1=true;

	//�����[�g�t���O�A�I�����A����GameName
	$PreGameName = $GameName;
	$GameName = "dm4560.nss";

}


scene dm4550.nss
{

	//���V�[���̓��ɕK���L�q
	$�X�N���v�g�o�[�W���� = " $Revision:  $";
	$�\���� = ModuleFileName();
	$�\���� = $SYSTEM_present_process;
	SystemInit();


//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\

//�����o�F��ʈÓ]�^��ʓ]��

	PrintBG("��w�i", 30000);

	OnBG(10,"bg102011_5_���}�X��");
	FadeBG(0,true);

	FadeDelete("��w�i", 1000, null, true);

	Fw("fw���t_�ʏ�_rage");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0010]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm45/5000010a01">
"&.&.&.All right&."

{
	Fw("fw���t_�ʏ�_shout");

	CreateSE("SE01","se�퓬_�Ռ�_���������e01");
	MusicStart("SE01",0,700,0,1000,null,false);

	SetVolumeEX("SE*", 1000, 0, null);

	CreatePlainSP("�G��", 990);
	Shake("�G��", 1000, 0, 20, 0, 0, 500, null, false);
}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm45/5000020a01">
"I thought I told you to listen to people when they're
 talking!"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Delete("�G��");

	St("L",730, @0,@0,"st�L�I_�ʏ�_shout");
	St("C",740, @0,@0,"st�i�I_�ʏ�_shout");
	St("R",730, @0,@0,"st�~�I_�ʏ�_shout");
	FadeFFR("@StNameL/L*",0,1000,150,0,0,30,null, false);
	FadeFFR("@StNameC/C*",0,1000,150,0,0,30,null, false);
	FadeFFR("@StNameR/R*",0,1000,150,0,0,30,null, false);
	FadeAllSt(200,true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0011]
//������
//�y�L�I�z
//<voice name="�L�I" class="�L�I" src="voice/dm45/5000030b10">
"Waaaaahhhh!!!"{WaitAddText2();}
<BR>

//������
//�y�i�I�z
//<voice name="�i�I" class="�i�I" src="voice/dm45/5000040b13">
//�u��[�[�[�[�[�I�I�I�v

//������
//�y�~�I�z
//<voice name="�~�I" class="�~�I" src="voice/dm45/5000050b11">
//�u��[�[�[�[�[�I�I�I�v

</PRE>
	SetText();
	AddText(1,""Wah!!!!!"","�~�I","dm00/3000240b11",false,true,1000);
	AddText(2,""Wah!!!!!"","�L�I","dm00/3000250b10",false,true,1000);
	AddText(3,""Wah!!!!!"","�i�I","dm00/3000260b13",false,true,1000);
	TypeBeginD();//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	CreateSE("SE02","se�l��_����_���苎��q��01");
	MusicStart("SE02",0,700,0,1000,null,false);

	Move("@StNameL/L*", 200, @-100, @0, Dxl3, false);
	Move("@StNameC/C*", 200, @-100, @0, Dxl3, false);
	Move("@StNameR/R*", 200, @-100, @0, Dxl3, false);
	DeleteAllSt(200,true);

	CreateSE("SE01","se����_�h�A���}_��01");
	MusicStart("SE01",0,700,0,1000,null,false);

	SetVolumeEX("SE02", 1000, 0, null);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0020]
When I yell at them&, the trio of brats speed out of the 
store&.


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	SoundPlay("@dm001",0,450,true);

	Fw("fw���t_�ʏ�_sigh3");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0021]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm45/5000060a01">
"&.&.&.Jeez&."


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0022]
I sigh and look around the store&.
The goods are all over the place because those kids were 
messing around&.


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw���t_�ʏ�_sigh2");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0023]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm45/5000070a01">
"Ah&, man&."


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0024]
The three siblings still come and wreak havoc in the store&,
as usual&. I scold them but they never learn their lessons&.
It's still peaceful&, really&.&.&. That's what I've been 
thinking lately&.

But as I thought&, it can never be the same as it was 
before&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	CreateSE("SE01","se����_����_�����}�l01L");
	MusicStart("SE01",0,700,0,1000,null,false);

	St("R",740, @50,@0,"stAM�}�l����_�ʏ�_normal");
	FadeSt("R",200,false);
	Move("@StNameR/R*", 2500, @-150, @0, Dxl3, false);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0030]
//�y�}�l����z
<voice name="�}�l����" class="�}�l����" src="voice/dm45/5000080e59">
"Cleaning&.&.&. Cleaning&.&.&."

{
	Fw("fw���t_�ʏ�_fake");
}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm45/5000090a01">
"I'll help out in a second&."


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	SetVolumeEX("SE*", 1000, 0, null);
	DeleteFw();
	DeleteAllSt(200,true);

	CreateSE("SE01","se�l��_����_�ߎC��05");
	MusicStart("SE01",0,700,0,1000,null,false);
	SetVolumeEX("SE*", 1000, 0, null);

	CreateTextureEX("�G�w�i100", 100, Center, -473, "cg/bg/l/bg102011_5_���}�X��_l.jpg");
	Move("�G�w�i100", 1000, @0, -573, Dxl1, false);
	Fade("�G�w�i100", 1000, 1000, null, true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0031]
Bonjin-kun just looks so pitiful&, so I crouch down and pickup scattered goods around the floor with him&.

And then I feel a flash of deja vu&.
I think I've done something like this before&.&.&.

&.&.&.Oh yeah&. I remember&.

When I was driving away the kids once&, I heard a loud 
noise and checked outside&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0040]
And that was when I met Clear&.

He jumped from the roof and fell flat on the ground&.&.&.


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	SetVolumeEX("@dm*", 3000, 0, null);

	Fw("fw���t_�ʏ�_worry");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0041]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm45/5000100a01">
"&.&.&.&.&."


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0042]
No matter how long I wait&, it'll never happen again&.

&.&.&.Of course it won't&.

Even though I know it&, a pain starts to prick my chest&, 
but I just focus on cleaning up&.

{
	FadeDelete("�G�w�i100", 500, null, true);
}
Things can always be changed&.
Change always keeps happening&.

So even I&.&.&. need to keep going forwards&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	ClearFadeAll(1000, true);

	Wait(2000);

//�����t�@�C��["dm4560.nss"]

}
