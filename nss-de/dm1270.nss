//<continuation number="380">
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


scene dm1270.nss_MAIN
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
	#bg303031_5_娯楽施設竜峰の部屋=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;
	$GameName = "dm1280.nss";

}


scene dm1270.nss
{

	//■シーンの頭に必ず記述
	$スクリプトバージョン = " $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();


//―――――――――――――――――――――――――――――――――――――――

	PrintBG("上背景", 30000);

	OnBG(10,"bg303031_5_娯楽施設竜峰の部屋");
	FadeBG(0,true);

	FadeDelete("上背景", 1000, null, true);

//※場面転換（竜峰の部屋）

//※ことん、とマグカップをテーブルに置く
	CreateSE("SE01","se物体_グラス_置く01");
	MusicStart("SE01",0,700,0,1000,null,false);

	Wait(1000);

	St("C",740, @0,@0,"st竜峰_通常_pride");
	FadeSt("C",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【竜峰】
<voice name="竜峰" class="竜峰" src="voice/dm12/7000010b05">
"Go ahead&."

{	Fw("fw蒼葉_通常_worry2");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm12/7000020a01">
"&.&.&.Thanks&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//	SoundPlay("@dm012",0,450,true);

	DeleteFw();
	DeleteAllSt(200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0012]
There are white teacups placed on top of the black table&.

In the cups are a light&, brown liquid with an assortment 
of lower petals; they're floating in the water and emit 
an amazingly fragrant scent&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw竜峰_通常_normal");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0013]
//【竜峰】
<voice name="竜峰" class="竜峰" src="voice/dm12/7000030b05">
"Isn't it nice? I specially placed an order for these&, you
 can't buy them in Japan&."


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0014]
I take one sip&, and the fragrance floats up to my nose&. 
The flower petals swing around in a lovely sort of way&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	SoundPlay("@dm012",0,450,true);

	Fw("fw蒼葉_通常_shock");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0015]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm12/7000040a01">
"&.&.&.It's good&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	Fw("fw竜峰_通常_smile");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【竜峰】
<voice name="竜峰" class="竜峰" src="voice/dm12/7000050b05">
"That's good to hear&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0021a]
Ryuuhou brings another teacup and sits down across the 
table from me&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0021b]
I watch his ever constant smile&, and then turn my eyes 
away&.

Once I agreed to go with Ryuuhou&, we went inside the club&.

The dance floor and bar were on the first floor&, a tattoo 
parlor and dressing rooms on the second floor&, and a staff room on the third&.

His room was on the third floor&, and it felt as if there 
was no one who quite compared to Ryuuhou&.

The room had a Japanese style&, but the furniture was 
European so it was a mix of cultures&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	CreatePlainSP("絵板写", 5000);

	CreateTextureSP("絵背景", 250, -100, Middle, "cg/bg/l/bg303031_5_娯楽施設竜峰の部屋_l.jpg");

	Move("絵背景", 1500, 0, @0, AxlDxl, false);
	FadeDelete("絵板写", 1500, null, true);

	Wait(500);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0025]
I found my eyes wandering to various papers of tattoo 
designs around the room&.

It was a strange sight in such a dim room&, so it felt a 
little odd to me&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_shock");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm12/7000060a01">
"Are those pictures&.&.&."

{	Fw("fw竜峰_通常_pride");}
//【竜峰】
<voice name="竜峰" class="竜峰" src="voice/dm12/7000070b05">
"Yes&, I'm a tattoo artist&."

{	Fw("fw蒼葉_通常_normal2");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm12/7000080a01">
"Really&.&.&."


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0033]
So that's why it smells a bit like ink in here&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	CreatePlainSP("絵板写", 5000);

	CreateTextureSP("絵演出背景", 300, Center, Middle, "cg/bg/bg105011_1_刺青スタジオロビー.jpg");

	CreateColor("絵演出回想", 1001, 0, 0, 1024, 768, "624a2b");
	SetAlias("絵演出回想","絵演出回想");
	Request("絵演出回想", OverlayRender);
	CreateTextureSPmul("絵演出回想弐", 1002, Center, Middle, "cg/ef/effi回想01.jpg");

	St("C",740, @0,@0,"stミズキ_通常_laugh");
	FadeSt("C",0,true);
	FadeDelete("絵板写", 500, null, true);

	Wait(500);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0035]
