//<continuation number="80">
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


scene dm2010.nss_MAIN
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
	$GameName = "dm2020_vs.nss";

}


scene dm2010.nss
{

	//���V�[���̓��ɕK���L�q
	$�X�N���v�g�o�[�W���� = " $Revision:  $";
	$�\���� = ModuleFileName();
	$�\���� = $SYSTEM_present_process;
	SystemInit();


//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\

	SoundPlay("@dm009",0,450,true);

	PrintBG("��w�i", 30000);

	CreateColorSP("�G�F��", 5000, "000000");

	OnBG(10,"bg101022_5_���Z����ʂ藠�H�n02");
	FadeBG(0,true);

	Delete("��w�i");

	CreateSE("SE12","se�l��_����_����01L");//�������u�r�d�Fse�l��_����_����01L�v
	MusicStart("SE12",0,500,0,1000,null,true);

	DrawDelete("�G�F��", 250, 100, null, "slide_01_01_1", true);

//==============================
//���m�C�Y�̏ꍇ�F
//==============================

	Fw("fw���t_�ʏ�_rage");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0010]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm20/1000010a01">
"&.&.&.Gah&, dammit&.&.&.!"


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	CreateSE("SE11","se�l��_����_����01L");//�������u�r�d�Fse�l��_����_����01L�v
	MusicStart("SE11",4000,500,0,900,null,true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0011]
I dash through the alleyways looking for an escape route&.

I hear the faint sound of footsteps making their way 
towards me&.

Is it a cop&.&.&.?

{	SetVolumeEX("SE11", 2000, 800, null);}
The footsteps approach quickly&. Too quickly&.

Even if I speed up I probably won't be able to get away&.

Oh shit&, he's catching up&.&.&.!


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//���������ߕt���Ă��đ��t�ƕ���

	SetVolumeEX("SE11", 1000, 700, null);

	Fw("fw�m�C�Y_�ʏ�_normal2");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0019]
//�y�m�C�Y�z
<voice name="�m�C�Y" class="�m�C�Y" src="voice/dm20/1000020a03">
"&.&.&.I won't let you escape&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw���t_�ʏ�_shock2");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0020]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm20/1000030a01">
"! Noiz!?"


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0021]
I was almost positive it was a cop&, but Noiz is 
the one who runs up next to me instead&.

I run at a considerable speed&, but Noiz remains calm and 
doesn't seem out of breath at all&.

I'm a little perturbed by the fact that Noiz is the one 
who showed up&, but it's better than being alone&.


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw���t_�ʏ�_rage");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0024]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm20/1000040a01">
"I'm not running from you&, I'm running from the cops!"

{
	FwPro("fw�m�C�Y_�ʏ�_normal2",2200,"fw�m�C�Y_�ʏ�_serious");
}
//�y�m�C�Y�z
<voice name="�m�C�Y" class="�m�C�Y" src="voice/dm20/1000050a03">
"I know&.&.&.!"


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	SetVolumeEX("SE11", 1000, 0, null);
	SetVolumeEX("SE12", 300, 0, null);

	CreateSE("SE01","se�l��_����_���01");
	MusicStart("SE01",0,750,0,1000,null,false);

//�[�F�����t�䎌�@�ǉ��C�����L�ڂ��܂����B
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0026]
We continue running until Noiz suddenly stops&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	CreateSE("SE02","se�l��_����_���n02");
	MusicStart("SE02",0,800,0,1000,null,false);

	Fw("fw���t_�ʏ�_shout");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0027]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm20/1000051a01">
"Wha- hey-!"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0028]
Before he stopped&, he was in front of me&, and I almost 
bumped into him when he suddenly came to a halt&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw���t_�ʏ�_rage");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0030]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm20/1000060a01">
"Hey&.&.&.!"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

{	St("C",740, @0,@0,"st�m�C�Y_�ʏ�_angry");
	FadeSt("C",200,true);}
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0031]
//�y�m�C�Y�z
<voice name="�m�C�Y" class="�m�C�Y" src="voice/dm20/1000070a03">
"&.&.&.It's coming&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	DeleteAllSt(200,true);
	SetVolumeEX("@dm*", 500, 0, null);

	PrintGO("��w�i", 30000);
	OnBG(10,"bg101022_5_���Z����ʂ藠�H�n02");
	FadeBG(0,true);
	FadeDelete("��w�i", 0, null, true);

	CreateSE("SE01","se�[��_���C��_�����G���J�E���g01");
	MusicStartSet("SE01",700,0,1000,null,false);
	CreateSE("SE02","se�퓬_�Ռ�_�h�ǔ���01");
	MusicStartSet("SE02",700,0,1000,null,false);

	CreateColorEXadd("�G�F��", 5000, "FFFFFF");
	CreatePlainEX("�G��", 100);

	CreateProcessEX("�v���Z�X", "Proc_dm2010_01Act");
	Request("�v���Z�X", Start);

	FwPro("fw���t_�ʏ�_rage",1000,"fw���t_�ʏ�_shock2");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0032]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm20/1000080a01">
"What's&.&.&. Uh!"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	//TextBoxDelete(0);

	if($Proc_dm2010_01Act==true){
	}else{
	TextBoxDelete(0);
	WaitPlay("�v���Z�X", null);

	}
	Request("�v���Z�X", Stop);
	Request("@SE01", Disused);
	Request("@SE02", Disused);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0040]
With a jerk&, I feel the floor give out from under me&.
This is&.&.&.!

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	CreateMaskEX("�G��", 0, Center, Middle, "cg/data/slide_02_00_1.png", false);
	SetVertex("�G��", center, top);
	CreateColorEX("�G��/�G�F��", 5000, "000000");

	Zoom("�G��", 2000, 1000, 2000, Axl3, false);
	Move("�G��", 20000, @0, 1152, null, false);

	Fade("�G��/�G�F��", 500, 1000, null, false);
	Zoom("�G��", 5000, 1000, 20000, AxlDxl, true);

	CreateSE("@EFWIN/SE01","se�[��_���C��_�����g01L");
	Request("@EFWIN/SE01", Lock);
	MusicStart("@EFWIN/SE01",2000,700,0,500,null,true);
	$nextrhymescene="dm2020_vs.nss";

//�����t�@�C��["dm2020_vs.nss"]

}
