//<continuation number="260">
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


scene dm1260.nss_MAIN
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
	$GameName = "dm1270.nss";


	RainDropDelete(0);//���̃R�}���h�ŉJ�����Ă��������A�O�̂��߂Ƀt�@�C���o�鎞�ɂ��L�ڂ��Ă����ĉ�����
	RainDropDelete2(0);//���̃R�}���h�ŉJ�����Ă��������A�O�̂��߂Ƀt�@�C���o�鎞�ɂ��L�ڂ��Ă����ĉ�����


}


scene dm1260.nss
{

	//���V�[���̓��ɕK���L�q
	$�X�N���v�g�o�[�W���� = " $Revision:  $";
	$�\���� = ModuleFileName();
	$�\���� = $SYSTEM_present_process;
	SystemInit();


//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\

	PrintBG("��w�i", 30000);

//�e�F���L�w�i�A���u�̍�������ł����H
	CreateColorSP("�G�F��", 5000, "000000");
	CreateColorSP("�G����", 200, "000000");

	OnBG(10,"bg301021_5_�v���`�i�W�F�C�����ʂ�1��");
	FadeBG(0,true);

	CreateTextureSPadd("�G�w�i", 100, Center, Middle, "cg/bg/bg301021_5_�v���`�i�W�F�C�����ʂ�1��.jpg");
	SetShade("�G�w�i", LIGHT);

	RainDrop(1000,0,16);
	RainDrop2(501,0,64);

	CreateSE("SE11","se��_���R_�J01L");
	MusicStart("SE11",1500,200,0,1000,null,true);

	Fade("�G����", 0, 400, null, true);

	Delete("��w�i");
	DrawDelete("�G�F��", 1000, 100, null, "blind_01_00_1", true);

	Wait(300);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0010]
With the rain and the glittering illuminations from 
decorations&, people still enjoy themselves while walking 
down the wet streets&.

I'm a bit nervous out here&, so I walk on the edge of the 
street&.

The rain is light&, but the feeling of my hair being 
drenched is an upleasant one&.

Even so&, right now I don't have the energy or motivation 
to do anything about it&.


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	CreateColorSP("�G�F��", 5000, "000000");
	DrawTransition("�G�F��", 1000, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);

	CreateTextureSPadd("�G�w�i", 100, Center, Middle, "cg/bg/bg303011_5_��y�{�݊O�ϓ�������b�h.jpg");
	CreateMovieSP("���P", 200, Center, Middle, true, true, "dx/mvk100.ngs");
	OnBG(10,"bg303011_5_��y�{�݊O�ϓ�������b�h");

	SetShade("�G�w�i", LIGHT);

	Fade("���P", 0, 500, null, true);
	FadeBG(0,true);

	Zoom("���P", 0, 3000, 3000, null, true);

	Wait(500);

	DrawDelete("�G�F��", 1000, 100, null, "blind_01_00_1", true);

	Wait(300);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0014]
Without thinking about anything&, I just keep on walking&. I eventually end up in front of the club&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw���t_�ʏ�_worry");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0015]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm12/6000010a01">
"&.&.&.&.&."


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);


//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0016]
I don't have any desire to go in&, but I lean on a wall nearit&.

The wall is freezing cold and completely wet&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	SetVolumeEX("SE11", 1000, 1, null);

	CreateColorEX("�G�F��", 5000, "000000");
	Fade("�G�F��", 500, 1000, Dxl1, true);
	Fade("�G����", 0, 0, null, true);

	CreateColor("�G��", 3000, 0, 0, 1024, 768, #624a2b);
	SetAlias("�G��","�G��");
	Request("�G��", OverlayRender);
	CreateTextureSPmul("�G���ߋ�", 3001, Center, Middle, "cg/ef/effi��z01.jpg");
	CreateTextureSP("�G���w�i", 1500, Center, Middle, "cg/ev/ev124�g����������a.jpg");

	Fade("�G�F��", 1000, 0, Dxl1, true);

	Wait(200);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0017]
Just being outside makes it feel like that incident was 
just a dream&.

But it wasn't&.

I can still feel the pain from Koujaku's grip on my arm&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	CreateColorEX("�G�F��", 5000, "000000");
	Fade("�G�F��", 500, 1000, Dxl1, true);

	Delete("�G��*");
	Fade("�G����", 0, 400, null, true);

	SetVolumeEX("SE*", 1000, 200, null);
	Fade("�G�F��", 1000, 0, Dxl1, true);

