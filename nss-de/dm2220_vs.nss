//<continuation number="280">
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


scene dm2220_vs.nss_MAIN
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
	$GameName = "dm2230_vs.nss";

}


scene dm2220_vs.nss
{

	//���V�[���̓��ɕK���L�q
	$�X�N���v�g�o�[�W���� = " $Revision:  $";
	$�\���� = ModuleFileName();
	$�\���� = $SYSTEM_present_process;
	SystemInit();


//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\

	SoundPlay("@dm007a",0,450,true);

	PrintBG("��w�i", 30000);

	OnBG(10,"bg302012_5_�O���b�^�[����02");
	FadeBG(0,true);

	St("C",740, @0,@0,"st�m�C�Y_�ʏ�_normal");
	FadeSt("C",0,true);

	FadeDelete("��w�i", 0, null, true);

//===========================================
//�ȉ��A����
//===========================================

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0010]
{	St("C",740, @0,@0,"st�m�C�Y_�ʏ�_angry");
	FadeSt("C",200,true);}
//�y�m�C�Y�z
<voice name="�m�C�Y" class="�m�C�Y" src="voice/dm22/2000010a03">
"Let go of me&."

{	Fw("fw���t_�ʏ�_rage");}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm22/2000020a01">
"Shut up&, move your feet instead of your mouth! Run!"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	DeleteFw();
	DeleteAllSt(200,true);

	OnBG(10,"bg302021_5_�O���b�^�[����");
	FadeBG(500,true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0012]
I drag Noiz out of the room and move to go down the stairs&.

&.&.&.But&.


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	OnBG(10,"bg302051_5_�O���b�^�[�G���g�����X");
	FadeBG(500,true);

//���h�A���Ԃ��j���鉹
	CreateSE("SE01","se����_�O���b�^�[����_���J������01");
	MusicStart("SE01",0,700,0,1000,null,false);
	BGPlainShake(300,300,5,5,0,0,1000,Dxl1,true);

	Fw("fwm�`���s��A_�ʏ�_normal");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0013]
//�y�`���s���`�z
<voice name="�`���s���`" class="�`���s���`" src="voice/dm22/2000030e42">
"Hey!"

{	Fw("fwm�`���s��B_�ʏ�_normal");}
//�y�`���s���a�z
<voice name="�`���s���a" class="�`���s���a" src="voice/dm22/2000040e43">
"You're here aren't ya&, come out!"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);


//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0020]
Breaking down the door with a devastating crash&, several 
men enter into Glitter&, yelling loudly&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0021]
&.&.&.Are these the same guys Noiz was fighting yesterday?

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	OnBG(10,"bg302021_5_�O���b�^�[����");
	FadeBG(500,true);

	Fw("fw���t_�ʏ�_sigh3");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0024]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm22/2000050a01">
"Sure enough&, it's them&."

{	St("C",740, @0,@0,"st�m�C�Y_�ʏ�_normal");
	FadeSt("C",200,true);}
//�y�m�C�Y�z
<voice name="�m�C�Y" class="�m�C�Y" src="voice/dm22/2000060a03">
"Who're they?"

{	Fw("fw���t_�ʏ�_sigh");}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm22/2000070a01">
"They're the guys you sent flying yesterday&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	St("C",740, @0,@0,"st�m�C�Y_�ʏ�_normal2");
	FadeSt("C",200,true);
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0030]
//�y�m�C�Y�z
<voice name="�m�C�Y" class="�m�C�Y" src="voice/dm22/2000080a03">
"Aah&, that's some persistance&."

{	Fw("fw���t_�ʏ�_sigh");}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm22/2000090a01">
"Didn't I tell you yesterday&.&.&.?"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	DeleteFw();
//	DeleteAllSt(200,true);

	CreatePlainSP("�G��", 990);

	OnBG(10,"bg302061_5_�O���b�^�[�K�i");
	FadeBG(0,true);
	DeleteAllSt(0,true);

	FadeDelete("�G��", 800, null, true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0032]
