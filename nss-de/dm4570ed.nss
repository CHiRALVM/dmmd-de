//<continuation number="70">
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


scene dm4570ed.nss_MAIN
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
	#ev457�N���AGOOD�d�c=true;

	//�����[�g�t���O�A�I�����A����GameName
	$PreGameName = $GameName;
	$GameName = "dm9999.nss";


	//���G���h���[��
	PreSetRoll(12);
	TheEND(12);

#GDED4=1;//�N���A�O�b�h�G���h�t���O�擾

}


scene dm4570ed.nss
{

	//���V�[���̓��ɕK���L�q
	$�X�N���v�g�o�[�W���� = " $Revision:  $";
	$�\���� = ModuleFileName();
	$�\���� = $SYSTEM_present_process;
	SystemInit();


//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\

//�����o�F��ʈÓ]�^��ʓ]��

	PrintBG("��w�i", 30000);

	OnBG(10,"bg104001_1_���t��O�ʂ�");
	FadeBG(0,true);

	FadeDelete("��w�i", 1000, null, true);

	Fw("fw���t_�ʏ�_normal2");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0010]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm45/7000010a01">
"Whew&.&.&. I'm home!"


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	CreateSE("SE01","se����_���t���_���J���������01");
	MusicStart("SE01",0,700,0,1000,null,false);

	CreateColorSP("�G����", 25000, "BLACK");

	DrawTransition("�G����", 1000, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);

	CreateTextureSPadd("�G�w�i", 100, Center, Middle, "cg/bg/bg104011_5_���t���.jpg");
	Fade("�G�w�i", 0, 600, null, true);


	OnBG(10,"bg104011_5_���t��֏���");
	FadeBG(0,true);


	DrawDelete("�G����", 1000, 100, null, "blind_01_00_1", true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0011]
I come home&, finished with work&, and open up the front 
door&. The entire house is silent&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw���t_�ʏ�_shock2");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0012]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm45/7000020a01">
"Huh? Granny?"


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0013]
She doesn't respond to me in her bellowing voice as she 
usually would&. Maybe she went out&.

{
	CreateSE("SE01","se����_���t��K�i_�o��ʏ�01");
	MusicStart("SE01",0,700,0,1000,null,false);
}
I take off my shoes&, and head up the stairs to my room&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	CreatePlainSP("�G��", 5000);
	SetVolumeEX("SE*", 1000, 0, null);

	Delete("�G�w�i*");
	OnBG(10,"bg104031_5_���t���");
	FadeBG(0,true);

	FadeDelete("�G��", 1000, null, true);

	CreateSE("SE02","se����_��_�J�[�e���J���鑁��01");
	MusicStart("SE02",0,700,0,1000,null,false);

	SoundPlay("@dm020b",1000,200,true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0014]
When I first get in&, I take Ren out of my bag and close 
the curtains that I've had open since this morning&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw���t_�ʏ�_shock");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0015]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm45/7000030a01">
"&.&.&.?"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);


//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0020]
What's that sound&.&.&.?

It's coming from outside&.

{
	CreateSE("SE01","se����_���t������_�J��01a");
	MusicStart("SE01",0,700,0,1000,null,false);
}
I open the window to the veranda&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	SetVolumeEX("@dm020b", 3000, 300, null);

	SetVolumeEX("SE*", 1000, 0, null);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0021]
Night is slowly setting in&, and a breeze is blowing&.

I squint my eyes and walk up to the veranda's handrail&.
I think the thing I heard was&.&.&. a song?

Is someone singing?

It's only faint&, but&.&.&.

This melody&.&.&.

{
	Fw("fw���t_�ʏ�_worry4");
}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm45/7000040a01">
"&.&.&.!"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0030]
Surprised&, I lean over the handrail&.

My eyes scan over all of the scenery I can see&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	SoundPlay("@dm020b",2000,450,true);

	CreateTextureEX("�G�d�u100", 100, Center, 350, "cg/ev/l/ev457�N���AGOOD�d�c_l.jpg");
	Zoom("�G�d�u100", 0, 1800, 1800, null, true);
	Request("�G�d�u100", Smoothing);
	Move("�G�d�u100", 1000, @0, @100, Dxl1, false);
	Fade("�G�d�u100", 1000, 1000, null, true);

	Wait(500);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0031]
The space between each house&.
The back of the posts&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	CreateTextureEX("�G�d�u101", 101, -1700, -300, "cg/ev/l/ev457�N���AGOOD�d�c_l.jpg");
	Zoom("�G�d�u101", 0, 1800, 1800, null, true);
	Request("�G�d�u101", Smoothing);
	Move("�G�d�u101", 1000, @150, @0, Dxl1, false);
	Fade("�G�d�u101", 1000, 1000, null, true);
	Delete("�G�d�u100");

	Wait(500);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0032]
I look around each street corner&.
The other side of billboards&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	CreateTextureEX("�G�d�u102", 102, -500, -1000, "cg/ev/l/ev457�N���AGOOD�d�c_l.jpg");
	Zoom("�G�d�u102", 0, 1800, 1800, null, true);
	Request("�G�d�u102", Smoothing);
	Move("�G�d�u102", 1000, @-400, @0, Dxl1, false);
	Fade("�G�d�u102", 1000, 1000, null, true);
	Delete("�G�d�u101");

	Wait(500);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0033]
And then&.&.&.<k><?>
I see something on the rooftop of a house a 
little far away&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	Move("�G�d�u102", 1000, @200, @100, Dxl1, true);
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0034]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm45/7000050a01">
"&.&.&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0035]
In the twilight&, a person sits on the roof of a house&.

The mysterious figure looks like he's holding an umbrella&.

He continues to sing&.<k>
I listen carefully&, trying to make out as much as I can&.

That gentle&, soft&, clear melody&.

//*Put on shades* YEEEEEEEEAAAAAAHHHHH

While bending over the veranda&, I listen to the tune&, 
feeling memories flowing back to me&.
He called it the "Jellyfish Song"&.

And now&.&.&.<k>He's singing it once more&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	SetVolumeEX("@dm020b", 2500, 0, null);

	Move("�G�d�u102", 1500, @0, -626, Dxl1, true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0040]
He slowly ends the song&, and the person with the umbrella 
turns his head around&.

{
	SoundPlay("@dmedgood",0,450,false);
}
And then&.&.&. my vision starts to blur&.

The person who just turned his head is smiling quietly&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	CreateTextureEX("�G�d�u103", 103, -626, -519, "cg/ev/l/ev457�N���AGOOD�d�c_l.jpg");
	Move("�G�d�u103", 1000, -626, -476, Dxl3, false);
	Fade("�G�d�u103", 1000, 1000, null, true);
	Delete("�G�d�u102");

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0041]
//�y�N���A�z
<voice name="�N���A" class="�N���A" src="voice/dm45/7000060a04">
"I heard your voice&, so I came&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Wait(1200);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0050]
//�y�N���A�z
<voice name="�N���A" class="�N���A" src="voice/dm45/7000070a04">
"&.&.&.Aoba-san&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	Wait(2000);

	ClearFadeAll(3000, true);

	Wait(1000);

//�����t�@�C��["dm9999.nss"]

}
