//<continuation number="490">
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


scene dm2610.nss_MAIN
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

	#dm2610_Add1=true;

	//�����[�g�t���O�A�I�����A����GameName
	$PreGameName = $GameName;
	$GameName = "dm2620.nss";

}


scene dm2610.nss
{

	//���V�[���̓��ɕK���L�q
	$�X�N���v�g�o�[�W���� = " $Revision:  $";
	$�\���� = ModuleFileName();
	$�\���� = $SYSTEM_present_process;
	SystemInit();


//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\

	PrintBG("��w�i", 30000);

	OnBG(10,"bg102011_5_���}�X��");
	FadeBG(0,true);

	St("C",740, @0,@0,"st�H��_�ʏ�_worry");
	St("L",730, @0,@0,"st�L�I_�ʏ�_fear");
	FadeAllSt(0,true);

	FadeDelete("��w�i", 0, null, true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0010]
{	DeleteAllSt(200,true);}
//�y�m�C�Y�z
<voice name="�m�C�Y" class="�m�C�Y" src="voice/dm26/1000010a03">
"It's fine&."

When I see who the person is&.&.&.

My heart stops&.

{
	Fw("fw���t_�ʏ�_shock2");
}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm26/1000020a01">
"&.&.&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0011]
//�y�m�C�Y�z
<voice name="�m�C�Y" class="�m�C�Y" src="voice/dm26/1000030a03">
"&.&.&.Yo&."

{
	St("C",740, @0,@0,"st�H��_�ʏ�_normal2");
	FadeSt("C",180,true);
}
//�y�H��z
<voice name="�H��" class="�H��" src="voice/dm26/1000040b07">
"You're&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//���[�x�F��{�̂��ߕ������܂����B
	DeleteAllSt(180,true);
	St("ML",720, @0,@0,"st�L�I_�ʏ�_shout");
	St("MR",720, @0,@0,"st�i�I_�ʏ�_shout");
	FadeAllSt(180,true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0020]
//������
//�y�L�I�z
//<voice name="�L�I" class="�L�I" src="voice/dm26/1000050b10">
"Ohhh?"{WaitAddText2();}
<BR>

//������
//�y�i�I�z
//<voice name="�i�I" class="�i�I" src="voice/dm26/1000060b13">
//�u�����`�H�v

</PRE>
	SetText();
	AddText(1,""Ohhh?"","�L�I","dm26/1000050b10",true,true,1000);
	AddText(2,""Ohhh?"","�i�I","dm26/1000060b13",true,true,1000);
	TypeBeginD();//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	DeleteAllSt(180,true);

	St("C",740, @0,@0,"st�~�I_�ʏ�_shout");
	FadeSt("C",180,true);
	Move("@StNameC/C*", 70, @0, @-20, Axl1, true);
	Move("@StNameC/C*", 70, @0, @20, Dxl1, false);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0021]
//�y�~�I�z
<voice name="�~�I" class="�~�I" src="voice/dm26/1000070b11">
"Ah&, that pervert!"

{
	CreateSE("SE01","se�l��_����_����03");
	MusicStart("SE01",0,600,0,1400,null,false);

	SetVolumeEX("SE*", 3000, 0, null);

	Move("@StNameC/C*", 200, @-100, @0, Dxl1, false);
	DeleteAllSt(200,true);
}

{
	Fw("fw���t_�ʏ�_shock2");
}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm21/1000250a01">
"&.&.&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);


//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0022]
&.&.&.I should've been doing fine&.

The loneliness slowed down over time&.

{
	SoundPlay("@dm001",0,450,true);
	St("C",740, @0,@0,"st�m�C�Y_�X�[�c_normal");
	FadeSt("C",200,true);
}
But the guy who made me feel that way&.&.&.
Suddenly appeared in front of me&.

It's obviously important&, but what surprises me the most 
is his appearance&.

&.&.&.Who?

Now this is a real sight&.

Noiz&, looking all snappy in a suit&.

His hair is well-kept&, and he no longer has any piercings 
on his face or hands&.

&.&.&.I'm not dreaming&, am I?

{
	DeleteAllSt(200,true);
	CreateSE("SE01","se�l��_����_����03");
	MusicStart("SE01",0,700,0,1000,null,false);
}
A smile rose to his face&, and he walked over to me while I stood there in a daze&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	SetVolumeEX("SE*", 1000, 0, null);

	St("C",740, @0,@0,"bu�m�C�Y_�X�[�c_smile");
	FadeSt("C",200,true);
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0030]
//�y�m�C�Y�z
<voice name="�m�C�Y" class="�m�C�Y" src="voice/dm26/1000080a03">
"So you're still working here&."

