//<continuation number="330">
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


scene dm3100.nss_MAIN
{
//■超速設定
	if(($SYSTEM_skip && #SYSTEM_skip_express && $AllRead) || ($SYSTEM_skip && #SYSTEM_skip_express && #SYSTEM_skip_absolute)){
		SkipOut();
	}else{
		$MainGameName="@->"+$GameName;
		GameMainSet();
		call_scene $MainGameName;
		GameMainSet2();
	}

//■選択肢スクリプト及びフラグ設定
	//▼イベントＣＧ
	#イベントファイル名=true;

	//▼背景ＣＧ
	#bg302011_5_グリッター部屋01天井=true;
	#bg302021_5_グリッター居間=true;
	#bg302041_5_グリッター廊下=true;
	#bg302011_5_グリッター部屋01=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;
	$GameName = "dm3110.nss";

}


scene dm3100.nss
{

	//■シーンの頭に必ず記述
	$スクリプトバージョン = " $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();


//―――――――――――――――――――――――――――――――――――――――

	PrintBG("上背景", 30000);

	OnBG(10,"bg302051_5_グリッターエントランス");
	FadeBG(0,true);

	CreateTextureSP("絵背景90", 90, -890, -476, "cg/bg/l/bg302051_5_グリッターエントランス_l.jpg");

//※暗転
//※どかどかと歩き回るミンクのブーツ音
	CreateSE("SE01","se人体_足音_歩く05");
	MusicStart("SE01",0,700,0,1100,null,false);

	FadeDelete("上背景", 3000, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
I hear a thudding noise and open my eyes&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	SetVolumeEX("SE*", 300, 0, null);

	Fw("fw蒼葉_通常_shock");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm31/0000010a01">
"&.&.&.!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	DeleteFw();

	CreateTextureEX("絵背景", 100, Center, Middle, "cg/bg/l/bg302051_5_グリッターエントランス_l.jpg");

	CreateSE("SE01","se人体_動作_衣擦れ01");
	MusicStart("SE01",0,500,0,1100,null,false);

	CreateSE("SE02","se人体_動作_衣擦れ15");
	MusicStart("SE02",0,600,0,900,null,false);

	Move("絵背景90", 500, @0, @50, Dxl1, false);
	Fade("絵背景", 500, 1000, null, true);

	Delete("絵背景90");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
I jump up from the couch in surprise and see Mink walking 
up the staircase&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	CreateSE("SE01","se動物_動作_羽ばたく01");
	MusicStart("SE01",0,500,0,1200,null,true);

	Move("絵背景", 1500, @100, @0, Axl1, false);
	FadeDelete("絵背景", 1500, null, true);

	Wait(500);
	SoundPlay("@dm002",0,450,true);
	Wait(500);

	SetVolumeEX("SE*", 300, 0, null);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0031]
I can hear the sound of wings flapping&, and Mink's cockatoo
perches over a large clock&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fwAMトリ_通常_normal");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【トリ】
<voice name="トリ" class="鳥" src="voice/dm31/0000020b12">
"There are bedrooms upstairs&. We should rest today&."

{	Fw("fw蒼葉_通常_worry4");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm31/0000030a01">
"Yeah&, and&.&.&. was I asleep?"

{	Fw("fwAMトリ_通常_normal");}
//【トリ】
<voice name="トリ" class="鳥" src="voice/dm31/0000040b12">
"For about two&, three hours&. We went to check out the
 streets during that time&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_worry4");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm31/0000050a01">
"I see&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
Ren is sleeping&, curled up in a ball by my feet&.

{
	CreateSE("SE01","se人体_動作_衣擦れ05");
	MusicStart("SE01",0,700,0,1000,null,false);
	SetVolumeEX("SE*", 1000, 0, null);
}
I gently pick him up in my arms&, and a question comes to 
mind&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_normal2");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm31/0000060a01">
"By the way&, what's your name?"

{	Fw("fwAMトリ_通常_normal");}
//【トリ】
<voice name="トリ" class="鳥" src="voice/dm31/0000070b12">
"Why do you want to know that?"

{	Fw("fw蒼葉_通常_normal");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm31/0000080a01">
"No&, you see&, this guy here's name is Ren&. I was wondering
 what I should call you&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fwAMトリ_通常_normal");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
//【トリ】
<voice name="トリ" class="鳥" src="voice/dm31/0000090b12">
"It's not special to have a name&."

{	Fw("fw蒼葉_通常_normal2");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm31/0000100a01">
"Then what does Mink usually call you?"

{	Fw("fwAMトリ_通常_normal");}
//【トリ】
<voice name="トリ" class="鳥" src="voice/dm31/0000110b12">
"'Hey'&. 'You'&. 'You're Tori'&."

{	Fw("fw蒼葉_通常_fake");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm31/0000120a01">
"&.&.&.I see&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
I guess it's like Mink to do that&.&.&.

I lightly shrug my shoulders to him&, and go up the stairs
with the sleeping Ren in my arms&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

//	CreateSE("SE01","se物体_蒼葉宅階段_登る通常01");
//	MusicStart("SE01",0,700,0,1000,null,false);

//	Wait(1000);

	OnBG(10,"bg302021_5_グリッター居間");
	FadeBG(1000,true);

//	SetVolumeEX("SE*", 1000, 0, null);

	Wait(500);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
When I reach the second floor&, I'm immediately in another
living room&. There's a billiard table and darts&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	OnBG(10,"bg302041_5_グリッター廊下");
	FadeBG(1000,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0101]
Futher inside the room is a hallway filled with a number 
of rooms&. Tori did say that there were bedrooms&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	OnBG(10,"bg302021_5_グリッター居間");
	FadeBG(1000,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0102]
Mink is sprawled across a sofa in front of a TV with 
both arms crossed&, asleep&.

I pass by&, and stop when I'm behind the sofa&.

I've had countless questions ever since I left the Old 
Resident District&. I want to hear the answers&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	SetVolumeEX("@dm*", 3000, 0, null);

	Fw("fw蒼葉_通常_serious");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm31/0000130a01">
"&.&.&.Hey&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
No response&.
But he's definitely now awake and listening&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_normal2");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm31/0000140a01">
"What are you going to do in Platinum Jail?"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fwミンク_通常_normal");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
//【ミンク】
<voice name="ミンク" class="ミンク" src="voice/dm31/0000150a05">
"&.&.&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
Mink looks at me without saying a word&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_worry3");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm31/0000160a01">
"My power is necessary&.&.&. for whatever you came here for&,
 right?"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0170]
Then shouldn't I have some right to know?

I try to hint at that to him&.

Mink's gaze moves to the ceiling&, and he just stays silent&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	CreateTextureEX("絵背景100", 100, -394, -26, "cg/bg/m/bg302021_5_グリッター居間_m.jpg");
	Move("絵背景100", 1000, @-100, @0, Dxl1, false);
	Fade("絵背景100", 1000, 1000, null, true);
	Wait(500);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0171]
&.&.&.The long silence is unbearable; and he mutters something
in a low tone&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//	Fw("fwミンク_通常_serious");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0180]
//【ミンク】
<voice name="ミンク" class="ミンク" src="voice/dm31/0000170a05">
"&.&.&.I'm after Toue&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	FadeDelete("絵背景100", 500, null, true);

	Fw("fw蒼葉_通常_shock2");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0190]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm31/0000180a01">
"&.&.&.!"

{	Fw("fwミンク_通常_serious");}
//【ミンク】
<voice name="ミンク" class="ミンク" src="voice/dm31/0000190a05">
"I'm going to crush him&. That's why I'm here&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0200]
Somehow&.&.&. I already had the idea that Mink was after Toue&.

So it surprised me that I was right&.

But&.&.&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_worry4");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0210]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm31/0000200a01">
"Why do you want to crush Toue?"


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0220]
Is it personal revenge&, or maybe just because he can't 
stomach him?

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0230]
When I look at this man&, I can't imagine that he'd want 
to do it for such a simple reason&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fwミンク_通常_serious");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0240]
//【ミンク】
<voice name="ミンク" class="ミンク" src="voice/dm31/0000210a05">
"That's as much as you need to know&."

{	Fw("fw蒼葉_通常_shock2");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm31/0000220a01">
"-Hey&.&.&.!"


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreateSE("SE01","se人体_動作_衣擦れ01");
	MusicStart("SE01",0,700,0,1000,null,false);

	St("C",740, @0,@0,"stミンク_通常_serious");
	FadeSt("C",300,true);

//	Wait(500);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0250]
Mink gave me an outright refusal and stood up from the 
sofa&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreateSE("SE01","se人体_足音_歩く06");
	MusicStart("SE01",0,700,0,800,null,false);
	DeleteSt("C", 300,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0251]
Without looking at me&, he went into a room down the 
hallway&.

{
	CreateSE("SE01","se物体_ドア木_扉開く01b");
	MusicStart("SE01",0,700,0,1000,null,false);
	Wait(500);
}

&.&.&.What the hell?

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreateSE("SE01","se人体_動作_衣擦れ15");
	MusicStart("SE01",0,700,0,1000,null,false);

	CreateSE("SE02","se物体_ベッド_寝る01");
	MusicStart("SE02",0,700,0,800,null,false);

	CreateTextureEX("絵下背景", 50, -632, -422, "cg/bg/l/bg302021_5_グリッター居間_l.jpg");
	Move("絵下背景", 500, -632, -472, Dxl1, false);
	Fade("絵下背景", 500, 1000, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0252]
Irritation pricks at me as I sit down on the sofa that 
Mink was just on&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_angry");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0260]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm31/0000230a01">
"&.&.&.I don't get that guy&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0270]
I say that as a sigh escapes me&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_cranky");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0280]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm31/0000240a01">
"It's so hard to understand what he's thinking&. 
 Right&, Ren?"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	SoundPlay("@dm002",0,450,true);

	DeleteFw();

	CreateSE("SE01","se動物_動作_蓮起動01");
	MusicStart("SE01",0,700,0,1000,null,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0290]
Ren&, sitting on my lap&, starts up and I look at him for 
some agreement&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fwAM蓮_通常_normal");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0300]
//【蓮】
<voice name="蓮" class="蓮" src="voice/dm31/0000250a06">
"What do you mean by 'right'?"

{	Fw("fw蒼葉_通常_cranky");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm31/0000260a01">
"Him&, Mink&. Why is he like that?"

{	Fw("fwAM蓮_通常_normal");}
//【蓮】
<voice name="蓮" class="蓮" src="voice/dm31/0000270a06">
"It's his character&."

{	Fw("fw蒼葉_通常_sigh");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm31/0000280a01">
"I know that&, but&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0310]
Conflicting emotions arise within me&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0311]
Mink brought me here so he could use my power&.

My power&.&.&. I don't want to use it if I can&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0312]
But I have to help out the man who saved Granny&.

If it wasn't for Mink&, I don't know if it would have been 
possible to find her&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0313]
When I think of it that way&, I can't break my promise to 
Mink&.

So that's why I wanted to know the details as to why he 
wanted to use my power&.

But he's impossible&, with his "that's as much as you 
need to know&."

Am I just going to follow Mink silently&, and use my 
power when he gives the order to?

That just literally makes me a tool&.&.&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_sigh3");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0320]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm31/0000290a01">
"I don't think this is going to go all that well&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fwAM蓮_通常_normal");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0330]
//【蓮】
<voice name="蓮" class="蓮" src="voice/dm31/0000300a06">
"You need to overcome it&. You can manage&."

{	Fw("fw蒼葉_通常_cranky");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm31/0000310a01">
"You really think so?"

{	Fw("fwAM蓮_通常_normal");}
//【蓮】
<voice name="蓮" class="蓮" src="voice/dm31/0000320a06">
"I know what to say when you're down&."

{	Fw("fw蒼葉_通常_sigh");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm31/0000330a01">
"You little&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0340]
I playfully pinch Ren's nose&.

But I'm so glad he's here with me&.

Just talking like this distracts me&. I don't know if I 
could escape alone&.

Some way or another&, I got all the way here&.&.&.

{
	CreateSE("SE01","se人体_動作_衣擦れ01");
	MusicStart("SE01",0,500,0,1100,null,false);
	CreateSE("SE02","se人体_動作_衣擦れ15.ogg");
	MusicStart("SE02",0,700,0,1000,null,false);

	Move("絵下背景", 500, @0, @50, Dxl1, false);
	FadeDelete("絵下背景", 500, null, true);
}

I mutter something to myself and stand up&, holding Ren in 
my arms&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	CreateSE("SE01","se物体_ドア木_扉開く01");
	MusicStart("SE01",0,700,0,1000,null,false);
	OnBG(10,"bg302011_5_グリッター部屋01");
	FadeBG(1000,true);

	Wait(1000);

	CreateSE("SE01","se物体_ベッド_寝る01");
	MusicStart("SE01",0,700,0,1000,null,false);
	CreateTextureEX("絵背景", 100, Center, Middle, "cg/bg/bg302011_5_グリッター部屋01天井.jpg");
	#bg302011_5_グリッター部屋01天井=true;

	Fade("絵背景", 500, 1000, Dxl1, true);

	Wait(500);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0350]
I go down the corridor to enter a room&.&.&. and it's not the 
one Mink occupied&. I then place Ren on the bed and lay 
myself down&, face up&.

I just napped on the sofa&, but I still sank into 
sleep again&. 

The more I think about Mink&, more and more grim the 
situation seems&.

But that's just the way it is&.

There's zero compatibility between the two of us&.

I'll just rest today&, and try to get things together 
tomorrow&.&.&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	SetVolumeEX("@dm*", 2000, 0, null);

	CreateColorEX("絵色黒弐", 5000, "000000");
	Fade("絵色黒弐", 1000, 1000, null, true);

	Wait(500);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0351]
While staring at the ceiling with thoughts swirling in my 
head&, at some point I lost consciousness&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	ClearFadeAll(1000, true);
	Wait(3000);

//※次ファイル["dm3110.nss"]

}