I peek at the intruders&, trying to hide my presence&. 


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw�m�C�Y_�ʏ�_normal");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0033]
//�y�m�C�Y�z
<voice name="�m�C�Y" class="�m�C�Y" src="voice/dm22/2000100a03">
"Not going down?"

{
	FwPro("fw���t_�ʏ�_normal2",2800,"fw���t_�ʏ�_angry");
//	Fw("fw���t_�ʏ�_normal2");
}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm22/2000110a01">
"If we go down&, we'd be caught on the spot&. We need to
 lower their numbers first&."

{	Fw("fw�m�C�Y_�ʏ�_normal2");}
//�y�m�C�Y�z
<voice name="�m�C�Y" class="�m�C�Y" src="voice/dm22/2000120a03">
"&.&.&.Yeah&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);


	FwPro("fw���t_�ʏ�_worry4",3950,"fw���t_�ʏ�_rage");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0041]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm22/2000130a01">
"You cooperate too&. Okay&.&.&. Let's go!"


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	SetVolumeEX("@dm*", 0, 0, null);

	CreateSE("SE01","se�퓬_����_������01");
	MusicStart("SE01",0,700,0,1000,null,false);

	CreateColorSP("�G����", 5000, "000000");
	DrawTransition("�G����", 250, 0, 1000, 100, null, "cg/data/slide_04_00_0.png", true);

	OnBG(10,"bg302051_5_�O���b�^�[�G���g�����X");
	FadeBG(0,true);

	DrawDelete("�G����", 250, 100, null, "slide_04_01_1", true);

	SoundPlay("@dm009",0,450,true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0042]
The two of us dash down the stairs&.

When there are only ten steps left&, I grasp the handrail 
and kick my body forward&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	CreateSE("SE01","se�퓬_�Ō�_���؂��02");
	CreateSE("SE02","se�퓬_�Ō�_�q�b�g��01");

	CreateColorSP("�G�F��", 4000, "FFFFFF");
	CreateTextureEX("�GEV", 2000, 0, Middle, "cg/ev/ev900���t�R��ėp.jpg");
	Request("�GEV", Smoothing);
	Move("�GEV", 0, -512, @0, null, true);
	Zoom("�GEV", 0, 2500, 2500, null, true);
	Fade("�GEV", 0, 1000, null, true);

	Move("�GEV", 400, 0, @0, Dxl1, false);
	Zoom("�GEV", 400, 1000, 1000, null, false);

	MusicStart("SE01",0,700,0,1000,null,false);
	Fade("�G�F��", 100, 0, null, true);
	Wait(300);
	MusicStart("SE02",0,700,0,1000,null,false);
	Fade("�G�F��", 50, 1000, null, true);
	Delete("�GEV");

//	CreateSE("SE03","se�l��_�Ռ�_�]�|01");
//	MusicStart("SE03",0,700,0,1000,null,false);

	FadeDelete("�G�F��", 50, null, true);

//	Fw("fw���t_�ʏ�_shout");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0043]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm22/2000140a01">
"Uryah!!"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	DeleteFw();

//	CreateSE("SE02","se�퓬_�Ō�_���؂荂01");
//	MusicStart("SE02",0,700,0,1000,null,false);

	CreateColorEXadd("�G�F��", 4000, "FFFFFF");
	Fade("�G�F��", 150, 1000, Dxl1, true);
	Wait(30);

	CreateSE("SE01","se�퓬_�Ō�_�q�b�g��02");
	MusicStart("SE01",0,700,0,1000,null,false);

	FadeDelete("�G�F��", 70, Dxl1, true);

	Fw("fwm�`���s��A_�ʏ�_normal");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0044]
//�y�`���s���`�z
<voice name="�`���s���`" class="�`���s���`" src="voice/dm22/2000150e42">
"Guaah!?"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	DeleteFw();

	CreateSE("SE01","se�l��_�Ռ�_�]�|02����");
	MusicStart("SE01",0,700,0,1000,null,false);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0045]
I hit the man's face at the base of the stairs with my 
knee&. The man falls on his back&, and the guy behind him 
is crushed under him&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

