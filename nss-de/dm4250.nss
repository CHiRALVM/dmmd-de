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


scene dm4250.nss_MAIN
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
	#bg301031_5_�v���`�i�W�F�C���ʂ�H�n01=true;

	//�����[�g�t���O�A�I�����A����GameName
	$PreGameName = $GameName;
	$GameName = "dm4260.nss";

}


scene dm4250.nss
{

	//���V�[���̓��ɕK���L�q
	$�X�N���v�g�o�[�W���� = " $Revision:  $";
	$�\���� = ModuleFileName();
	$�\���� = $SYSTEM_present_process;
	SystemInit();


//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\

	SoundPlay("@dm007a",0,450,true);

	PrintBG("��w�i", 30000);

	OnBG(10,"bg301041_5_�v���`�i�W�F�C���ʂ�H�n02");
	FadeBG(0,true);
	CreateTextureSP("�G�w�i", 300, Center, Middle, "cg/bg/bg301041_5_�v���`�i�W�F�C���ʂ�H�n02.jpg");
	CreateTextureSP("�G�w�i��", 500, Center, Middle, "cg/bg/l/bg301041_5_�v���`�i�W�F�C���ʂ�H�n02_l.jpg");

	Rotate("�G�w�i��", 0, @0, @0, @-20, null,true);

	DrawDelete("��w�i", 250, 100, Dxl1, "slide_01_01_0", true);

//�e�F����p�G�t�F�N�g�摜����΂������w�i

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0010]
We run down a dark and narrow road&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	FadeDelete("�G�w�i��", 300, null, true);

	CreateSE("SE01","se�l��_����_���01");
	SetFrequency("SE01", 0, 1300, Dxl3);
	MusicStart("SE01",0,700,0,700,null,false);

	Shake("�G�w�i", 300, 5, 5, 0, 0, 500, Dxl1, false);
	FadeDelete("�G�w�i", 500, null, true);

//	Wait(500);

	St("C",740, @0,@0,"st�N���A_�ʏ�}�X�N����_normal");
	FadeSt("C",200,true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0020]
//�y�N���A�z
<voice name="�N���A" class="�N���A" src="voice/dm42/5000010a04">
"Ah!"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0030]
Clear stops&, changes his direction&, and then stops again&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw���t_�ʏ�_worry4");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0040]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm42/5000020a01">
"What happened?"

{	St("C",740, @0,@0,"st�N���A_�ʏ�}�X�N����_normal");
	FadeSt("C",200,true);}
//�y�N���A�z
<voice name="�N���A" class="�N���A" src="voice/dm42/5000030a04">
"&.&.&.It's no use&. There's too many people&. We're
 surrounded&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	DeleteSt("C", 200,true);
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0050]
As if to confirm Clear's words&, I hear it grow noisy aroundus&.

{
	CreateSE("SE01","se�l��_����_����03");
	MusicStart("SE01",0,600,0,700,null,false);
	CreateSE("SE02","se�l��_����_����03");
	MusicStart("SE02",0,500,0,600,null,false);
	CreateSE("SE03","se�l��_����_����03");
	MusicStart("SE03",0,600,0,500,null,false);
	CreateSE("SE04","se�l��_����_����03");
	MusicStart("SE04",0,700,0,800,null,false);

	CreateTextureEX("�G�w�i100", 100, -514, -524, "cg/bg/l/bg301041_5_�v���`�i�W�F�C���ʂ�H�n02_l.jpg");
	Move("�G�w�i100", 500, -514, -574, Dxl1, false);
	Fade("�G�w�i100", 500, 1000, null, true);
}
From left and right&, people emerge&, little by little 
getting closer&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	SetVolumeEX("SE*", 2000, 0, null);
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0060]
The people that come towards us are all bad looking guys&. 
Maybe around ten of them&.

