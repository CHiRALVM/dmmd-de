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


scene dm5480_vs.nss_MAIN
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
	#�C�x���g�t�@�C����=true;

	//�����[�g�t���O�A�I�����A����GameName
	$PreGameName = $GameName;
	$GameName = "dm5490_vs.nss";

}


scene dm5480_vs.nss
{

	//���V�[���̓��ɕK���L�q
	$�X�N���v�g�o�[�W���� = " $Revision:  $";
	$�\���� = ModuleFileName();
	$�\���� = $SYSTEM_present_process;
	SystemInit();


//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\

	PrintBG("��w�i", 30000);

	OnBG(10,"bg201011_0_���C���p�u���b�N�t�B�[���h");
	FadeBG(0,true);

	St("LL",710, @0,@0,"st�m�C�Y_�ʏ�_normal2");
	St("ML",720, @0,@0,"st�g��_�ʏ�_cool2");
	St("MR",700, @0,@0,"st�N���A_���ʃ}�X�N����_normal");
	St("RR",710, @0,@0,"st�~���N_�ʏ�_angry2");
	FadeAllSt(0,true);

	FadeDelete("��w�i", 0, null, true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0010]
{
	DeleteAllSt(200,true);
	Wait(300);
	St("C",740, @0,@0,"bu�g��_�ʏ�_think");
	FadeSt("C",200,true);
}
//�y�g���z
<voice name="�g��" class="�g��" src="voice/dm54/8000010a02">
"&.&.&.&.&."


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	St("C",740, @0,@0,"bu�g��_�ʏ�_cool");
	FadeSt("C",200,true);
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0011]
In the delicate silence&, Koujaku turned and gave me a 
strong gaze&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

{	St("C",740, @0,@0,"bu�g��_�ʏ�_cool2");
	FadeSt("C",200,true);}
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0012]
//�y�g���z
<voice name="�g��" class="�g��" src="voice/dm54/8000020a02">
"I don't really know the details&, but there's really no
 other way&, is there?"

{	Fw("fw���t_�ʏ�_serious");}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm54/8000030a01">
"It's all I can think of&."

{	St("C",740, @0,@0,"bu�g��_�ʏ�_cool");
	FadeSt("C",200,true);}
//�y�g���z
<voice name="�g��" class="�g��" src="voice/dm54/8000040a02">
"You do know what sort of danger you're bringing yourself
 into&, right?"

{	Fw("fw���t_�ʏ�_angry");}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm54/8000050a01">
"Yeah&. Even if you weren't here&, I'd do it alone&. I want to save Ren no matter what&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw���t_�ʏ�_angry");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0020]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm54/8000060a01">
"And because it's dangerous&.&.&. I can't give up&."

{	St("C",740, @0,@0,"bu�g��_�ʏ�_cool2");
	FadeSt("C",200,true);}
//�y�g���z
<voice name="�g��" class="�g��" src="voice/dm54/8000070a02">
"&.&.&.I got it&. I can't stop you if you say that&."

{	Fw("fw���t_�ʏ�_shock3");}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm54/8000080a01">
"Koujaku&.&.&."


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	DeleteFw();
	DeleteAllSt(200,true);

	SoundPlay("@dm010",0,450,true);

	$StPos�m�C�Y=L;
	$StPos�~���N=R;
	$StPos�N���A=C;

	$StPri�m�C�Y=720;
	$StPri�~���N=730;
	$StPri�N���A=740;

	St($StPos�~���N,$StPri�~���N, @0,@0,"st�~���N_�ʏ�_normal");
	St($StPos�m�C�Y,$StPri�m�C�Y, @0,@0,"st�m�C�Y_�ʏ�_normal");
	St($StPos�N���A,$StPri�N���A, @0,@0,"st�N���A_���ʃ}�X�N����_normal");
	FadeSt($StPos�~���N,200,false);
	FadeSt($StPos�m�C�Y,200,false);
	FadeSt($StPos�N���A,200,true);

	Fw("fw�g��_�ʏ�_angry");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0023]
//�y�g���z
<voice name="�g��" class="�g��" src="voice/dm54/8000090a02">
"Listen&, you guys are going to help Aoba out too!"


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0024]
//�y�N���A�z
<voice name="�N���A" class="�N���A" src="voice/dm54/8000100a04">
"Of course!"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	St($StPos�m�C�Y,$StPri�m�C�Y, @0,@0,"st�m�C�Y_�ʏ�_normal3");
	FadeSt($StPos�m�C�Y,200,true);
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0030]
//�y�m�C�Y�z
<voice name="�m�C�Y" class="�m�C�Y" src="voice/dm54/8000110a03">
"Well&, it'd be hard for me to go back after getting
 this far&."

{	St($StPos�~���N,$StPri�~���N, @0,@0,"st�~���N_�ʏ�_angry2");
	FadeSt($StPos�~���N,200,true);}
//�y�~���N�z
<voice name="�~���N" class="�~���N" src="voice/dm54/8000120a05">
"It's going to get rough soon&, so hurry up and go&."

{	Fw("fw���t_�ʏ�_normal");}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm54/8000130a01">
"&.&.&.&.&."


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0033]
My heart briefly fills with anxiety at the thought of 
failing to save everyone&, but also with positive emotions&.

So much has happened&.&.&. but right now I'm genuinely happy&.


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw�g��_�ʏ�_angry");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0035]
//�y�g���z
<voice name="�g��" class="�g��" src="voice/dm54/8000140a02">
"Oi&.&.&.They're coming!"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	DeleteAllSt(200,true);
	CreateTextureEX("�G�w�i", 100, Center, Middle, "cg/ev/ev550�o�O��Ԃ̘@.jpg");
	Fade("�G�w�i", 500, 1000, null, true);

	Wait(500);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0040]