A tattoo artist&, huh&.&.&.
Mizuki was one too&.&.&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	CreatePlainSP("絵板写", 5000);

	DeleteSt("C", 0,true);
	Delete("絵演*");

	FadeDelete("絵板写", 1000, null, true);

	Wait(1000);

	CreateColorEX("絵色黒", 5000, "000000");

	Move("絵背景", 1000, @-100, @0, Axl1, false);
	Fade("絵色黒", 1000, 1000, null, true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0038]
I feel a faint pain in my chest and take my eyes away&.

{
	CreateSE("SE01","se人体_動作_衣擦れ18");
	MusicStart("SE01",0,700,0,1000,null,false);
	Move("絵背景", 600, @100, @0, Dxl1, false);
	Wait(100);
	FadeDelete("絵色黒", 500, null, true);
}
&.&.&.Hm?


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	CreatePlainSP("絵板写", 5000);

	CreateMaskSetSPTate("絵窓", 2010);//ナット名、優先度
	CreateTextureSP("絵窓/絵背景", 500, 145, -260, "cg/bg/l/bg303031_5_娯楽施設竜峰の部屋_l.jpg");
	Request("絵窓/絵背景", Smoothing);
	Zoom("絵窓/絵背景", 0, 1200, 1200, null, true);

	CreateColorEX("絵色黒", 300, "000000");
	Fade("絵色黒", 0, 300, null, false);
	CreatePlainSP("絵板霞", 300);
	SetShade("絵板霞", MEDIUM);

	FadeDelete("絵板写", 100, null, false);
	OpenTateMask("絵窓",200, 1000,Dxl3,true);//所要時間、水平倍率、テンポ、待ち

	Delete("絵色黒");
	Delete("絵背景");

	Wait(500);

//あきゅん「↓：きちんと背景に注目させる」

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
That design&.&.&.
I feel like I've seen it somewhere before&.&.&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	FadeDelete("絵板霞", 200, null, false);
	CloseTateMask("絵窓",200,Dxl3,true);//ナット名、所要時間、テンポ、待ち

	Fw("fw竜峰_通常_normal");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0041]
//【竜峰】
<voice name="竜峰" class="竜峰" src="voice/dm12/7000090b05">
"Aoba-kun&, do you have an interest in tattoos?"

{
	DeleteFw();
	FadeDelete("絵背景", 500, null, true);

	FwPro("fw蒼葉_通常_shock",800,"fw蒼葉_通常_fake");
}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm12/7000100a01">
"Eh? Uh&, sort of&.&.&. but not enough to actually get one&."

{	Fw("fw竜峰_通常_pride");}
//【竜峰】
<voice name="竜峰" class="竜峰" src="voice/dm12/7000110b05">
"You seemed a bit enthusiastic&. If you have any requests&,
 I'd be happy to do them for you&."

{
	FwPro("fw蒼葉_通常_shock2",2500,"fw蒼葉_通常_sad");
}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm12/7000120a01">
"Oh no&, that'd be&.&.&. Actually-"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw竜峰_通常_normal");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【竜峰】
<voice name="竜峰" class="竜峰" src="voice/dm12/7000130b05">
"Hm?"

{	Fw("fw蒼葉_通常_worry3");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm12/7000140a01">
"Why would you go so far to&.&.&. why are you being so kind to me?"


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0052]
I ask what I've been thinking about non-stop for a while 
now&.

Ryuuhou looks to the ceiling&, thinking to himself&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw竜峰_通常_pride");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0053]
//【竜峰】
<voice name="竜峰" class="竜峰" src="voice/dm12/7000150b05">
"I had some interest in you at first glance&. Or in simple
 terms&, love at first sight&, I guess you could say&."