//	Wait(300);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0020]
&.&.&.I wonder if he's going to come back&.

I don't know if he ever will&.

Even if he did&, would he even help me as far as to get to 
Toue?

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//���G�ꂽ�����i����j
	CreateSE("SE01","se�l��_����_������01�������");
	MusicStart("SE01",0,450,0,1600,null,false);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0030]
I wonder about it&, and then suddenly hear the sound of 
water splashing&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	SetVolumeEX("SE01", 1000, 0, null);
	CreateColorSP("�G����", 16000, "BLACK");
	DrawTransition("�G����", 500, 0, 1000, 100, null, "cg/data/slide_01_00_0.png", true);

	CreateTextureSP("�G��w�i", 101, -482, Middle, "cg/bg/l/bg303011_5_��y�{�݊O�ϓ�������b�h_l.jpg");
	CreateTextureSP("�G��w�i��", 100, -482, Middle, "cg/bg/l/bg303011_5_��y�{�݊O�ϓ�������b�h_l.jpg");
	CreateTextureSP("�G�嗧�G", 700, 0, Middle, "cg/fu/fu����_�ʏ�P_normal.png");
	CreateTextureSP("�G�嗧�G�\", 701, 0, Middle, "cg/fu/fu����_�ʏ�P_normal.png");

	SetShade("�G��w�i��", MEDIUM);
	SetShade("�G�嗧�G�\", HEAVY);

	Delete("��*");

	Move("�G��w*", 2000, @-30, @0, Dxl1, false);
	Move("�G�嗧*", 2000, @-100, @0, Dxl1, false);
	Fade("�G�嗧�G�\", 1500, 0, null, false);
	Fade("�G��w�i", 1500, 0, null, false);
	SetVolumeEX("SE*", 500, 700, null);
	DrawDelete("�G����", 500, 100, null, "slide_01_00_1", true);

	Wait(2000);

	CreatePlainSP("�G��", 5000);

	Delete("�G��*");

	CreateMovieSP("���P", 200, 0, 400, true, true, "dx/mvk100.ngs");
	Zoom("���P", 0, 3000, 3000, null, true);

	Move("���P", 0, 270, 230, null, true);

	St("C",740, @0,@0,"bu����_�ʏ�P_pride");
	FadeSt("C",0,true);

	SetVolumeEX("SE*", 2000, 200, null);

	Fade("���P", 0, 500, null, true);
	FadeDelete("�G��", 500, null, true);

	Wait(500);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0032]
//�y����z
<voice name="����" class="����" src="voice/dm12/6000020b05">
"You're soaked&."


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0033]
&.&.&.When I turn around&, I see the man in the kimono again&.

He smiles and comes towards me&, offering his umbrella&.


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	St("C",740, @0,@0,"bu����_�ʏ�P_normal");
	FadeSt("C",200,true);
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0034]
//�y����z
<voice name="����" class="����" src="voice/dm12/6000030b05">
"I know it's simply raining&, but what's wrong? Do you enjoy being in the rain?"

{	Fw("fw���t_�ʏ�_think");}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm12/6000040a01">
"&.&.&.&.&."

{	St("C",740, @0,@0,"bu����_�ʏ�P_pride");
	FadeSt("C",200,true);}
//�y����z
<voice name="����" class="����" src="voice/dm12/6000050b05">
"What an awful look&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);


//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0040]
He grins and tilts his head&.


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

{	St("C",740, @0,@0,"bu����_�ʏ�P_smile");
	FadeSt("C",200,true);}
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0041]
//�y����z
<voice name="����" class="����" src="voice/dm12/6000060b05">
"Has something happened?"

{	Fw("fw���t_�ʏ�_worry");}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm12/6000070a01">
"&.&.&.&.&."


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	SetVolumeEX("SE11", 500, 1, null);

	CreateColorEX("�G�F��", 5000, "000000");
	Fade("�G�F��", 500, 500, null, true);

//�������u���o�F���̃e�L�X�g�͉����݂̂ŕ��͏o���Ȃ��v
	//CreateVOICE("����","dm12/6000080b05");
	MusicStart("����",0,1000,0,1000,null,false);
	$SETime = RemainTime("����");
	WaitKey($SETime);
	
