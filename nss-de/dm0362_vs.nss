//<continuation number="440">
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


scene dm0362_vs.nss_MAIN
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


scene dm0362_vs.nss
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

//==============================================
//���u�������牽�����������v��I�񂾏ꍇ
//==============================================

//	CreateSE("SE01","se�l��_����_�͂�01");
//	MusicStart("SE01",0,4500,0,1000,null,false);

	CreateSE("SE02","se�l��_�Ռ�_�]�|02");
	MusicStart("SE02",0,400,0,800,null,false);

	Wait(300);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0010]
I hear a heavy sound from somewhere&.

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

	Fw("fw���t_�ʏ�_pinch");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0011]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm03/6200010a01">
"That hurts&.&.!"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0012]
A strong pain runs through my arm and I grit my teeth&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	SetVolumeEX("@dm*", 3000, 0, null);

	CreateSE("SE01","se�l��_����_�@��01");//�������u�r�d�Fse�l��_����_�@��01�v
	MusicStart("SE01",0,700,0,1000,null,false);

	Fw("fw�m�C�Y_�ʏ�_angry");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0013]
//�y�m�C�Y�z
<voice name="�m�C�Y" class="�m�C�Y" src="voice/dm03/6200020a03">
"&.&.&.?"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0014]
//�y�N���A�z
<voice name="�N���A" class="�N���A" src="voice/dm03/6200030a04">
"Please separate from Master&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw�m�C�Y_�ʏ�_shock");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0015]
//�y�m�C�Y�z
<voice name="�m�C�Y" class="�m�C�Y" src="voice/dm03/6200040a03">
"!"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);


//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0020]
Suddenly I hear the voice of a different person&.

I turn to look and&.&.&. I'm very startled&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw���t_�ʏ�_pinch");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0021]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm03/6200050a01">
"You&.&.&."

{
	SoundPlay("@dm009",0,450,true);

	DeleteFw();
	CreateTextureEX("�G�w�i200", 200, Center, -62, "cg/bg/m/bg104031_5_���t��������r�炵_m.jpg");
	SetShade("�G�w�i200", MEDIUM);
	Move("�G�w�i200", 250, @-200, @0, Dxl1, false);
	Fade("�G�w�i200", 250, 1000, null, true);
	Delete("�G�w�i100");

	St("C",740, @0,@0,"bu�N���A_�ʏ�}�X�N����_normal");
	FadeSt("C",200,true);
}
//�y�N���A�z
<voice name="�N���A" class="�N���A" src="voice/dm03/6200060a04">
"Hello&, Master&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0022]
I'm not sure when he came in&, but next to the man stands 
the gas mask-wearing guy I'd met in front of Heibon&.


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	CreateSE("SE01","se����_�x�b�h_�Q��01");
	MusicStart("SE01",0,600,0,800,null,false);

	DeleteAllSt(180,true);
	Move("�G�w�i200", 250, @400, @0, Dxl1, true);
	St("L",740, @0,@0,"bu�m�C�Y_�ʏ�_normal");
	FadeSt("L",180,true);
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0023]
//�y�m�C�Y�z
<voice name="�m�C�Y" class="�m�C�Y" src="voice/dm03/6200070a03">
"&.&.&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0030]
The man in green stands cautious with his whole body like 
a hedgehog&, and moves to put some distance between him and 
the gas mask guy&.

I rub my aching arm when I'm released&, then straighten 
myself&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	St("L",740, @0,@0,"bu�m�C�Y_�ʏ�_normal2");
	FadeSt("L",200,true);
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0032]
//�y�m�C�Y�z
<voice name="�m�C�Y" class="�m�C�Y" src="voice/dm03/6200080a03">
"You&.&.&. When�fd you come in?"

{
	DeleteAllSt(180,true);
	Move("�G�w�i200", 250, @-400, @0, Dxl1, true);
	St("C",740, @0,@0,"bu�N���A_�ʏ�}�X�N����_normal");
	FadeSt("C",180,true);
}
//�y�N���A�z
<voice name="�N���A" class="�N���A" src="voice/dm03/6200090a04">
"Just now&, through that door over there&. Master&, is this
 a friend of yours?"

{
	FwPro("fw���t_�ʏ�_shock2",1200,"fw���t_�ʏ�_shock");
//	Fw("fw���t_�ʏ�_shock2");
}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm03/6200100a01">
"No&.&.&. Hm? But that door's&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	DeleteFw();
	DeleteAllSt(200,true);
	Move("�G�w�i200", 250, @-100, @0, Dxl1, false);
	FadeDelete("�G�w�i200", 250, Dxl1, true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0033]