The head&, he&.&.&.
He's the guy with the glasses that Clear beat down&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	FadeDelete("�G�w�i100", 500, null, true);

	Fw("fwm�C�i�__�ʏ�_normal");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0070]
//�y�Z�M�z
<voice name="�Z�M" class="�Z�M" src="voice/dm42/5000040c05">
"Hey there&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0080]
The man in the glasses&, covered in blue and red bruises&, 
wears a petty grin on his face&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fwm�C�i�__�ʏ�_normal");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0090]
//�y�Z�M�z
<voice name="�Z�M" class="�Z�M" src="voice/dm42/5000050c05">
"We decided that a few things needed to be done&. That we
 should return your hospitality&. &.&.Go&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	CreateSE("SE01","se�l��_����_����03");
	MusicStart("SE01",0,600,0,700,null,false);
	CreateSE("SE02","se�l��_����_����03");
	MusicStart("SE02",0,500,0,600,null,false);
	CreateSE("SE03","se�l��_����_����03");
	MusicStart("SE03",0,600,0,500,null,false);
	CreateSE("SE04","se�l��_����_����03");
	MusicStart("SE04",0,700,0,800,null,false);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0100]
He jerks his jaw in our direction and the surrounding men 
start moving in&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	SetVolumeEX("SE*", 1000, 0, null);

	CreateSE("SE01","se�l��_����_�͂�01");
	MusicStart("SE01",0,700,0,1000,null,false);
	BGPlainShake(50,300,10,10,0,0,500,Dxl1,true);

	Wait(300);

	CreateSE("SE02","se�l��_����_�ߎC��01");
	MusicStart("SE02",0,700,0,1000,null,false);
	BGPlainShake(50,300,0,10,0,0,500,Dxl1,true);

	Fw("fw���t_�ʏ�_hard2");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0110]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm42/5000060a01">
"Stop it! Don't touch me!"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fwm�`���s��A_�ʏ�_normal");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0120]
//�y�`���s���`�z
<voice name="�`���s���`" class="�`���s���`" src="voice/dm42/5000070e42">
"Pipe down!"

{
	DeleteFw();

	CreateSE("SE02","se�l��_����_�ߎC��01");
	MusicStart("SE02",0,700,0,1300,null,false);

	CreatePlainSP("�G��", 990);
	Shake("�G��", 200, 0, 10, 0, 0, 500, null, true);
	Delete("�G��");

	Fw("fw���t_�ʏ�_rage");
}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm42/5000080a01">
"I said don't touch me!"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	DeleteFw();

//���ǂ����ƏR�鉹
	CreateSE("SE01","se�퓬_�Ō�_���؂荂01");
	MusicStart("SE01",0,700,0,1000,null,false);
	CreateTextureSP("�G���o��", 1000, 0, Middle, "cg/ev/l/ev900���t�R��ėp_l.jpg");
	CreateTextureSP("�G���o���", 900, Center, Middle, "cg/ev/ev900���t�R��ėp.jpg");
	Wait(50);
	Move("�G���o��", 300, -1024, 0, Dxl3, false);
	FadeDelete("�G���o��", 200, null, true);

	Wait(200);
	CreateSE("SE01","se�퓬_�Ō�_�q�b�g��02");
	MusicStart("SE01",0,700,0,1000,null,false);
	CreateColorEXadd("�G�F��", 4000, "FFFFFF");
	Fade("�G�F��", 100, 1000, Dxl3, true);
	Delete("�G��*");
	Wait(30);
	BGPlainShake(50,200,10,10,0,0,1000,Dxl1,false);
	FadeDelete("�G�F��", 100, Dxl3, true);

	Wait(500);

	Fw("fwm�`���s��A_�ʏ�_normal");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0121]
//�y�`���s���`�z
<voice name="�`���s���`" class="�`���s���`" src="voice/dm42/5000090e42">
"Shit&, someone help me over here!"

