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


scene dm2510.nss_MAIN
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
	
	#bg304112_5_���]�^���[���z�[�����O=true;

	//�����[�g�t���O�A�I�����A����GameName
	$PreGameName = $GameName;
	$GameName = "dm2520.nss";

$HALevel=1;

}


scene dm2510.nss
{

	//���V�[���̓��ɕK���L�q
	$�X�N���v�g�o�[�W���� = " $Revision:  $";
	$�\���� = ModuleFileName();
	$�\���� = $SYSTEM_present_process;
	SystemInit();


//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\

	SoundPlay("@dm018",0,450,true);

	PrintBG("��w�i", 30000);

//��ef���[�r�[�̊֌W��A���]�m�C�Y�킪���]�̊ԂɂȂ�̂ŁA����������ɓ���i���q
//�������u���F�w�i��ύX���܂���(2/21)�v
	OnBG(10,"bg304121_5_���]�^���[���]�̊�");
	FadeBG(0,true);

	FadeDelete("��w�i", 0, null, true);

//�������u���o�F�|��A���[���A�����ځv
//�����A���[�����苿���A�����S�̂̏Ɩ����Ԃ��Ȃ�

//�������u���o�F�^���[�|��A�Ƃ肠�����̉�����v
//�����������A�ƃ^���[���h��n�߂�
	CreateSE("SE01","se����_���]�^���[_����01");//�������u�r�d�Fse����_���]�^���[_����01�v
	MusicStart("SE01",0,700,0,1000,null,false);
	CreatePlainSP("�G��", 100);
	Shake("�G��", 300, 10, 60, 0, 0, 1000, null, true);

	CreateSE("SE11","se����_���]�^���[_�n��01L");//�������u�r�d�Fse����_���]�^���[_�n��01L�v
	MusicStart("SE11",0,700,0,1000,null,true);
//	Shake_Loop("@�G��","shake01");
	dm1500ShakeLoop("�G��","bg304121_5_���]�^���[���]�̊�",400,1);

	CreateSE("SE22","se����_���]�^���[_�A���[��01L");
	MusicStart("SE22",0,700,0,1000,null,true);


//	CreateColorEXover("�G�F��", 500, "RED");
//	Fade("�G�F��", 500, 1000, Dxl1, true);

	CreateColorEXmul("�G�F��", 500, RED);
	Fade("�G�F��", 300, 600, null, true);


/*
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0010]
//�y���������z
<voice name="��������" class="��������" src="voice/dm25/1000010e14">
"A state of emergency has been declared&. Please immediately exit the building&. I repeat&. A state of emergency has been declared&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);
*/

	SetVolumeEX("SE22", 5000, 300, null);

	CreateVOICE("��������","dm25/1000010e14");
	MusicStart("��������",0,700,0,1000,null,true);

	St("C",740, @0,@0,"bu�m�C�Y_�ʏ�_shock");
	FadeSt("C",200,true);

/*
//�L�����̐F����Z�����܂��B
	CreateTextureEXmul("�G�w�i1", 800, 261, -16, "cg/bu/bu�m�C�Y_�ʏ�_normal.png");

//�L�����̏ゾ���ɐԂ����悤�ɂ��Ă��܂��B
	CreateStencil("�}�X�N�P",1000, 261, -16,128,"cg/bu/bu�m�C�Y_�ʏ�_normal.png",false);
	SetAlias("�}�X�N�P","�}�X�N�P");

	CreateColor("�}�X�N�P/�F�P", 900, 0, 0, 1024, 576, "RED");
	Fade("�}�X�N�P/�F�P",0,0,null,true);
	SetAlias("�}�X�N�P/�F�P","�}�X�N�P/�F�P");
	Request("�}�X�N�P/�F�P", MulRender);

//	WaitKey();

	Fade("�G�w�i1", 500, 500, null, false);
	Fade("�}�X�N�P/�F�P", 500, 500, null, false);
	DrawTransition("�}�X�N�P/�F�P", 500, 0, 400, 500, null, "cg/data/circle_09_00_0.png", false);

	RedFlash(200);

//	WaitKey();

//	RedFlashDelete();
//	Delete("�G�w�i1");
//	Delete("�}�X�N�P");
//	Delete("�}�X�N�P/�F�P");

//	WaitKey();
*/

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0011]
//�y�m�C�Y�z
<voice name="�m�C�Y" class="�m�C�Y" src="voice/dm25/1000020a03">
"Hey&, snap out of it!"

{
	Fw("fw���t_�ʏ�_pinch");
}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm25/1000030a01">
"Don't mind me&.&.&. Noiz&, at least you have to&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	St("C",740, @0,@0,"bu�m�C�Y_�ʏ�_angry");
	FadeSt("C",200,true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0012]
//�y�m�C�Y�z
<voice name="�m�C�Y" class="�m�C�Y" src="voice/dm25/1000040a03">
"And you're spouting crazy shit now of all times? Come on&,
 hurry up and stand!"


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	CreateSE("SE01","se�l��_����_�͂�01");
	MusicStart("SE01",0,700,0,1000,null,false);

	DeleteFw();
	DeleteAllSt(200,true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0014]
Noiz grabs my hand and helps me up&.

But&, I'm&.&.&.

"He" is&.&.&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw���t_�ʏ�_pinch");

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0020]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm25/1000050a01">
"It's too late for me&.&.&. You at least need to make it out&,
 hurry&.&.&.!"


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	DeleteFw();

	CreateSE("SE01","se�l��_����_����01");//�������u�r�d�Fse�l��_����_����01�v
	MusicStart("SE01",0,800,0,1000,null,false);
	CreateColorSP("�G�F��", 4000, "FFFFFF");
	Wait(30);
	FadeDelete("�G�F��", 70, null, true);

	St("C",740, @0,@0,"bu�m�C�Y_�ʏ�_angry");
	FadeSt("C",200,true);
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0021]
//�y�m�C�Y�z
<voice name="�m�C�Y" class="�m�C�Y" src="voice/dm25/1000060a03">
"Ngh!"


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	DeleteAllSt(200,true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0022]
I pulled my hand away from Noiz as he tried to pull me 
along&.