{
	Fw("fw���t_�ʏ�_shock2");
}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm26/1000090a01">
"&.&.&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	St("C",740, @0,@0,"bu�m�C�Y_�X�[�c_smile2");
	FadeSt("C",200,true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0031]
//�y�m�C�Y�z
<voice name="�m�C�Y" class="�m�C�Y" src="voice/dm26/1000100a03">
"And you still have that ugly mug&."

{
	Fw("fw���t_�ʏ�_shock2");
}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm26/1000110a01">
"&.&.&.Y-You too&. &.&.&.What's with that suit and everything&.&.&.?"

{
	St("C",740, @0,@0,"bu�m�C�Y_�X�[�c_smile");
	FadeSt("C",200,true);
}
//�y�m�C�Y�z
<voice name="�m�C�Y" class="�m�C�Y" src="voice/dm26/1000120a03">
"Does it fit me?"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw���t_�ʏ�_worry4");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0040]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm26/1000130a01">
"No it doesn't&, idiot&.&.&."

{
	Fw("fw���t_�ʏ�_sad");
}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm26/1000140a01">
"You never called me&.&.&. and when I tried&, you never replied
 &.&.&. and then you come to the shop all of a sudden&.&.&.!"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);


//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0041]
I was panicking inside my head&, so I couldn't figure out 
what to say at all&.

But something inside my chest swells when I see his face&.

{
	Fw("fw���t_�ʏ�_rage");
}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm26/1000150a01">
"&.&.&.!"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//	DeleteAllSt(200,true);

	CreateSE("SE01","se����_�֎q_����01");
	MusicStart("SE01",0,700,0,1000,null,false);

	CreateSE("SE02","se�l��_����_�ߎC��17");
	MusicStart("SE02",0,700,0,800,null,false);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0050]
I stood up from the stool and glared at Noiz&.

{
	Fw("fw���t_�ʏ�_shout");
}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm26/1000160a01">
"You little&.&.&. where have you been all this time!? You
 never even called or sent me a message!"

//�y���t�z
<voice name="���t" class="���t" src="voice/dm26/1000170a01">
"And then you waltz into the shop wearing a suit and asking if you look good in it? You're taking the jokes too
 far&.&.&."

{
	St("C",740, @0,@0,"bu�m�C�Y_�X�[�c_normal2");
	FadeSt("C",200,true);
}
//�y�m�C�Y�z
<voice name="�m�C�Y" class="�m�C�Y" src="voice/dm26/1000180a03">
"Were you worried?"

{
	Fw("fw���t_�ʏ�_rage");
}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm26/1000190a01">
"Worried!? Can't you tell!? Of course I was worried!!"

{
	St("C",740, @0,@0,"bu�m�C�Y_�X�[�c_normal");
	FadeSt("C",200,true);
}
//�y�m�C�Y�z
<voice name="�m�C�Y" class="�m�C�Y" src="voice/dm26/1000200a03">
"Were you lonely?"

{
	Fw("fw���t_�ʏ�_shock2");
}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm26/1000210a01">
"Huh!? Was I lonely?"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	St("C",740, @0,@0,"bu�m�C�Y_�X�[�c_normal2");
	FadeSt("C",200,true);
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0060]
//�y�m�C�Y�z
<voice name="�m�C�Y" class="�m�C�Y" src="voice/dm26/1000220a03">
"Yeah&. Did you keep thinking about seeing me?"