When I look at the veranda&.&.&.

&.&.&.I see the door wide open&.

{
	CreateSE("SE01","se��_���R_���Ɩ؁X01L");
	MusicStart("SE01",0,500,0,1000,null,true);
	SetVolumeEX("SE*", 3000, 0, null);
}
No&, the lock's been cut off completely&.&.&.


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw���t_�ʏ�_rage");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0034]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm03/6200110a01">
"You&.&.&. what have you done?"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	St("R",740, @0,@0,"st�N���A_�ʏ�}�X�N����_normal");
	FadeSt("R",200,true);
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0040]
//�y�N���A�z
<voice name="�N���A" class="�N���A" src="voice/dm03/6200120a04">
"The door was closed&, so I opened it&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw���t_�ʏ�_rage");

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
/*
{
	Fw("fw���t_�ʏ�_rage");
}
*/
<PRE @box0>
[text0041]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm03/6200130a01">
"That's not what I meant&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	St("L",740, @0,@0,"st�m�C�Y_�ʏ�_normal");
	FadeSt("L",200,true);
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0042]
//�y�m�C�Y�z
<voice name="�m�C�Y" class="�m�C�Y" src="voice/dm03/6200140a03">
"Master?"

//�y�N���A�z
<voice name="�N���A" class="�N���A" src="voice/dm03/6200150a04">
"Yes&. Master is my Master&."

{
	St("L",740, @0,@0,"st�m�C�Y_�ʏ�_angry");
	FadeSt("L",200,true);
}
//�y�m�C�Y�z
<voice name="�m�C�Y" class="�m�C�Y" src="voice/dm03/6200160a03">
"&.&.&.Are you kidding me?"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);


//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0050]
The man scowls at the other man and I with a fierce 
expression&.

Even though he's looking at me like that&, I have no idea 
what's happening at all&. 

I mean&, everything's getting confusing&, and&.&.&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//	ClearComic("�{��01",1000);
	ClearComicNext(20001,676, 29,19,"stL");

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0054]
//�y�N���A�z�������F�{��
<voice name="�N���A" class="�N���A" src="voice/dm03/6200170a04">
"Anyway&, please don't bully Master&. I won't allow it&."

{	Fw("fw���t_�ʏ�_sigh");}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm03/6200180a01">
"&.&.&.&.&."

{
	St("L",740, @0,@0,"st�m�C�Y_�ʏ�_angry");
	FadeSt("L",200,true);
}
//�y�m�C�Y�z
<voice name="�m�C�Y" class="�m�C�Y" src="voice/dm03/6200190a03">
"That's ridiculous&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	ClearComicDelete("�{��01");
	ClearComicNexDelete();

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0056]
&.&.&.Don't tell me he's actually getting really angry?

The man in green turns his body towards the gas mask guy&.

I can feel his bloodlust even as he faces the other way&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	DeleteAllSt(200,true);

	Fw("fw���t_�ʏ�_worry4");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0060]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm03/6200200a01">
"Hey&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0061]
&.&.&.I have to stop them&.

If my room gets any more messed up&, I'll be in trouble&.&.&.!

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	CreateSE("SE01","se����_���t�����_���J������01");//�������u�r�d�Fse����_���t�����_���J������01�v
	MusicStart("SE01",0,700,0,1000,null,false);

	Fw("fw�g��_�ʏ�_shout");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0062]
//�y�g���z
<voice name="�g��" class="�g��" src="voice/dm03/6200210a02">
"Aoba!"

{
	Fw("fw���t_�ʏ�_shock2");
}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm03/6200220a01">
"Eh!?"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0064]
Suddenly the door opens and Koujaku flies in&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	CreateSE("SE01","se�l��_����_�ߎC��01");
	MusicStart("SE01",0,700,0,1000,null,false);

	St("C",740, @0,@0,"st�g��_�ʏ�_shout");
	FadeSt("C",200,true);
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0070]
//�y�g���z
<voice name="�g��" class="�g��" src="voice/dm03/6200230a02">
"Are you okay!?"

{
	Fw("fw���t_�ʏ�_shock2");
}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm03/6200240a01">
"Koujaku&.&.&.!? Why are you-"