<PRE @box0>
[text0044]
//����z
//�y����z
<voice name="����" class="����" src="voice/dm12/6000080b05">
"But you should be careful&. You're a little too
 defenseless&. If you're not&, something you take for
 granted will&.&.&.Chomp!"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	SetVolumeEX("����", 1000, 0, null);
	Wait(300);

	//CreateVOICE("����","dm12/6000090b05");
	MusicStart("����",0,1000,0,1000,null,false);
	$SETime = RemainTime("����");
	WaitKey($SETime);
	
<PRE @box0>
[text0045]
//����z
//�y����z
<voice name="����" class="����" src="voice/dm12/6000090b05">
"They might just gobble you up&, you know?"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	SetVolumeEX("����", 1000, 0, null);
	Wait(300);
	Delete("����");

	FadeDelete("�G�F��", 500, null, true);
	SetVolumeEX("SE11", 500, 200, null);

/*
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0044]
//����z
//�y����z
<voice name="����" class="����" src="voice/dm12/6000080b05">
"But you should be careful&. You're a little too defenseless&. If you're not&, something you take for granted will&.&.&. Chomp!"

//����z
//�y����z
<voice name="����" class="����" src="voice/dm12/6000090b05">
"They might just gobble you up&, you know?"


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);
*/

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0046]
It was just like he said&.&.&.

The man lets out a weak sigh at my silence&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	St("C",740, @0,@0,"bu����_�ʏ�P_pride");
	FadeSt("C",200,true);
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0050]
//�y����z
<voice name="����" class="����" src="voice/dm12/6000100b05">
"I guess you don't want to tell&. And that's why you're
 standing around here&." 

{	St("C",740, @0,@0,"bu����_�ʏ�P_normal");
	FadeSt("C",200,true);}
//�y����z
<voice name="����" class="����" src="voice/dm12/6000110b05">
"But you'll catch a cold&, you know? You should go home&."


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	DeleteSt("C", 200,true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0052]
He looks up to the rain&, and then his gaze returns back to me&.


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	St("C",740, @0,@0,"bu����_�ʏ�P_normal");
	FadeSt("C",200,true);
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0053]
//�y����z
<voice name="����" class="����" src="voice/dm12/6000120b05">
"Aren't you going to go home?"

{	Fw("fw���t_�ʏ�_sad");}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm12/6000130a01">
"&.&.&.I don't want to go back&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	St("C",740, @0,@0,"bu����_�ʏ�P_smile");
	FadeSt("C",200,true);
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0060]
//�y����z
<voice name="����" class="����" src="voice/dm12/6000140b05">
"Oh dear&."


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0061]
The man suggestively squints his eyes and smiles&.


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	St("C",740, @0,@0,"bu����_�ʏ�P_pride");
	FadeSt("C",200,true);
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0062]
//�y����z
<voice name="����" class="����" src="voice/dm12/6000150b05">
"You'd be a heartbreaker if you said that as a girl&. It's
 not good to stay out here&, so why don't we go get a warm
 drink?"

{	Fw("fw���t_�ʏ�_worry3");}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm12/6000160a01">
"Huh? But-"

{	St("C",740, @0,@0,"bu����_�ʏ�P_normal");
	FadeSt("C",200,true);}
//�y����z
<voice name="����" class="����" src="voice/dm12/6000170b05">
"It's right over there&."


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	CreatePlainSP("�G��", 5000);

	DeleteSt("C", 0,true);

	CreateTextureSP("�G�w�i", 150, Center, InBottom, "cg/bg/m/bg303011_5_��y�{�݊O�ϓ�������b�h_m.jpg");

	Fade("���P", 0, 300, null, true);
	Move("���P", 0, @0, 170, null, true);
	Move("�G�w�i", 0, @0, @50, null, true);

	Move("�G�w�i", 1000, @0, @-50, null, false);
	FadeDelete("�G��", 1000, null, true);

	Wait(500);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0063]
He jerks his chin to the building&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	CreatePlainSP("�G��", 5000);

	Delete("�G�w�i");
	Move("���P", 0, @0, 250, null, true);
	Fade("���P", 0, 500, null, true);

	St("C",740, @0,@0,"bu����_�ʏ�P_pride");
	FadeSt("C",0,true);

	FadeDelete("�G��", 500, null, true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0070]
//�y����z
<voice name="����" class="����" src="voice/dm12/6000180b05">
"I'm aquaintances with the owner of that club&. I can get us a private room&."

{	St("C",740, @0,@0,"bu����_�ʏ�P_smile");
	FadeSt("C",200,true);}