{
	Fw("fw���t_�ʏ�_rage");
}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm26/1000230a01">
"&.&.&.!! &.&.&.Youuuuu!!!"

{
	St("C",740, @0,@0,"bu�m�C�Y_�X�[�c_smile");
	FadeSt("C",200,true);
}
//�y�m�C�Y�z
<voice name="�m�C�Y" class="�m�C�Y" src="voice/dm26/1000240a03">
"Calm down&, don't take it so seriously&."

{
	DeleteAllSt(200,true);

	CreateSE("SE01","se�l��_����_����01");
	MusicStart("SE01",0,700,0,1000,null,false);

	CreatePlainSP("�G��", 990);
	Shake("�G��", 200, 0, 8, 0, 0, 500, null, true);
	Delete("�G��");
}
Noiz grasps the nape of my neck in the confusion and pulls 
me towards him&.

And then&.&.&.

{
	Wait(500);
	CreateSE("SE01","se�l��_����_�L�X01");
	MusicStart("SE01",0,700,0,1000,null,false);
	Wait(1000);
}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm26/1000250a01">
"!!"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	St("C",740, @0,@0,"st�H��_�ʏ�_normal2");
	FadeSt("C",200,true);
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0070]
//�y�H��z
<voice name="�H��" class="�H��" src="voice/dm26/1000260b07">
"&.&.&.!! A-Aoba-kun&.&.&.!?"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	DeleteAllSt(180,true);
	St("ML",720, @0,@0,"st�i�I_�ʏ�_fear");
	FadeSt("ML",200,true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0071]
//�y�i�I�z
<voice name="�i�I" class="�i�I" src="voice/dm26/1000270b13">
"Woooooow!!!"

{
	St("MR",720, @0,@0,"st�L�I_�ʏ�_shock2");
	FadeSt("MR",200,true);
}
//�y�L�I�z
<voice name="�L�I" class="�L�I" src="voice/dm26/1000280b10">
"They kiiiissseeed!"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	DeleteAllSt(180,true);

	St("C",740, @0,@0,"bu�m�C�Y_�X�[�c_normal");
	FadeSt("C",180,true);

	Fw("fw���t_�ʏ�_shy");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0072]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm26/1000300a01">
"&.&.&.! Seriously&.&.&. What're you doing!?"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0080]
I can feel my cheeks turning red as I try to hide my lips 
with the back of my hand&.

He&.&.&. In the shop&.&.&.

And Haga-san saw it&.&.&.
And those brats too&.&.&.!

{
	Fw("fw���t_�ʏ�_shy");
}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm26/1000310a01">
"You&.&.&. You really haven't changed at all!!"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	St("C",740, @0,@0,"bu�m�C�Y_�X�[�c_normal2");
	FadeSt("C",200,true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0081]
//�y�m�C�Y�z
<voice name="�m�C�Y" class="�m�C�Y" src="voice/dm26/1000320a03">
"Really? I came here to tie up a few loose ends&."

{
	Fw("fw���t_�ʏ�_angry");
}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm26/1000330a01">
"Tie up?"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	St("C",740, @0,@0,"bu�m�C�Y_�X�[�c_smile");
	FadeSt("C",200,true);
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0090]
//�y�m�C�Y�z
<voice name="�m�C�Y" class="�m�C�Y" src="voice/dm26/1000340a03">
"Yeah&. Anyway&, I've come to pick you up today&."

{
	Fw("fw���t_�ʏ�_shock2");
}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm26/1000350a01">
"Heh? Pick me up?"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);


//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0091]
Noiz pretends to fasten his necktie&.

{
	St("C",740, @0,@0,"bu�m�C�Y_�X�[�c_normal2");
	FadeSt("C",200,true);
}
//�y�m�C�Y�z
<voice name="�m�C�Y" class="�m�C�Y" src="voice/dm26/1000360a03">
"I went back to my parents' place for this&."

{
	Fw("fw���t_�ʏ�_shock");
}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm26/1000370a01">
"Your parents? Where?"

