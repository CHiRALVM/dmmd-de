//<continuation number="160">
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


scene dm5490_vs.nss_MAIN
{
$TEXTBOX_TYPE="���C��";
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
	#ev940�̂��N���Aa=true;

	//�����o������������
	TiesMovieDelete();
	Request("@EFWIN/SEL02a", UnLock);
	Request("@EFWIN/SEL02b", UnLock);

	//�����[�g�t���O�A�I�����A����GameName
	$PreGameName = $GameName;
	$GameName = "dm5500scr.nss";

}


scene dm5490_vs.nss
{

	//���V�[���̓��ɕK���L�q
	$�X�N���v�g�o�[�W���� = " $Revision:  $";
	$�\���� = ModuleFileName();
	$�\���� = $SYSTEM_present_process;
	SystemInit();


//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\

	PrintBG("��w�i", 30000);

	SoundPlay("@dm010",0,450,true);

	OnBG(10,"bg201011_0_���C���p�u���b�N�t�B�[���h");
	FadeBG(0,true);

	if($dm5480_vs�G��==true){
	MusicStart("@EFWIN/SEL02a",0,300,0,800,null,true);
	MusicStart("@EFWIN/SEL02b",0,300,0,400,null,true);
	}else{
	CreateSE("@EFWIN/SEL02a","se��_�퓬_�퓬01L");
	MusicStart("@EFWIN/SEL02a",6000,300,0,800,null,true);

	CreateSE("@EFWIN/SEL02b","se��_�퓬_�g���ƃm�C�Y�̂��ݍ���01L");
	MusicStart("@EFWIN/SEL02b",6000,300,0,400,null,true);
	$dm5480_vs�G��=true;
	}
	Request("@EFWIN/SEL02a", UnLock);
	Request("@EFWIN/SEL02b", UnLock);

	FadeDelete("��w�i", 0, null, true);

	SetVolumeEX("@dm*", 3000, 300, null);

	CreateTextureEX("�G�d�u�k", 1100, -200, -150, "cg/ev/l/ev940�̂��N���Aa_l.jpg");
	CreateTextureEX("�G�d�u", 1100, Center, Middle, "cg/ev/ev940�̂��N���Aa.jpg");
	Zoom("�G�d�u", 0, 1500, 1500, null, true);
	SetBlur("�G�d�u", true, 2, 500, 100, false);

	CreateSE("SE05","se�l��_����_�ߎC��01");
	MusicStart("SE05",0,700,0,1000,null,false);

	Move("�G�d�u�k", 1200, -100, 0, Dxl1, false);
	Fade("�G�d�u�k", 500, 1000, null, true);

	Wait(1000);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0010]
Clear&, who was leaning over me&, stood up and then spread 
out his arms&.

While I wondered what he was doing&.&.&. 
A clear singing voice rang out through the area&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\

	TextBoxDelete(0);

	CreateSE("SE01","se�[��_����_�̓N���A01");
	MusicStart("SE01",0,700,0,1000,null,false);

	Zoom("�G�d�u�k", 1000, 1200, 1200, Axl1, false);
	Wait(300);
	Zoom("�G�d�u", 1000, 1000, 1000, Dxl1, false);
	Fade("�G�d�u", 1000, 1000, null, true);

	Delete("�G�d�u�k");
	CreateTextureEXadd("�G�d�u�Q", 1100, center, middle, "cg/ef/ef�N���A�̉̐�.jpg");
	Fade("�G�d�u�Q", 0, 500, null, true);
	Zoom("�G�d�u�Q", 0, 1000, 1000, null, true);
	Zoom("�G�d�u�Q", 500, 1100, 1100, Dxl1, false);
	Fade("�G�d�u�Q", 500, 0, null, true);

	Zoom("�G�d�u�Q", 0, 1000, 1000, null, true);
	Fade("�G�d�u�Q", 0, 500, null, true);
	Zoom("�G�d�u�Q", 500, 1100, 1100, Dxl1, false);
	Fade("�G�d�u�Q", 500, 0, null, true);

	SetVolumeEX("@EFWIN/SEL*", 3000, 0, null);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0010a]
Clear is&.&.&. singing?

Upon hearing his singing&, I notice that I hear nothing 
else&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	FadeDelete("�G�d�u", 500, null, true);

	Fw("fw���t_�ʏ�_shock");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0013]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm54/9000010a01">