{	Fw("fwm�`���s��B_�ʏ�_normal");}
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0046]
//�y�`���s���a�z
<voice name="�`���s���a" class="�`���s���a" src="voice/dm22/2000160e43">
"You asshole!"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw���t_�ʏ�_rage");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0050]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm22/2000170a01">
"Hah!"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	DeleteFw();

	CreateSE("SE01","se�퓬_����_����01");

	CreateTextureEX("�G�d�u", 1100, -361, -268, "cg/ev/ev920�m�C�Y�ːi.jpg");
	Request("�G�d�u", Smoothing);
	Zoom("�G�d�u", 0, 2000, 2000, null, true);
	SetBlur("�G�d�u", true, 2, 200, 30, false);

	MusicStart("SE01",0,700,0,1000,null,false);
	Fade("�G�d�u", 0, 1000, null, false);
	Move("�G�d�u", 200, 0, 0, Dxl1, false);
	Zoom("�G�d�u", 200, 1000, 1000, null, true);

	CreateSE("SE01","se�퓬_�Ō�_�q�b�g��04");
	MusicStart("SE01",0,700,0,1000,null,false);
	CreateColorSPadd("�G�F��", 4000, "FFFFFF");
	Wait(30);
	Delete("�G�d�u*");
	FadeDelete("�G�F��", 70, null, true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0051]
When the downed man makes an attempt to stand up&, Noiz 
bashes him with his knuckles&.


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	CreateSE("SE03","se�l��_�Ռ�_�]�|01");
	MusicStart("SE03",0,700,0,1000,null,false);

	Fw("fwm�`���s��B_�ʏ�_normal");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0052]
//�y�`���s���a�z
<voice name="�`���s���a" class="�`���s���a" src="voice/dm22/2000180e43">
"Uagh!"

{	St("C",740, @0,@0,"st�m�C�Y_�ʏ�_angry");
	FadeSt("C",200,true);}
//�y�m�C�Y�z
<voice name="�m�C�Y" class="�m�C�Y" src="voice/dm22/2000190a03">
"So irritating&. Let's go already&."

{	Fw("fw���t_�ʏ�_rage");}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm22/2000200a01">
"You're the one who made this mess!"


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	DeleteFw();
	DeleteAllSt(200,true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0055]
Anyway&, we have to get outside&.&.&.!

Making our escape&, we rush at them together&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

//���ǂ��A�΂����ƃP���J���Ă鉹
	CreateSE("SE01","se�퓬_�Ō�_���؂��01");
	MusicStart("SE01",0,700,0,1000,null,false);

	CreateColorEX("�G�F��", 4000, "BLACK");
	Fade("�G�F��", 150, 1000, Dxl1, true);
	Wait(30);

	CreateTextureSP("�G�d�u", 1100, Center, Middle, "cg/ev/ev900���t�R��ėp.jpg");
	FadeDelete("�G�F��", 70, Dxl1, true);

//	CreateSE("SE01","se�퓬_�Ō�_�q�b�g��02");
//	MusicStart("SE01",0,700,0,1000,null,false);
//	CreateColorSPadd("�G�F��", 4000, "FFFFFF");
//	Wait(30);
//	Delete("�G�d�u*");
//	FadeDelete("�G�F��", 70, null, true);


//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0060]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm22/2000210a01">
"Orrryah!"


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	CreateSE("SE01","se�퓬_�Ō�_���؂荂01");
	MusicStart("SE01",0,700,0,1000,null,false);
	CreateColorEX("�G�F��", 4000, "BLACK");
	Fade("�G�F��", 150, 1000, Dxl1, true);
	Wait(30);
	CreateTextureSP("�G�d�u", 1100, Center, Middle, "cg/ev/ev920�m�C�Y�ːia.jpg");
	FadeDelete("�G�F��", 70, Dxl1, true);