{
	St("C",740, @0,@0,"st�g��_�ʏ�_angry2");
	FadeSt("C",200,true);
}
//�y�g���z
<voice name="�g��" class="�g��" src="voice/dm03/6200250a02">
"I sent you a message saying I'd come to talk about Mizuki&, didn't I? Then I saw some weirdo in a gas mask going in
 through the veranda&."

//�y�g���z
<voice name="�g��" class="�g��" src="voice/dm03/6200260a02">
"So I came in a hurry&.&.&."

{
	St("C",740, @0,@0,"st�g��_�ʏ�_angry");
	FadeSt("C",200,true);
}
//�y�g���z
<voice name="�g��" class="�g��" src="voice/dm03/6200270a02">
"Seems that someone else besides gas mask guy is here too&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0080]
Koujaku fixes his eyes on the gas mask man and the man in 
green&.


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	DeleteAllSt(180,true);
	St("L",740, @0,@0,"st�m�C�Y_�ʏ�_normal");
	FadeSt("L",180,true);
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0081]
//�y�m�C�Y�z
<voice name="�m�C�Y" class="�m�C�Y" src="voice/dm03/6200280a03">
"The way I'm seeing it&, you're the ones who're in the way&."

{
	DeleteAllSt(180,true);
	St("C",740, @0,@0,"st�g��_�ʏ�_angry");
	FadeSt("C",180,true);
}
//�y�g���z
<voice name="�g��" class="�g��" src="voice/dm03/6200290a02">
"So you're not that guy's friend?"

{
	DeleteAllSt(180,true);
	St("L",740, @0,@0,"st�m�C�Y_�ʏ�_normal3");
	FadeSt("L",180,true);
}
//�y�m�C�Y�z
<voice name="�m�C�Y" class="�m�C�Y" src="voice/dm03/6200300a03">
"Don't lump me with him&."

{
	DeleteAllSt(180,true);
	St("R",740, @0,@0,"st�N���A_�ʏ�}�X�N����_normal");
	FadeSt("R",180,true);
}
//�y�N���A�z
<voice name="�N���A" class="�N���A" src="voice/dm03/6200310a04">
"We certainly have not yet put each other in a category
 called friends&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	DeleteAllSt(180,true);
	St("C",740, @0,@0,"st�g��_�ʏ�_shout");
	FadeSt("C",180,true);
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0090]
//�y�g���z
<voice name="�g��" class="�g��" src="voice/dm03/6200330a02">
"Anyway&, you guys better leave right now&. Or else I'll
 throw you out&."

{
	DeleteAllSt(180,true);
	St("L",740, @0,@0,"st�m�C�Y_�ʏ�_normal");
	FadeSt("L",180,true);
}
//�y�m�C�Y�z
<voice name="�m�C�Y" class="�m�C�Y" src="voice/dm03/6200340a03">
"How?"

{
	DeleteAllSt(180,true);
	St("C",740, @0,@0,"st�g��_�ʏ�_angry");
	FadeSt("C",180,true);
}
//�y�g���z
<voice name="�g��" class="�g��" src="voice/dm03/6200350a02">
"I guess I wouldn't have any other choice but to use brute
 force&."

{
	DeleteAllSt(180,true);
	St("L",740, @0,@0,"st�m�C�Y_�ʏ�_normal2");
	FadeSt("L",180,true);
}
//�y�m�C�Y�z
<voice name="�m�C�Y" class="�m�C�Y" src="voice/dm03/6200360a03">
"I'd like to see you try&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0094]
The man raises the edges of his mouth to provoke Koujaku&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	St("L",740, @0,@0,"st�m�C�Y_�ʏ�_smile");
	FadeSt("L",200,true);
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0100]
//�y�m�C�Y�z
<voice name="�m�C�Y" class="�m�C�Y" src="voice/dm03/6200370a03">
"You're shouldering some big stuff&, are you actually so
 weak to need to do something like that?"

{
	St("R",740, @0,@0,"st�g��_�ʏ�_angry");
	FadeSt("R",200,true);
}
//�y�g���z
<voice name="�g��" class="�g��" src="voice/dm03/6200371a02">
"&.&.&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//{�������u���F�}�k�P�Ȋ����������特�g��Ȃ��v
//	CreateSE("SE01","se�l��_����_�֐ߖ炵01");//�������u�r�d�Fse�l��_����_�֐ߖ炵01�v
//	MusicStart("SE01",0,700,0,1000,null,false);}

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0104]
Normally he would never be provoked by something like 
this&, but is he actually&.&.&.