"The sounds&.&.&."

{	St("C",740, @0,@0,"st�g��_�ʏ�_worry");
	FadeSt("C",200,true);}
//�y�g���z
<voice name="�g��" class="�g��" src="voice/dm54/9000020a02">
"Hey&.&.&.are you muting the other sounds with that song?
 Can you even do that&.&.&.?"

{	DeleteAllSt(180,true);
	St("C",740, @0,@0,"st�g��_�퓬�f��_normal2");
	FadeSt("C",180,true);}
//�y�g���z
<voice name="�g��" class="�g��" src="voice/dm54/9000030a02">
"-Hey! They're coming this way!"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	DeleteAllSt(200,true);

	CreateSE("SE01","se�퓬_�Ō�_�q�b�g��02");
	MusicStart("SE01",0,700,0,1000,null,false);

	CreatePlainSP("�G��", 5000);
	Shake("�G��", 500, 10, 5, 0, 0, 1000, null, false);
	FadeDelete("�G��", 500, null, false);


//	Wait(800);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0020]
Clear continues to sing&, and Koujaku sends the pursuing 
guards and Allmates flying&.


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw�g��_�ʏ�_normal2");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0021]
//�y�g���z
<voice name="�g��" class="�g��" src="voice/dm54/9000040a02">
"Aoba&, will it work this time?"

{	Fw("fw���t_�ʏ�_serious");}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm54/9000050a01">
"I'll try&."


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0022]
I close my eyes and try to focus my concentration again&.
I feel like it'll work this time&.


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw���t_�ʏ�_pain");

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0023]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm54/9000060a01">
"&.&.&.!"

{	Fw("fw�g��_�ʏ�_shout");}
//�y�g���z
<voice name="�g��" class="�g��" src="voice/dm54/9000070a02">
"Uryah!"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	CreateSE("SE01","se�퓬_�Ō�_�q�b�g��02");
	MusicStart("SE01",0,700,0,1000,null,false);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0030]
Koujaku drives off more of the guards&.

But&.&.&.

&.&.&.It's no good&.
I still can't concentrate&.


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

{	St("C",740, @0,@0,"bu�g��_�ʏ�_normal2");
	FadeSt("C",200,true);}
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0033]
//�y�g���z
<voice name="�g��" class="�g��" src="voice/dm54/9000080a02">
"No go?"

{	Fw("fw���t_�ʏ�_pinch");}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm54/9000090a01">
"Just a little more&.&.&."

{	St("C",740, @0,@0,"bu�g��_�ʏ�_cool2");
	FadeSt("C",200,true);}
//�y�g���z
<voice name="�g��" class="�g��" src="voice/dm54/9000100a02">
"Is there no way to help you concentrate?"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw���t_�ʏ�_sad");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0040]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm54/9000110a01">
"My concentration ability&.&.&. That's right&, if I could
 look into my eyes I could&."

{	St("C",740, @0,@0,"bu�g��_�ʏ�_think");
	FadeSt("C",200,true);}
//�y�g���z
<voice name="�g��" class="�g��" src="voice/dm54/9000120a02">
"Your eyes&.&.&. A mirror?"


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	DeleteAllSt(200,true);


//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0042]
Koujaku mutters&, and then grins&.


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�������u�f�ޗv�]�F�g���̓��v
//�������u���o�F���ɉf�荞�ޑ��t�v


	CreateSE("SE01","se�퓬_�Ō�_�q�b�g��03");
	MusicStart("SE01",0,700,0,1000,null,false);

	Wait(100);

	CreatePlainSP("�G��", 5000);
	Shake("�G��", 500, 10, 5, 0, 0, 1000, null, false);
	FadeDelete("�G��", 500, null, false);


	CreateSE("SE01","se�퓬_����_�n�ʂɎh��01");
	MusicStart("SE01",0,700,0,1000,null,false);



//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0043]
He kicks away another guard and leans over me; then he 
takes out his sword only to shove it into the ground&.


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw�g��_�ʏ�_pride");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0044]
//�y�g���z
<voice name="�g��" class="�g��" src="voice/dm54/9000130a02">
"How about this?"


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	Wait(100);

	CreatePlainSP("�G��", 5000);


