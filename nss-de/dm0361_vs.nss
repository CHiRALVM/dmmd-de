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


scene dm0361_vs.nss_MAIN
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
	$GameName = "dm0370.nss";

}


scene dm0361_vs.nss
{

	//���V�[���̓��ɕK���L�q
	$�X�N���v�g�o�[�W���� = " $Revision:  $";
	$�\���� = ModuleFileName();
	$�\���� = $SYSTEM_present_process;
	SystemInit();


//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\

	SoundPlay("@dm006",0,450,true);

	PrintBG("��w�i", 30000);

	OnBG(10,"bg104031_5_���t��������r�炵");
	FadeBG(0,true);
	CreateTextureSP("�G�w�i100", 100, Center, -800, "cg/bg/l/bg104031_5_���t��������r�炵_l.jpg");

	FadeDelete("��w�i", 0, null, true);

	CreateSE("SE01","se�l��_����_����02");
	MusicStart("SE01",0,500,0,1000,null,false);
	Wait(500);

	SetVolumeEX("SE*", 2000, 0, null);


//==============================================
//���u�K�i����鉹�����������v��I�񂾏ꍇ
//==============================================

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0010]
&.&.&.Just now&, a sound came from the stairs&.

But I can't afford to think about what it is&.


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	CreateSE("SE01","se�l��_����_�i�߂�01");
	MusicStart("SE01",0,700,0,1000,null,false);
	SetVolumeEX("SE*", 3000, 0, null);

	CreatePlainSP("�G��", 990);
	Shake("�G��", 150, 5, 0, 0, 0, 500, null, true);
	Delete("�G��");

	Fw("fw���t_�ʏ�_pain");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0013]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm03/6100010a01">
"&.&.&.Ugh&.&.&.!"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	SetVolumeEX("@dm*", 1000, 0, null);

	CreateSE("SE01","se����_���t�����_���J������01");//�������u�r�d�Fse����_���t�����_���J������01�v
	MusicStart("SE01",0,700,0,1000,null,false);

	FadeDelete("�G�w�i100", 200, null, true);

	SoundPlay("@dm009",0,450,true);

	Fw("fw�g��_�ʏ�_shout");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0015]
//�y�g���z
<voice name="�g��" class="�g��" src="voice/dm03/6100020a02">
"Aoba!"

{
	Fw("fw���t_�ʏ�_pinch");
}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm03/6100030a01">
"!?"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	CreateSE("SE01","se�l��_����_�ߎC��01");
	MusicStart("SE01",0,700,0,1000,null,false);

	St("C",740, @0,@0,"st�g��_�ʏ�_angry");
	FadeSt("C",200,true);
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0020]
Suddenly the door opens and Koujaku flies in&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw���t_�ʏ�_pinch");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0021]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm03/6100040a01">
"Koujaku! Why are&.&.&."

{
	St("C",740, @0,@0,"st�g��_�ʏ�_shout");
	FadeSt("C",200,true);
}
//�y�g���z
<voice name="�g��" class="�g��" src="voice/dm03/6100050a02">
"I sent you a message saying I'd come to talk about Mizuki&,
 didn't I? But more importantly&.&.&. You bastard&, let go
 of Aoba!"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	DeleteAllSt(200,true);
	CreateSE("SE01","se�l��_����_�ߎC��25");
	MusicStart("SE01",0,700,0,1000,null,false);

	CreatePlainSP("�G��", 990);
	Shake("�G��", 200, 0, 10, 0, 0, 500, null, true);
	Delete("�G��");

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0023]
Koujaku growls and grabs the man&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw�m�C�Y_�ʏ�_angry2");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0024]
//�y�m�C�Y�z
<voice name="�m�C�Y" class="�m�C�Y" src="voice/dm03/6100060a03">
"Tch&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	DeleteFw();

	CreateSE("SE01","se��_�퓬_�g���ƃm�C�Y�̂��ݍ���01L");
	MusicStart("SE01",0,700,0,1000,null,true);

	CreatePlainSP("�G��", 990);
	Shake("�G��", 200, 0, 10, 0, 0, 500, null, true);
	Delete("�G��");

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0025]
The man falls down on the floor with Koujaku&, and a 
struggle begins&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0030]
My arm is released and I'm now free&, but it's already too 
late&.


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	CreateSE("SE01","se�l��_����_�͂�01");
	MusicStart("SE01",0,700,0,1000,null,false);

	Fw("fw���t_�ʏ�_rage");

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0031]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm03/6100070a01">
"Stop it&, both of you!"

{
	DeleteFw();
	CreateTextureEX("�G�w�i200", 200, Center, -62, "cg/bg/m/bg104031_5_���t��������r�炵_m.jpg");
	SetShade("�G�w�i200", MEDIUM);
	Move("�G�w�i200", 250, @200, @0, Dxl1, false);
	Fade("�G�w�i200", 250, 1000, null, true);

	SetVolumeEX("SE*", 2000, 0, null);

	St("L",740, @0,@0,"bu�m�C�Y_�ʏ�_angry");
	FadeSt("L",200,true);
}
//�y�m�C�Y�z
<voice name="�m�C�Y" class="�m�C�Y" src="voice/dm03/6100080a03">
"&.&.&.Ugh!"