//	CreateSE("SE02","se�퓬_�Ō�_�q�b�g��04");
//	MusicStart("SE02",0,700,0,1000,null,false);
//	CreateColorSPadd("�G�F��", 4000, "FFFFFF");
//	Wait(30);
//	Delete("�G�d�u*");
//	FadeDelete("�G�F��", 70, null, true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0061]
//�y�m�C�Y�z
<voice name="�m�C�Y" class="�m�C�Y" src="voice/dm22/2000220a03">
"&.&.&.&.&."


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	CreateSE("SE01","se�퓬_�Ō�_�q�b�g����01");
	MusicStart("SE01",0,700,0,1000,null,false);
	CreateColorSP("�G�F��", 4000, "FFFFFF");
	Wait(30);
	Delete("�G�d�u");
	FadeDelete("�G�F��", 70, null, true);

	CreateSE("SE01","se�퓬_�Ō�_�q�b�g��02");
	MusicStart("SE01",0,700,0,1000,null,false);

	CreateSE("SE02","se�퓬_�Ō�_�q�b�g��04");
	MusicStart("SE02",0,700,0,1000,null,false);
	CreateColorSPadd("�G�F��", 4000, "FFFFFF");
	Wait(30);
	Delete("�G�d�u*");
	FadeDelete("�G�F��", 70, null, true);

{	Fw("fwm�`���s��C_�ʏ�_normal");}
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0062]
//�y�`���s���b�z
<voice name="�`���s���b" class="�`���s���b" src="voice/dm22/2000230e44">
"Uuoh! Shit&.&.&.!"


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	DeleteFw();

//����������p�g�J�[�̃T�C�����A�u���[�L��
	CreateSE("SE11","se�敨_�p�g�J�[_�T�C����01L");
	MusicStart("SE11",0,10,0,1000,null,true);
	SetVolumeEX("SE11", 2000, 700, null);

	Wait(1000);

//���r�d�F�ǂ��ǂ��ƌx���������ߕt���Ă���

{	Fw("fw���t_�ʏ�_shock2");}
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0069]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm22/2000240a01">
"!"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw�m�C�Y_�ʏ�_angry2");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0070]
//�y�m�C�Y�z
<voice name="�m�C�Y" class="�m�C�Y" src="voice/dm22/2000250a03">
"Tch&."


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	DeleteFw();

	CreateSE("SE01","se�l��_����_����04����");
	MusicStart("SE01",0,10,0,1000,null,false);
	SetVolumeEX("SE01", 400, 700, null);

	SetVolume("SE11", 500, 0, null);

	Wait(1000);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0071]
We fail to slip out&, the threatening sirens and footsteps 
approaching us&.


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	SetVolume("SE01", 200, 0, null);
{	Fw("fwm�x��C_�ʏ�_normal");}
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0072]
//�y�x���`�z
<voice name="�x���`" class="�x���`" src="voice/dm22/2000260e15a">
"Hey&, you there! What are you doing!"

{	FwPro("fw���t_�ʏ�_rage",2550,"fw���t_�ʏ�_shout");}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm22/2000270a01">
"Agh&, come on&, damn! Noiz let's go!"

{	Fw("fwm�`���s��C_�ʏ�_normal");}
//�y�`���s���b�z
<voice name="�`���s���b" class="�`���s���b" src="voice/dm22/2000280e44">
"Wait&, you bastards!"


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

//	SetVolumeEX("@dm*", 3000, 0, null);
	CreateSE("SE01","se�퓬_����_����01a");
	MusicStart("SE01",0,700,0,1000,null,false);
	CreateColorSP("�G����", 5000, "000000");
	DrawTransition("�G����", 250, 0, 1000, 100, Dxl1, "cg/data/slide_01_01_0.png", true);

	OnBG(10,"bg302051_5_�O���b�^�[�O�ʂ�");
	FadeBG(0,true);

	DrawDelete("�G����", 250, 100, Dxl1, "slide_01_01_1", true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0080]
Successfully dodging the guys who persistently throw 
themselves at us&, we go out through the front door&. 

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	SetVolumeEX("@dm*", 3000, 0, null);

//�����t�@�C��["dm2230_vs.nss"]

}