The guards and Allmates that were so uneasy on their feet 
started to come our way&.


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	FadeDelete("�G�w�i", 300, null, true);

{	St("C",740, @0,@0,"st�~���N_�ʏ�_angry2");
	FadeSt("C",200,true);}
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0041]
//�y�~���N�z
<voice name="�~���N" class="�~���N" src="voice/dm54/8000150a05">
"Hey&, maniac&. Make sure that when he uses Scrap on him&,
 you make sure he doesn't log out&."

{	Fw("fw�m�C�Y_�ʏ�_angry");}
//�y�m�C�Y�z
<voice name="�m�C�Y" class="�m�C�Y" src="voice/dm54/8000160a03">
"I'm not a maniac&."

{	St("C",740, @0,@0,"st�~���N_�ʏ�_angry");
	FadeSt("C",200,true);}
//�y�~���N�z
<voice name="�~���N" class="�~���N" src="voice/dm54/8000170a05">
"Red and gas mask&, shut down the ones coming after him&."


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	DeleteAllSt(200,true);
	CreateSE("SE01","se�l��_����_����06");
	MusicStart("SE01",0,700,0,800,null,false);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0044a]
As he spoke&, Mink started to take his long strides to the 
guards and Allmates&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//	DeleteAllSt(200,true);
//	CreateSE("SE01","se�l��_����_����06");
//	MusicStart("SE01",0,700,0,800,null,false);

//	Wait(1000);

	CreatePlainSP("�G��", 5000);

	CreateSE("SE02","se�퓬_�Ō�_�q�b�g����01");
	MusicStart("SE02",0,500,0,1000,null,false);

	Shake("�G��", 500, 0, 7, 0, 0, 1000, Dxl1, false);
	Wait(200);
	Shake("�G��", 500, 6, 0, 0, 0, 1000, Dxl1, false);
	Wait(200);
	Shake("�G��", 500, 0, 8, 0, 0, 1000, Dxl1, false);
	Wait(200);
	FadeDelete("�G��", 500, null, false);

	Wait(300);

	SetVolumeEX("SE01", 1000, 0, null);

	CreateSE("@EFWIN/SEL02a","se��_�퓬_�퓬01L");
	Request("@EFWIN/SEL02a", Lock);
	MusicStart("@EFWIN/SEL02a",6000,700,0,800,null,true);

	CreateSE("@EFWIN/SEL02b","se��_�퓬_�g���ƃm�C�Y�̂��ݍ���01L");
	Request("@EFWIN/SEL02b", Lock);
	MusicStart("@EFWIN/SEL02b",6000,300,0,400,null,true);
	$dm5480_vs�G��=true;

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0044b]
He then promptly began to completely destroy them all&.


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

{	St("C",740, @0,@0,"st�m�C�Y_�ʏ�_normal");
	FadeSt("C",200,true);}
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0045]
//�y�m�C�Y�z
<voice name="�m�C�Y" class="�m�C�Y" src="voice/dm54/8000180a03">
"Now&, let's get this party started&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	SetVolumeEX("SE02", 1000, 0, null);

	CreateSE("SE03","se�l��_����_����01");
	MusicStart("SE03",0,700,0,1000,null,false);
	Move("@StC*", 200, @0, @70, Axl1, false);
	DeleteAllSt(200,true);

	CreateSE("SE81","se����_�p�\�R��_�L�[�{�[�h����01");
	MusicStart("SE81",0,700,0,1000,null,false);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0050]
Noiz sits down&, pulls out the keyboard and monitor on his 
Coil&, and starts to work&.


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

{	St("C",740, @0,@0,"st�g��_�ʏ�_normal2");
	FadeSt("C",200,true);}
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0051]
//�y�g���z
<voice name="�g��" class="�g��" src="voice/dm54/8000190a02">
"Hey&, how are you going to use Scrap on yourself?"

{	Fw("fw���t_�ʏ�_serious");}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm54/8000200a01">
"I don't know&. But I have to try something&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	CreateColorEX("�G�F��", 5000, "000000");
	Fade("�G�F��", 500, 1000, null, true);

	DeleteAllSt(0,true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0053]
I sat on the floor on my knees&, closed my eyes&, and began 
to focus&.

But&.&.&. it doesn't work&, the surrounding noise is bothering me&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	FadeDelete("�G�F��", 500, null, true);

	Fw("fw���t_�ʏ�_hard2");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0054]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm54/8000210a01">
"&.&.&.Shit&. The stuff around me is distracting&."

{	St("C",740, @0,@0,"st�g��_�ʏ�_angry3");
	FadeSt("C",200,true);}
//�y�g���z
<voice name="�g��" class="�g��" src="voice/dm54/8000220a02">
"Would earplugs work?"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	SetVolumeEX("@EFWIN/SEL*", 400, 300, null);
	DeleteAllSt(200,true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0060]
I cover my ears with my hands&. But I still can hear sounds&.

Maybe I can't focus as well because I'm frustrated&.


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw���t_�ʏ�_pain2");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0061]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm54/8000230a01">
"It's no good&.&.&."

{	St("C",740, @0,@0,"bu�N���A_���ʃ}�X�N����_normal");
	FadeSt("C",200,true);}
//�y�N���A�z
<voice name="�N���A" class="�N���A" src="voice/dm54/8000240a04">
"So the outside noise is bothering you&."

{	Fw("fw���t_�ʏ�_worry4");}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm54/8000250a01">
"Yeah&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	DeleteFw();
	DeleteAllSt(200,true);

//�����t�@�C��["dm5490_vs.nss"]

}
