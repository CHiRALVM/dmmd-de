//<continuation number="40">
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


scene dm3630scr.nss_MAIN
{
$TEXTBOX_TYPE="�\�I";

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
	#bg204021_0_�\�I�~���N�q�ɓV��=true;

	//���~���N�\�I�΂̕��V�[�������ƌ����t���O�A�����ŏI���
	$�~���N�\�I�Ȃ�=false;

	//�����[�g�t���O�A�I�����A����GameName
	$PreGameName = $GameName;
	$GameName = "dm3640scr.nss";

}


scene dm3630scr.nss
{

	//���V�[���̓��ɕK���L�q
	$�X�N���v�g�o�[�W���� = " $Revision:  $";
	$�\���� = ModuleFileName();
	$�\���� = $SYSTEM_present_process;
	SystemInit();


//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\

	PrintBG("��w�i", 30000);

	CreateColorSP("�G�F��", 5000, "000000");

	CreateTextureSP("�G�w�i", 10, Center, InBottom, "cg/bg/m/bg204021_0_�\�I�~���N�q�ɓV��_m.jpg");
	CreateSurfaceEX("�G���ʃT�t", 100,1000,"@�G�w�i");
	Fade("�G���ʃT�t", 0, 1000, null, true);

	MoveFFP1("@�G���ʃT�t",60000);

	Delete("��w�i");

	CreateSE("SEL01","se�l��_����_����07L");
	SoundEffect("SEL01","HANGAR");
	MusicStart("SEL01",3000,400,0,500,null,true);

	CreateSE("SEL02","se����_��_���h���01L");
	SoundEffect("SEL02","HANGAR");
	MusicStart("SEL02",5000,400,0,800,null,true);

	CreateSE("SEL03","se�[��_��_�͂˂�01");
	SoundEffect("SEL03","HANGAR");
	MusicStartSet("SEL03",600,0,1000,null,false);

	Wait(2000);

	CreateProcessEX("�v���Z�X", "Proc_dm3630scr_01Act");
	Request("�v���Z�X", Start);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0010]
While advancing on&, my surroundings started to change 
little by little&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	Move("�G�w�i", 10000, @0, -144, DxlAuto, false);
	FadeDelete("�G�F��", 2000, null, true);
	SetVolumeEX("SEL01", 3000, 700, null);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0011]
The forest disappeared&, and before I knew it I'd walked 
into an enormous warehouse&.

The full interior - the ceiling&, the walls&, the floors - 
were covered in a deep red rust&.

Torn chains dangle from above and I have an ominous feeling
that something strange and unknown is in this iron box&.

I hear nothing but the sound of dripping water&.

Wherever I'm heading&, it must be deep inside the 
building&. It feels as if the floor grows longer as I walk 
down it&.

The realistic heat and pain disappear completely&. Instead&, 
my feet feel heavier with each step&.

&.&.&.It's not my imagination&. They're heavy&.

With one step forward&, my feet feel as if they're sinking 
into mud&.


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw���t_�ʏ�_pinch");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0019]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm36/3000010a01">
"Urk&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	SetVolumeEX("SEL01", 3000, 1000, null);
	SetBlur("@�G���ʃT�t", true, 2, 500, 2000, false);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0020]
When my feet hit the iron floor&, a bizzare vibration rings in my ears&.

Like the entire room is rejecting me&.&.&.

That's what quickly came onto me&.

&.&.&."Don't come&."<k>
That's the voice I hear&.

But I'll stubbornly continue on&.

Now I hear the sound of a low pitched murmur&.

They're the words of a foreign language I don't know&.

I don't know what they're saying&, but they sound very 
displeased&.


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw���t_�ʏ�_pain2");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0029]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm36/3000020a01">
"&.&.&.!"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0030]
Not stopping my leaden feet&, I hear something like a curse and I suddenly feel sick&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\

	CreateSE("SE01","se����_��_�J���X�Њd01");//�������u�r�d�F�_�~�[�v
	SoundEffect("SE01","SEWERPIPE");
	MusicStart("SE01",0,1200,0,1000,null,false);

	CreateSE("SE02","se����_����_�H�΂�������01");
	SoundEffect("SE02","SEWERPIPE");
	MusicStart("SE02",0,700,0,1000,null,false);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0031]
A sudden crass cry of an animal tears at my ears and I 
hear the sound of wings flapping&. But I can't see where 
it's coming from&.

This place&.&.&. I wonder how long it goes on for&.

As I continue inside&, I begin to see a wall with a door on it&.

But it's become rusty&, a blockade of stationary iron&.

If I keep going on&, I'll meet with&.&.&.
Despair&.


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw���t_�ʏ�_pain2");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0038]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm36/3000030a01">
"Ha&, ha&, ha&.&.&."


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0039]
I walk down the seemingly endless path&, my feet almost to 
the point of being unable to move&.&.&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	//TextBoxDelete(0);

	SetVolumeEX("SE12", 300, 0, null);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0040]
I'm finally up to the door at the dead end&.


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw���t_�ʏ�_sad");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0041]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm36/3000040a01">
"Ha&, ha&.&.&.&.&."


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	SetVolumeEX("SEL01", 300, 0, null);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0050]
I put my hand on the door&, catching my frantic breaths&.
Mink&.&.&. I wonder if he's behind this door&.

Somehow having been able to get my breathing back to 
normal&, I slowly push the door open&.


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	SetVolumeEX("SE*", 150, 0, null);
	CreateSE("SE01","se����_�h�A�S_���J��01a");
	MusicStart("SE01",0,1100,0,1000,null,false);

	CreateColorEX("�G�F��", 5000, "000000");
	Fade("�G�F��", 1000, 1000, null, true);

	if($SYSTEM_skip==true){
	SetVolumeEX("SE*", 150, 0, null);
	}
	WaitPlay("SE01", null);
	Wait(2000);

//�����t�@�C��["dm3640scr.nss"]

}