Koujaku puts both hands together and cracks his knuckles 
in front of me&.

Aah&.&.&. It's useless to try and stop him&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	St("R",740, @0,@0,"st�g��_�ʏ�_angry2");
	FadeSt("R",200,true);
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0106]
//�y�g���z
<voice name="�g��" class="�g��" src="voice/dm03/6200380a02">
"I'll shut that bratty mouth of yours up right now!"

{
	Fw("fw���t_�ʏ�_shout2");
}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm03/6200390a01">
"Hey&, wait a minute!"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	CreateSE("SE01","se�l��_����_�ߎC��25");
	MusicStart("SE01",0,700,0,1000,null,false);

	DeleteFw();
	DeleteAllSt(200,true);
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0110]
As soon as I say that&, Koujaku takes a long stride 
towards the man&.

The distance between the two becomes smaller and he tries 
to catch him&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	CreateSE("SE01","se�퓬_�Ō�_���؂��01");//�������u�r�d�Fse�퓬_�Ō�_���؂��01�v
	MusicStart("SE01",0,700,0,1000,null,false);
	CreateColorSP("�G�F��", 4000, "FFFFFF");
	Wait(10);
	Fade("�G�F��", 70, 0, null, true);

	Fw("fw�m�C�Y_�ʏ�_angry");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0111]
//�y�m�C�Y�z
<voice name="�m�C�Y" class="�m�C�Y" src="voice/dm03/6200400a03">
"&.&.&.Huh!"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0112]
The man dodges quickly&, drops down low&, and tries to hit 
Koujaku&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	CreateSE("SE01","se�퓬_����_����01");//�������u�r�d�Fse�퓬_����_����01�v
	MusicStart("SE01",0,700,0,1000,null,false);
	CreateColorSP("�G�F��", 4000, "FFFFFF");
	Wait(10);
	Fade("�G�F��", 70, 0, null, true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0113]
Just before the man's fist can graze his cheek&, Koujaku 
avoids it&.

&.&.&.Hey&, I shouldn't be just sitting around and watching!

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	CreateSE("SE01","se��_�퓬_�g���ƃm�C�Y�̂��ݍ���01L");//�������u�r�d�Fse��_�퓬_�g���ƃm�C�Y�̂��ݍ���01L�v
	MusicStart("SE01",0,700,0,1000,null,true);

	CreatePlainSP("�G��", 990);
	Shake("�G��", 200, 0, 15, 0, 0, 500, null, true);
	Delete("�G��");

	Fw("fw���t_�ʏ�_shout2");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0114]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm03/6200410a01">
"Stop it! This is my room!"

{
	Fw("fw�N���A_�ʏ�}�X�N����_normal");
}
//�y�N���A�z
<voice name="�N���A" class="�N���A" src="voice/dm03/6200420a04">
"Both of them are strong&, aren't they?"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw���t_�ʏ�_rage");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0120]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm03/6200430a01">
"Now's not the time to say something so carefree!"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0121]
Aside from with this man&, Koujaku usually had lots of 
patience&, he must have a short-temper switch for some 
situations&.&.&.!

And if the switch is turned on&, he won't listen to anyone 
else&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	CreateSE("SE02","se����_������_�U�炩��01");//�������u�r�d�Fse����_������_�U�炩��01�v
	MusicStart("SE02",0,700,0,1000,null,false);
	BGPlainShake(50,300,0,20,0,0,1000,null,true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0124]
As the two of them brawl on the floor&, the magazines and 
trash can also on the floor are kicked&, stepped on and 
crushed&.

Aaaaaah&.&.&.

The other stuff is fine&, but please don't go near the 
computer&.&.&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	SetVolumeEX("SE*", 3000, 0, null);

	Fw("fw���t_�ʏ�_shout");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0126]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm03/6200440a01">
"Can you both just freakin' stop&.&.&.!?"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	CreateSE("SE02","se����_���t��K�i_�o�鋭��01");//�������u�r�d�Fse����_���t��K�i_�o�鋭��01�v
	MusicStart("SE02",0,700,0,1000,null,false);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0127]
The sound of the two of them rampaging almost covers my 
shout&, but I can hear pounding footsteps coming up the 
stairs towards my room&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�����t�@�C��["dm0370.nss"]

}