//�������u���F�f�荞�ޑ��t�ŕ\����v
	CreateTextureEX("�G�w�i", 100, Center, Middle, "cg/bg/bg201011_0_���C���p�u���b�N�t�B�[���h.jpg");
	Zoom("�G�w�i", 0, 2000, 2000, null, true);
	SetShade("�G�w�i", HEAVY);

	CreateMask("�G�P�}�X�N1", 2500, 0,0,"cg/ef/ef�g���V��_x02.png",false);
	Request("�G�P�}�X�N1", Smoothing);

	CreateTextureEX("�G�P�}�X�N1/�L����", 110, 50, -27, "cg/fu/fu���t_�ʏ�_shock.png");
	CreateTextureEX("������", 100,0,0, "cg/ef/ef�g���V��_x01.png");
	CreateTextureEX("������2", 120,0,0, "cg/ef/ef�g���V��_x01.png");

	Fade("�G�w�i", 0, 1000, null, true);
	Fade("�G�P�}�X�N1/�L����", 0, 1000, null, true);
	Fade("������", 0, 1000, null, true);
	Fade("������2", 0, 500, null, true);

	Move("�G�w�i", 700, @0, @-50, Dxl1, false);
	Move("������*", 700, @0, @-130, Dxl1, false);
	Move("�G�P�}�X�N1", 700, @0, @-130, Dxl1, false);
	Move("�G�P�}�X�N1/�L����", 700, @0, @-50, Dxl1, false);

	FadeDelete("�G��", 500, null, true);

	Wait(400);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0045]
My face reflects on the sword's surface&.
So I can use this as a mirror&.&.&.!

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\

	CreateTextureEX("�G�P�}�X�N1/�L����2", 100, 50, -77, "cg/fu/fu���t_�ʏ�_normal.png");
	FadeDelete("�G�P�}�X�N1/�L����", 400, Axl2, false);
	Fade("�G�P�}�X�N1/�L����2", 200, 1000, null, true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0050]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm54/9000140a01">
"Thank you&. I'll try it out&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	SetVolumeEX("@dm*", 3000, 0, null);

	CreateTextureEX("�G�P�}�X�N1/�L����3", 100, 50, -77, "cg/fu/fu���t_�ʏ�͍s�g_serious.png");
	FadeDelete("�G�P�}�X�N1/�L����2", 400, Axl2, false);
	Fade("�G�P�}�X�N1/�L����3", 200, 1000, null, true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0051]
I look into my eyes on the blade and the words come out of my mouth&.


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�������u���F�i�X�Ǝʂ荞��ł��������ȊO����ӎ������̂��A�ŏI�I�Ɏ����̊�����������v

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0052]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm54/9000150a01">
"I'm going to go inside you&. Into you&.&.&."

//�y���t�z
<voice name="���t" class="���t" src="voice/dm54/9000160a01">
"I'm going to go inside of you&. So accept me&. I'm going to
 go inside you&.&.&. inside myself&."

//�y���t�z
<voice name="���t" class="���t" src="voice/dm54/9000161a01">
"So accept me&."


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\

	TextBoxDelete(0);

	CreateSE("SE01","se�l��_�S��_�ۓ�01");
	CreateSE("SCRAPINSE01","se�l��_�S��_�ۓ�02L");
	MusicStart("SE01",0,700,0,1000,null,false);
	MusicStart("SCRAPINSE01",0,700,0,1000,null,true);

	CreatePlainSP("�G��", 5000);
	CreatePlainSP("�G��2", 5000);
	Request("�G��", Smoothing);
	SetBlur("�G��", true, 2, 500, 1000, false);

	Zoom("�G��", 30000, 1500, 1500, null, false);

	Zoom("�G��2", 500, 1100, 1100, Dxl1, false);
	FadeDelete("�G��2", 500, null, true);


//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0060]
Little by little&.&.&. my vision fades out&.

I can't hear Clear's song anymore&, only the sound of my 
heartbeat&.

The faint sound of waves pile up&.

Somewhere&.&.&.

I've heard the sound of waves before&, a long time ago&.&.&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\

	TextBoxDelete(0);

//�����t�A�����̐��_���E�֓���

	SetVolumeEX("SE*", 300, 0, null);
	ScrapIn("�]���\�Ia",5010);
	TiesMovieNEXT();
	Wait(3000);
	ScrapInEnd();
	Wait(3000);
	Delete("�G�P�}�X*");

//�����t�@�C��["dm5500scr.nss"]

}