{	Fw("fw�N���A_�ʏ�}�X�N����_normal");}
//�y�N���A�z
<voice name="�N���A" class="�N���A" src="voice/dm42/5000100a04">
"Master!"

{
	DeleteFw();

	CreateSE("SE02","se�l��_����_�ߎC��01");
	MusicStart("SE02",0,700,0,1000,null,false);

	CreatePlainSP("�G��", 990);
	Shake("�G��", 200, 15, 0, 0, 0, 500, null, true);
	Delete("�G��");

	Fw("fw���t_�ʏ�_rage");
}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm42/5000110a01">
"Let go!"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

//���ǂ����A�΂����Ɖ��鉹
	CreateSE("SE01","se�퓬_�Ō�_�q�b�g��01");
	MusicStart("SE01",0,700,0,1000,null,false);
	Shake("�G�w�i", 500, 30, 30, 0, 0, 500, Dxl1, false);

	CreateSE("SE02","se�퓬_�Ō�_�q�b�g��04");
	MusicStart("SE02",0,700,0,1000,null,false);
	CreateColorEXadd("�G�t���b�V����", 5000, "FFFFFF");
	Fade("�G�t���b�V����", 100, 1000, Dxl1, true);
	FadeDelete("�G�t���b�V����", 300, Axl2, true);


	CreateSE("SE01","se�퓬_�Ō�_�q�b�g��02");
	MusicStart("SE01",0,700,0,1000,null,false);
	Shake("�G�w�i", 500, 30, 30, 0, 0, 500, null, false);

	CreateSE("SE02","se�퓬_�Ō�_�q�b�g��01");
	MusicStart("SE02",0,700,0,1000,null,false);
	CreateColorEXadd("�G�t���b�V����", 5000, "FFFFFF");
	Fade("�G�t���b�V����", 100, 1000, Dxl1, true);
	FadeDelete("�G�t���b�V����", 300, Axl2, true);

	Wait(300);

	CreateSE("SE01","se�l��_����_�͂�01");
	MusicStart("SE01",0,700,0,1000,null,false);

	CreateSE("SE02","se�l��_����_�ߎC��17");
	MusicStart("SE02",0,700,0,1000,null,false);

	CreatePlainSP("�G��", 990);
	Shake("�G��", 200, 0, 10, 0, 0, 500, null, true);
	Delete("�G��");

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0130]
I send some people flying&, but more people pin me down 
from behind&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	St("C",740, @0,@0,"st�N���A_�ʏ�}�X�N����_normal");
	FadeSt("C",200,true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0140]
//�y�N���A�z
<voice name="�N���A" class="�N���A" src="voice/dm42/5000120a04">
"Master!"

{	Fw("fwm�C�i�__�ʏ�_normal");}
//�y�Z�M�z
<voice name="�Z�M" class="�Z�M" src="voice/dm42/5000130c05">
"There&. If you want your master to be safe&, be obedient&. If you are&, then we won't lay a hand on him&."

{	St("C",740, @0,@0,"st�N���A_�ʏ�}�X�N����_normal");
	FadeSt("C",200,true);}
//�y�N���A�z
<voice name="�N���A" class="�N���A" src="voice/dm42/5000140a04">
"&.&.&.Are you telling the truth?"

{	Fw("fwm�C�i�__�ʏ�_normal");}
//�y�Z�M�z
<voice name="�Z�M" class="�Z�M" src="voice/dm42/5000150c05">
"Yeah&."

{	Fw("fw���t_�ʏ�_shout");}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm42/5000160a01">
"Clear&, don't listen!"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	St("C",740, @0,@0,"st�N���A_�ʏ�}�X�N����_normal");
	FadeSt("C",200,true);
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0150]

//�y�N���A�z
<voice name="�N���A" class="�N���A" src="voice/dm42/5000170a04">
"But if I stay obedient Master won't be hurt&."