{
	DeleteAllSt(180,true);
	Move("�G�w�i200", 250, @-400, @0, Dxl1, true);
	St("R",740, @0,@0,"bu�g��_�ʏ�_angry2");
	FadeSt("R",180,true);
}
//�y�g���z
<voice name="�g��" class="�g��" src="voice/dm03/6100090a02">
"Bastard!"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	DeleteAllSt(200,true);

	CreateSE("SE01","se�퓬_�Ō�_�q�b�g��01");//�������u�r�d�Fse�퓬_�Ō�_�q�b�g��01�v
	MusicStart("SE01",0,700,0,1000,null,false);
	CreateColorSP("�G�F��", 4000, "FFFFFF");
	Wait(10);
	Delete("�G�w�i200");
	FadeDelete("�G�F��", 70, null, true);

	CreateSE("SE01","se��_�퓬_�g���ƃm�C�Y�̂��ݍ���01L");
	MusicStart("SE01",0,700,0,1000,null,true);

	CreatePlainSP("�G��", 990);
	Shake("�G��", 150, 0, 15, 0, 0, 500, null, true);
	Delete("�G��");

	Fw("fw�m�C�Y_�ʏ�_angry");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0037]
//�y�m�C�Y�z
<voice name="�m�C�Y" class="�m�C�Y" src="voice/dm03/6100100a03">
"Ngh&.&.&.!"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	DeleteFw();

	CreatePlainSP("�G��", 990);
	Shake("�G��", 200, 0, 20, 0, 0, 500, null, true);
	Delete("�G��");

	Fw("fw�g��_�ʏ�_angry2");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0040]
//�y�g���z
<voice name="�g��" class="�g��" src="voice/dm03/6100110a02">
"&.&.&.Gh!"

{
	Fw("fw���t_�ʏ�_shout2");
}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm03/6100120a01">
"Hey!"


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	DeleteFw();

	CreatePlainSP("�G��", 990);
	Shake("�G��", 150, 0, 15, 0, 0, 500, null, true);
	Delete("�G��");

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0042]
I can't stop them because they're rolling and tumbling 
all over the place&.

The man avoids Koujaku's attack and grabs his shoulder&, 
trying to kick him in the stomach&.

Koujaku dodges it with his hand and returns the favor 
with a headbutt&.


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	CreateSE("SE01","se�퓬_�Ō�_�q�b�g��01");//�������u�r�d�Fse�퓬_�Ō�_�q�b�g��01�v
	MusicStart("SE01",0,700,0,1000,null,false);
	CreateColorSP("�G�F��", 4000, "FFFFFF");
	Wait(10);
	FadeDelete("�G�F��", 70, null, true);

	Fw("fw�m�C�Y_�ʏ�_pain");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0045]
//�y�m�C�Y�z
<voice name="�m�C�Y" class="�m�C�Y" src="voice/dm03/6100130a03">
"Tsk!!"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	CreateSE("SE01","se�퓬_�Ō�_���؂��01");
	MusicStart("SE01",0,700,0,1000,null,false);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0050]
That slows the man's movements&. But he immediately 
kicks Koujaku in the stomach again&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw�g��_�ʏ�_angry4");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0051]
//�y�g���z
<voice name="�g��" class="�g��" src="voice/dm03/6100140a02">
"&.&.&.Ugh&, asshole!"


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	DeleteFw();

	CreateSE("SE01","se�퓬_�Ō�_���؂��01");
	MusicStart("SE01",0,700,0,800,null,false);
	CreateColorSP("�G�F��", 4000, "FFFFFF");
	Wait(10);
	FadeDelete("�G�F��", 70, null, true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0052]
Koujaku retreats to a safe distance and the knee of the 
man goes just above the hem of his kimono&.


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	CreateSE("SE01","se�l��_����_�ߎC��01");
	MusicStart("SE01",0,700,0,1400,null,false);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0053]
Koujaku&, fed up with the bratty man who won't behave&, 
raises his fist fiercely&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	CreateSE("SE01","se����_�h�A��_�m�b�N01");
	MusicStart("SE01",0,700,0,1500,null,false);

	DeleteAllSt(200,true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0054]
&.&.&.Then&, a sound comes from the window&.

Everyone's attention is turned to there&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	CreatePlainSP("�G��", 5000);
	Wait(16);

	OnBG(10,"bg104041_3_���t��x�����_");
	FadeBG(0,true);

	St("C",740, @0,@500,"fu�N���A_�ʏ�}�X�N����_normal");
	FadeSt("C",0,true);

	Wait(16);

	Delete("�G��");

	CreateSE("SE01","se����_���t������_�J��01a");
	MusicStart("SE01",0,700,0,1000,null,false);

	FadeFFR("@StNameC/C*",0,3000,150,0,0,60,null, true);
	Move("@StNameC/C*", 3000, @0, @-500, Dxl1, false);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0060]
//�y�N���A�z
<voice name="�N���A" class="�N���A" src="voice/dm03/6100150a04">
"Maaaaaaaasteeeeeeeeerrr&.&.&.!"

&.&.&.&.&.

{
	Fw("fw���t_�ʏ�_shout2");

	CreateSE("SE02","se����_���t��K�i_�o�鋭��01");
	MusicStart("SE02",0,700,0,1000,null,false);
}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm03/6100160a01">
"Eeeeeeeeeeeeeeehh!?"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�����t�@�C��["dm0370.nss"]

}