{
	St("C",740, @0,@0,"bu�m�C�Y_�X�[�c_normal");
	FadeSt("C",200,true);
}
//�y�m�C�Y�z
<voice name="�m�C�Y" class="�m�C�Y" src="voice/dm26/1000380a03">
"Germany&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw���t_�ʏ�_shock2");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0100]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm26/1000390a01">
"Germany&.&.&.!?"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);


//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0101]
He's come a long way&.&.&.

//�y�m�C�Y�z
<voice name="�m�C�Y" class="�m�C�Y" src="voice/dm26/1000400a03">
"I never went back after I left&. Both my parents and my
 little brother were searching for me the whole time;
 when they saw me they all cried&."

{
	St("C",740, @0,@0,"bu�m�C�Y_�X�[�c_normal2");
	FadeSt("C",200,true);
}
//�y�m�C�Y�z
<voice name="�m�C�Y" class="�m�C�Y" src="voice/dm26/1000410a03">
"While I was gone&, my brother was training to become my old man's successor to the company&. He was delighted to hear
 that I wouldn't have minded being his assistant&."

{
	St("C",740, @0,@0,"bu�m�C�Y_�X�[�c_think");
	St("C",740, @0,@0,"bu�m�C�Y_�X�[�c_normal");
	FadeSt("C",200,true);
	FadeStPro("C", 6500, 200);
//	St("C",740, @0,@0,"bu�m�C�Y_�X�[�c_think");
//	FadeSt("C",200,true);
}
//�y�m�C�Y�z
<voice name="�m�C�Y" class="�m�C�Y" src="voice/dm26/1000420a03">
"And then my parents apologized&.&.&. though they weren't too
 sad&. But at least I can build myself back up now&."

{
	St("C",740, @0,@0,"bu�m�C�Y_�X�[�c_smile");
	FadeSt("C",200,true);
}
//�y�m�C�Y�z
<voice name="�m�C�Y" class="�m�C�Y" src="voice/dm26/1000430a03">
"I felt like I was taking a little too long to adjust some
 things&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw���t_�ʏ�_shock2");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0110]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm26/1000440a01">
"&.&.&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);


//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0111]
I listened to Noiz in mute amazement&.

Really&.&.&. He's become a guy with responsibilities&.

I always wondered where he was and what he was doing&, but 
I would've never guessed something like that&.&.&.


{
	Fw("fw���t_�ʏ�_shock2");
}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm26/1000450a01">
"&.&.&.You really are amazing&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	St("C",740, @0,@0,"bu�m�C�Y_�X�[�c_normal2");
	FadeSt("C",200,true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0112]
//�y�m�C�Y�z
<voice name="�m�C�Y" class="�m�C�Y" src="voice/dm26/1000460a03">
"If I don't keep myself together&, I'll just be some loser&."

{
	St("C",740, @0,@0,"bu�m�C�Y_�X�[�c_normal");
	FadeSt("C",200,true);
}
//�y�m�C�Y�z
<voice name="�m�C�Y" class="�m�C�Y" src="voice/dm26/1000470a03">
"So&, what now? You're coming&.&.&. Not that&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	St("C",740, @0,@0,"bu�m�C�Y_�X�[�c_normal2");
	FadeSt("C",200,true);
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0120]
//�y�m�C�Y�z
<voice name="�m�C�Y" class="�m�C�Y" src="voice/dm26/1000480a03">
"You'll come with me&, won't you?"

{
	Fw("fw���t_�ʏ�_worry3");
}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm26/1000490a01">
"&.&.&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);


	St("C",740, @0,@0,"bu�m�C�Y_�X�[�c_normal");
	FadeSt("C",200,true);
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0121]
Unable to answer right away&, I stared silently at Noiz&.

This was never how I imagined reuniting again&, and it's 
out of the blue&.&.&.

But I was happy&.&.&. that he said his feelings straight out&.

And he even took responsibility&.

He went that far just to come and get me&.&.&.

But&.&.&. My life is here&.
And so is Granny&.

So it's not something I can decide so easily&.

{
	DeleteAllSt(200,true);
}
What should I do?
How should I answer&.&.&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�����t�@�C��["dm2620.nss"]

}