{	Fw("fw���t_�ʏ�_rage");}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm42/5000180a01">
"Idiot!!"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	CreateSE("SE01","se�l��_����_�͂�01");
	MusicStart("SE01",0,700,0,1000,null,false);

	CreateSE("SE02","se�l��_����_�ߎC��17");
	MusicStart("SE02",0,700,0,1000,null,false);

	DeleteFw();
	DeleteSt("C", 200,true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0160]
In the end&, Clear's held back by the arms just as I was&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fwm�C�i�__�ʏ�_normal");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0170]
//�y�Z�M�z
<voice name="�Z�M" class="�Z�M" src="voice/dm42/5000190c05">
"Well then&. The gas mask guy here will be given the best
 present I've had to offer&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0180]
The guy in the glasses steps up to Clear and gets right up to the gas mask&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fwm�C�i�__�ʏ�_normal");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0190]
//�y�Z�M�z
<voice name="�Z�M" class="�Z�M" src="voice/dm42/5000200c05">
"First&, I guess I'll take off that shitty mask of yours&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw�N���A_�ʏ�}�X�N����_normal");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0200]
//�y�N���A�z
<voice name="�N���A" class="�N���A" src="voice/dm42/5000210a04">
"No&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fwm�C�i�__�ʏ�_normal");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0201]
//�y�Z�M�z
<voice name="�Z�M" class="�Z�M" src="voice/dm42/5000220c05">
"You really don't get the situation you're in&, do you? Hey&, hold him down tight&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0210]
He reaches for the gasmask and he grabs onto the edge of 
it&.


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw�N���A_�ʏ�}�X�N����_normal");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0220]
//�y�N���A�z
<voice name="�N���A" class="�N���A" src="voice/dm42/5000230a04">
"I said no!"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	DeleteFw();

//���N���A���R�������
	CreateSE("SE01","se�퓬_�Ō�_�q�b�g��04");
	MusicStart("SE01",0,700,0,1000,null,false);

	CreateColorEXadd("�G�t���b�V����", 5000, "FFFFFF");
	Fade("�G�t���b�V����", 100, 1000, Dxl1, true);
	FadeDelete("�G�t���b�V����", 300, Axl2, true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0221]
//�y�Z�M�z
<voice name="�Z�M" class="�Z�M" src="voice/dm42/5000240c05">
"Ugh!"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0230]
Clear kicks him in the gut with his knee&.

The man slouches back&, then spits on Clear with a scowl on 
his face&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fwm�C�i�__�ʏ�_normal");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0240]
//�y�Z�M�z
<voice name="�Z�M" class="�Z�M" src="voice/dm42/5000250c05">
"&.&.&.Motherfucker!"


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	CreateSE("SE01","se�l��_�Ռ�_�]�|01");
	MusicStart("SE01",0,700,0,1000,null,false);

	CreateColorEXadd("�G�t���b�V����", 5000, "FFFFFF");
	Fade("�G�t���b�V����", 100, 1000, Dxl1, true);
	FadeDelete("�G�t���b�V����", 300, Axl2, true);

	CreateTextureEX("�G�w�i100", 100, -514, -524, "cg/bg/l/bg301041_5_�v���`�i�W�F�C���ʂ�H�n02_l.jpg");
	Move("�G�w�i100", 300, -514, -574, Dxl3, false);
	Fade("�G�w�i100", 300, 1000, null, true);

	CreatePlainSP("�G��", 990);
	Shake("�G��", 200, 0, 20, 0, 0, 500, null, true);
	Delete("�G��");


//	CreateSE("SE01","se�퓬_�Ō�_�q�b�g��02");
//	MusicStart("SE01",0,700,0,1000,null,false);
//	CreateColorEXadd("�G�t���b�V����", 5000, "FFFFFF");
//	Fade("�G�t���b�V����", 100, 1000, Dxl1, true);
//	FadeDelete("�G�t���b�V����", 300, Axl2, true);

//	Wait(300);