I was going to apologize immediately&.&.&. but didn't&.

I thought it would be fine for me to stay as I was&.

If Noiz can just get out on his own&.&.&.

But Noiz doesn't leave&.

{
	SetVolumeEX("@dm*", 3000, 0, null);
	SetVolumeEX("SE*", 5000, 200, null);

	SoundPlay("@dm015",0,450,true);
}
He was frowning&, closing his lips tightly and looked at 
the hand I shook off&.

And to protect it&, he wrapped it in his other hand&.

&.&.&.Huh?

Does that mean&.&.&.?

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw���t_�ʏ�_shock2");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0030]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm25/1000070a01">
"&.&.&.Don't tell me&, you&.&.&."

{
	St("C",740, @0,@0,"bu�m�C�Y_�ʏ�_angry");
	FadeSt("C",200,true);
}
//�y�m�C�Y�z
<voice name="�m�C�Y" class="�m�C�Y" src="voice/dm25/1000080a03">
"&.&.&.That's right&."


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0032]
For the first time&, Noiz glares at me with eyes full of 
real emotion&.


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0033]
//�y�m�C�Y�z
<voice name="�m�C�Y" class="�m�C�Y" src="voice/dm25/1000090a03">
"It hurts&. Because of you&."

{
	St("C",740, @0,@0,"bu�m�C�Y_�ʏ�_angry3");
	FadeSt("C",200,true);
}
//�y�m�C�Y�z
<voice name="�m�C�Y" class="�m�C�Y" src="voice/dm25/1000100a03">
"Because you used Scrap on me&.&.&. Because you pulled me out&, I can feel things again&."

{
	St("C",740, @0,@0,"bu�m�C�Y_�ʏ�_angry");
	FadeSt("C",200,true);
}
//�y�m�C�Y�z
<voice name="�m�C�Y" class="�m�C�Y" src="voice/dm25/1000110a03">
"It's your fault&. Are you going to throw me out after doing something like that without asking?"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw���t_�ʏ�_sad");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0040]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm25/1000120a01">
"But&.&.&. My power&.&.&. at this rate&, it's going to go out of
 control&.&.&. Then I can't return you back to how you were&.&."

{
	Fw("fw���t_�ʏ�_worry");
}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm25/1000130a01">
"Also&, I might destroy everyone&.&.&. even you&."

//�y���t�z
<voice name="���t" class="���t" src="voice/dm25/1000140a01">
"So&, just leave me&.&.&."


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	DeleteFw();
	DeleteAllSt(200,true);

	CreateSE("SE01","se�l��_����_����01");//�������u�r�d�Fse�l��_�Ռ�_�r���^01�v
	MusicStart("SE01",0,900,0,1000,null,false);
	CreateColorSP("�G�F��", 4000, "FFFFFF");
	Wait(30);
	FadeDelete("�G�F��", 300, null, true);

	Fw("fw���t_�ʏ�_worry3");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0043]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm25/1000150a01">