{	Fw("fw蒼葉_通常_shock2");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm12/7000160a01">
"&.&.&.&.&."

{	Fw("fw竜峰_通常_smile");}
//【竜峰】
<voice name="竜峰" class="竜峰" src="voice/dm12/7000170b05">
"I mean that as a joke&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreateSE("SE01","se物体_グラス_弾く01");
	MusicStart("SE01",400,500,0,1200,null,false);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
He smiles at my reaction as he grips his teacup&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw竜峰_通常_normal");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0061]
//【竜峰】
<voice name="竜峰" class="竜峰" src="voice/dm12/7000180b05">
"You must think that's a suspicious thing to say&. To be
 frank&, I felt that you were different from others&."

{	Fw("fw蒼葉_通常_worry3");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm12/7000190a01">
"&.&.&.&.&."

{	Fw("fw竜峰_通常_pride");}
//【竜峰】
<voice name="竜峰" class="竜峰" src="voice/dm12/7000200b05">
"That I didn't mean as a joke&. When I saw you&, I felt that
 you had some sort of power&.&.&. you were overflowing with
 vitality&."

{	Fw("fw蒼葉_通常_worry4");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm12/7000210a01">
"&.&.&.Okay&."


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0066]
Somehow the conversation topic has turned to a mystical 
mumbo-jumbo direction&.

But Ryuuhou speaks with a serious expression&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	FwPro("fw竜峰_通常_normal",10000,"fw竜峰_通常_pride");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
//【竜峰】
<voice name="竜峰" class="竜峰" src="voice/dm12/7000220b05">
"I felt a force from you&. And not just one&. Reason&,
 protection&.&.&. destruction&."

{	Fw("fw竜峰_通常_normal");}
//【竜峰】
<voice name="竜峰" class="竜峰" src="voice/dm12/7000221b05">
"There's a mixture of those separate purposes within you&."

{	Fw("fw蒼葉_通常_shock2");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm12/7000230a01">
"&.&.&.!"


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	SetVolumeEX("@dm*", 5000, 0, null);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0073]
&.&.&.Destruction&. The urger to destroy&.

Granny said the same thing about my power&.

Just as Koujaku said&, this guy&.&.&.

{	SoundPlay("@dm006",0,450,true);}
Ryuuhou looks into my eyes and his smile has faded away&.

I cast my gaze down&, feeling uneasy&, and then put my 
teacup to my mouth&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
The now lukewarm tea goes down my throat&, and I start to 
calm down&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw竜峰_通常_normal");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0081]
//【竜峰】
<voice name="竜峰" class="竜峰" src="voice/dm12/7000240b05">
"Was I right?"

{	Fw("fw蒼葉_通常_worry3");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm12/7000250a01">
"&.&.&.&.&."

{	Fw("fw竜峰_通常_pride");}
//【竜峰】
<voice name="竜峰" class="竜峰" src="voice/dm12/7000260b05">
"But I don't want you to misunderstand&, I'm not trying to
 delve too deep into you&. That would be unrefined&."

{	Fw("fw竜峰_通常_smile");}
//【竜峰】
<voice name="竜峰" class="竜峰" src="voice/dm12/7000270b05">
"Rather than a rose-colored over-simplified concept&, I'd
 have it be difficult and extremely complex&. Just like for
 tattoos&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	DeleteFw();

	CreatePlainSP("絵板写", 5000);
	CreateTextureSP("絵背景", 100, 0, Middle, "cg/bg/l/bg303031_5_娯楽施設竜峰の部屋_l.jpg");

	FadeDelete("絵板写", 500, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0086]
Ryuuhou looks at his decorations on the walls&, and touches his design sketches lovingly&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw竜峰_通常_normal");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
//【竜峰】
<voice name="竜峰" class="竜峰" src="voice/dm12/7000280b05">
"They may only look like rough drafts&, but all of these
 have been made with precise calculations in mind&."

{	Fw("fw竜峰_通常_pride");}
//【竜峰】
<voice name="竜峰" class="竜峰" src="voice/dm12/7000290b05">
"I get absorbed when I do tattoos&. Gliding down the skin&,
 distorting&, circling&, extending&, blurring&, and even the
 variation in colors&."

{	Fw("fw竜峰_通常_normal");}
//【竜峰】
<voice name="竜峰" class="竜峰" src="voice/dm12/7000300b05">
"Skin is a rugged thing&. Wouldn't you understand if you've
 seen blood run down it?"

{	Fw("fw竜峰_通常_pride");}
//【竜峰】
<voice name="竜峰" class="竜峰" src="voice/dm12/7000310b05">
"When something unexpected occurs&, as well&. There's no part of a person that can't warp&."

{	Fw("fw竜峰_通常_serious");}
//【竜峰】
<voice name="竜峰" class="竜峰" src="voice/dm12/7000320b05">
"That's why&, when I add ink&, I feel like I'm adding life to them through that piercing needle&."

{	Fw("fw竜峰_通常_normal");}
//【竜峰】
<voice name="竜峰" class="竜峰" src="voice/dm12/7000330b05">
"I give even more texture to their skin&. And it must be a
 respectable work&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	DeleteFw();

	FadeDelete("絵背景", 500, null, true);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
He talks about it with a loving tone&, and his gaze turns 
back on me&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0101]
He&.&.&.

After hearing him say that&, I feel even more disturbed as 
I've seen some of his true colors show&. 

I always thought his smile was just part of an act&.&.&.

But when he spoke about tattooing&, his expression made him seem like an entirely different person&.

He has a strange attachment to tattoos&.

And that was likely Ryuuhou's real face&.

That wasn't a normal conversation&. But he seemed very 
happy when he spoke about it&.

Ryuuhou's eyes&.&.&. How do they look at people?

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	CreatePlainEX("絵板写", 1000);
	Zoom("絵板写", 0, 1150, 1150, null, true);
	SetShade("絵板写", SEMIHEAVY);
	MoveFFP1("@絵板写",30000);
	Fade("絵板写", 2000, 1000, null, true);
	Wait(500);
	Fade("絵板写", 1000, 0, null, true);

//あきゅん「演出：音声加工：以降の竜峰にまどろみ効果を乗せる」

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0108]
&.&.&.My eyelids suddenly feel heavy&. My eyesight goes blurry&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	St("C",740, @0,@0,"st竜峰_通常_normal");
	FadeSt("C",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0109]
//【竜峰】
<voice name="竜峰" class="竜峰" src="voice/dm12/7000340b05">
"I have genuine interest in you&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fade("絵板写", 1000, 0, null, false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
Ryuuhou's words swell in my ears&, and mix together&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	CreateColorSP("絵色黒", 5000, "000000");
	DrawTransition("絵色黒", 1500, 0, 1000, 100, Dxl1, "cg/data/slide_05_00_0.png", true);
	Wait(300);

	DeleteAllSt(0,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0111]
I can't&.&.&. open my eyes&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	CreatePlainEX("絵板写", 1000);
	Zoom("絵板写", 0, 1200, 1200, null, true);
	SetShade("絵板写", HEAVY);
	MoveFFP1("@絵板写",30000);
	Fade("絵板写", 2000, 1000, null, true);
	Wait(500);
	Fade("絵板写", 1000, 1000, null, false);
	Fade("絵色黒", 1000, 300, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0112]
//【竜峰】
<voice name="竜峰" class="竜峰" src="voice/dm12/7000350b05">
"Your individual purposes conflict with each other inside
 of you&, and eventually all that's holding you together
 will be unfastened&."

//【竜峰】
<voice name="竜峰" class="竜峰" src="voice/dm12/7000360b05">
"That's the fate you're burdened with&. There's no option
 for coexistence&."


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fade("絵色黒", 3000, 300, null, false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0114]
My fate&.&.&.

I'm soon unable to lift my eyelids&, and my thoughts are 
drowned out by tiredness&. I can't think of anything&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	Fade("絵色黒", 2000, 800, null, true);
	Wait(300);
	Fade("絵色黒", 150, 500, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0116]
This awful drowsiness&.&.&.&. I see&.
That tea&.&.&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0119]
//【竜峰】
<voice name="竜峰" class="竜峰" src="voice/dm12/7000370b05">
"I bet my life on tattoos&, and now you&. If I put the two 
 together&, I wonder what it would give birth to&.&.&.
 Interesting&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	SetVolumeEX("@dm*", 1000, 0, null);

//	Fw("fw蒼葉_通常_pain2");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm12/7000380a01">
"&.&.&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fade("絵色黒", 0, 1000, null, true);
	MoveFFP1stop();

	DeleteSt("C", 0,true);
	Wait(500);

	CreateSE("SE01","se人体_衝撃_転倒02");
	MusicStart("SE01",0,600,0,1200,null,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0121]
By the time I realize it&.&.&. it's already too late&.

Unable to fight off the drowsiness&, my consciousness fades&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	ClearFadeAll(1000, true);
	Wait(3000);

//※次ファイル["dm1280.nss"]

}