//	CreateSE("SE01","se�퓬_�Ō�_�q�b�g��04");
//	MusicStart("SE01",0,700,0,1000,null,false);
//	CreateColorEXadd("�G�t���b�V����", 5000, "FFFFFF");
//	Fade("�G�t���b�V����", 100, 1000, Dxl1, true);
//	FadeDelete("�G�t���b�V����", 300, Axl2, true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0250]
The enraged man in glasses grabs Clear's head and pulls it down to the ground&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw���t_�ʏ�_shout2");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0260]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm42/5000260a01">
"Clear!!"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	CreateSE("SE01","se�퓬_�Ō�_�q�b�g��01");
	MusicStart("SE01",0,700,0,1000,null,false);
	CreateColorEXadd("�G�t���b�V����", 5000, "FFFFFF");
	Fade("�G�t���b�V����", 100, 1000, Dxl1, true);
	FadeDelete("�G�t���b�V����", 300, Axl2, true);

	Wait(200);

	CreateSE("SE02","se�퓬_�Ō�_�q�b�g��02");
	MusicStart("SE02",0,700,0,1000,null,false);
	CreateColorEXadd("�G�t���b�V����", 5000, "FFFFFF");
	Fade("�G�t���b�V����", 100, 1000, Dxl1, true);
	FadeDelete("�G�t���b�V����", 300, Axl2, true);

	Wait(200);

	CreateSE("SE03","se�퓬_�Ō�_�q�b�g��04");
	MusicStart("SE03",0,700,0,1000,null,false);
	CreateColorEXadd("�G�t���b�V����", 5000, "FFFFFF");
	Fade("�G�t���b�V����", 100, 1000, Dxl1, true);
	FadeDelete("�G�t���b�V����", 300, Axl2, true);

	Wait(200);

	CreateSE("SE04","se�퓬_�Ō�_�q�b�g��02");
	MusicStart("SE04",0,700,0,1000,null,false);
	CreateColorEXadd("�G�t���b�V����", 5000, "FFFFFF");
	Fade("�G�t���b�V����", 100, 1000, Dxl1, true);
	FadeDelete("�G�t���b�V����", 300, Axl2, true);

	Wait(200);

	CreateSE("SE05","se�퓬_�Ō�_�q�b�g��04");
	MusicStart("SE05",0,700,0,1000,null,false);
	CreateColorEXadd("�G�t���b�V����", 5000, "FFFFFF");
	Fade("�G�t���b�V����", 100, 1000, Dxl1, true);
	FadeDelete("�G�t���b�V����", 300, Axl2, true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0270]
He starts to kick Clear mercilessly&.

The other members do so too&, and I can see countless feet 
kicking into the cowering Clear&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	CreateSE("SE02","se�l��_����_�ߎC��01");
	MusicStart("SE02",0,700,0,1300,null,false);

	CreatePlainSP("�G��", 990);
	Shake("�G��", 200, 20, 0, 0, 0, 500, null, true);
	Delete("�G��");

	FwPro("fw���t_�ʏ�_pain",3400,"fw���t_�ʏ�_shout2");

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0280]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm42/5000270a01">
"Let go-! Shit&, let go of me! Clear!!"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0290]
It's completely one-sided&.&.&.!

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fwm�C�i�__�ʏ�_normal");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0300]
//�y�Z�M�z
<voice name="�Z�M" class="�Z�M" src="voice/dm42/5000280c05">
"This should be enough&. He'll die if we keep going&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	CreateSE("SE01","se�l��_����_�ߎC��02");
	MusicStart("SE01",0,700,0,900,null,false);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0310]
The glasses guy stops kicking with a satisfied look on his face&, and kicks Clear's face to the side&. Clear firmly 
grabs onto his legs with both hands and shakes him&.

&.&.&.He's alive&, right?
He's okay&, right?

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�����t�@�C��["dm4260.nss"]

}