"Agh!"

{
	St("C",740, @0,@0,"bu�m�C�Y_�ʏ�_angry");
	FadeSt("C",200,true);
}
//�y�m�C�Y�z
<voice name="�m�C�Y" class="�m�C�Y" src="voice/dm25/1000160a03">
"&.&.&.That hurt&. You might be in pain too&, but hitting you
 hurts me too&. What happened to me? It hurts a lot more
 because I've never known this feeling before&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0050]
//�y�m�C�Y�z
<voice name="�m�C�Y" class="�m�C�Y" src="voice/dm25/1000170a03">
"I don't know if you're going to go out of control or
 whatever&, but whatever happens&, I'll do something about
 it&. I'll think of a solution&."

//�y�m�C�Y�z
<voice name="�m�C�Y" class="�m�C�Y" src="voice/dm25/1000180a03">
"And also&.&.&. you destroyed my world with your power&, and
 returned the feeling to my body&."

{
	St("C",740, @0,@0,"bu�m�C�Y_�ʏ�_angry");
	FadeSt("C",200,true);
}
//�y�m�C�Y�z
<voice name="�m�C�Y" class="�m�C�Y" src="voice/dm25/1000190a03">
"So your power isn't evil&. At least that's my opinion&."

{
	St("C",740, @0,@0,"bu�m�C�Y_�ʏ�_serious");
	FadeSt("C",200,true);
}
//�y�m�C�Y�z
<voice name="�m�C�Y" class="�m�C�Y" src="voice/dm25/1000200a03">
"I'll think of what's going to happen to you from now on&.
 So let's go together&. Okay?"

{
	Fw("fw���t_�ʏ�_shock3");
}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm25/1000210a01">
"&.&.&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	DeleteFw();
	DeleteAllSt(200,true);

	CreateSE("SE01","se�l��_����_����01");//�������u�r�d�Fse�l��_����_����01�v
	MusicStart("SE01",0,700,0,1000,null,false);

	CreateSE("SE02","se�l��_����_�ߎC��02");
	MusicStart("SE02",0,600,0,900,null,false);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0060]
Noiz places his hand on my shoulder&.
I stand up slowly to support it&.

When Noiz hit me&.&.&.
Something warm was born inside me&.

And mysteriously enough&, my headache was erased&.

"His" shadow&.&.&. was fading too&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

$HALevel=1;

	CreateSE("SE02","se�l��_����_����03");
	MusicStart("SE02",0,700,0,800,null,false);

	CreateSE("SE03","se�l��_����_����03");
	MusicStart("SE03",0,600,0,900,null,false);

	CreatePlainSP("�G��", 5000);
	OnBG(10,"bg304122_5_���]�^���[���]�̊�");
	FadeBG(0,true);
	FadeDelete("�G�w�i", 500, null, true);

	Fw("fw�m�C�Y_�ʏ�_normal3");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0064]
//�y�m�C�Y�z
<voice name="�m�C�Y" class="�m�C�Y" src="voice/dm25/1000220a03">
"&.&.&.You know&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	SetVolumeEX("SE*", 2000, 0, null);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0065]
Noiz opens his mouth when we walk to the door&.


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw�m�C�Y_�ʏ�_normal3");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0066]
//�y�m�C�Y�z
<voice name="�m�C�Y" class="�m�C�Y" src="voice/dm25/1000230a03">
"I think I know what you mean now&."

{
//	Fw("fw�m�C�Y_�ʏ�_normal");
	FwPro("fw�m�C�Y_�ʏ�_normal2",5500,"fw�m�C�Y_�ʏ�_smile");
}
//�y�m�C�Y�z
<voice name="�m�C�Y" class="�m�C�Y" src="voice/dm25/1000240a03">
"The thing about wanting to help somebody who's in pain&. If you know pain&, you'll know how it feels&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw���t_�ʏ�_confuse");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0070]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm25/1000250a01">
"&.&.&.Yeah&."


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0080]
When I hear his words&, a warm&, pleasant feeling bubbles up in my chest&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	SetVolumeEX("@dm*", 2000, 0, null);

//�����t�@�C��["dm2520.nss"]

	SetVolumeEX("SE*", 2000, 0, null);
	SetVolumeEX("����*", 2000, 0, null);
	ClearFadeAll(2000, true);

}