//�y����z
<voice name="����" class="����" src="voice/dm12/6000190b05">
"I also don't actually live in Platinum Jail&."


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);


//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0072]
He says that while shrugging his shoulders&.

So he's inviting me to a room&.

{	DeleteSt("C", 300,true);}
&.&.&.What should I do?

Following him sounds fine&.
Even though I don't know his name&.

Why would he do all of this for me anyway?

It seems so strange&.

&.&.&.But my thoughts flicker between going and not going 
with him anyway&.

Koujaku told me not to come close to here&.
And he reacted badly to me talking with this man here&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	St("C",740, @0,@0,"bu����_�ʏ�P_normal");
	FadeSt("C",300,true);

	Wait(500);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0080]
Then&, could this man&.&.&.

Does Koujaku know something about him?

It may have just been a coincidence&, and the man starts 
pushing my back&, as if to encourage me to follow his words&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//	St("C",740, @0,@0,"bu����_�ʏ�P_normal");
//	FadeSt("C",200,true);
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0085]
//�y����z
<voice name="����" class="����" src="voice/dm12/6000200b05">
"What do you want to do?"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0086]
I&.&.&. give a small nod&.


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	St("C",740, @0,@0,"bu����_�ʏ�P_smile");
	FadeSt("C",200,true);
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0087]
//�y����z
<voice name="����" class="����" src="voice/dm12/6000210b05">
"You must come&."


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	CreatePlainSP("�G��", 5000);

	CreateTextureSP("�G�w�i", 500, 0, Middle, "cg/bg/l/bg303011_5_��y�{�݊O�ϓ�������b�h_l.jpg");

	DeleteSt("C", 0,true);

	SetShade("�G�w�i", MEDIUM);

	CreateSE("SE01","se�l��_����_����01");
	MusicStart("SE01",0,700,0,1000,null,false);
	SetVolumeEX("SE*", 1000, 100, null);

	Move("�G�w�i", 500, @0, @-40, Dxl1, false);
	FadeDelete("�G��", 500, null, true);

//	Wait(500);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0088]
The man gives another grin and holds onto my shoulder&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	St("C",1100, @0,@0,"fu����_�ʏ�P_pride");
	FadeSt("C",200,true);
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0090]
//�y����z
<voice name="����" class="����" src="voice/dm12/6000220b05">
"Come closer so you don't get wet&. Ah&, would you mind
 telling me your name?"

{	Fw("fw���t_�ʏ�_sad");}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm12/6000230a01">
"&.&.&.Aoba&."

{
	St("C",1100, @0,@0,"fu����_�ʏ�P_smile");
	FadeSt("C",200,true);
}
//�y����z
<voice name="����" class="����" src="voice/dm12/6000240b05">
"Aoba&, what a nice name&. Mine is Ryuuhou&."

{	Fw("fw���t_�ʏ�_worry3");}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm12/6000250a01">
"Ryuuhou&.&.&."

{	St("C",1100, @0,@0,"fu����_�ʏ�P_normal");
	FadeSt("C",200,true);}
//�y����z
<voice name="����" class="����" src="voice/dm12/6000260b05">
"Yes&. Nice to meet you&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	CreatePlainSP("�G��", 5000);

	Delete("�G�w�i");
	DeleteAllSt(0,true);

	CreateSE("SE01","se�l��_����_������01�������");
	MusicStart("SE01",0,500,0,1400,null,true);

	Wait(50);

	CreateSE("SE01","se�l��_����_������01�������");
	MusicStart("SE01",0,500,0,1600,null,true);

	SetVolumeEX("SE11", 5000, 1000, null);

	FadeDelete("�G��", 500, null, true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0100]
Ryuuhou's smile fades&, and he starts to pull me along with him&.

&.&.&.Is this really a good idea?

I listen to the sounds of raindrops falling overhead on 
the umbrella as we walk&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	CreateColorEX("�G�F��", 5000, "000000");
	Fade("�G�F��", 1000, 1000, null, true);
	SetVolumeEX("@SE*", 2000, 0, null);
	Wait(1000);

	RainDropDelete(0);//���̃R�}���h�ŉJ�����Ă�������
	RainDropDelete2(0);//���̃R�}���h�ŉJ�����Ă�������

	ClearFadeAll(1000, true);
	Wait(1000);

//�����t�@�C��["dm1270.nss"]

}
