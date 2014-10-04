//<continuation number="880">
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


scene dm5380.nss_MAIN
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
	#ev011ウイトリ登場a=true;
	#evf08蒼葉出生の秘密=true;
	#evf08蒼葉出生の秘密a=true;
	#evf08蒼葉出生の秘密b=true;


	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;
	$GameName = "dm5380sl.nss";

}


scene dm5380.nss
{

	//■シーンの頭に必ず記述
	$スクリプトバージョン = " $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();


//―――――――――――――――――――――――――――――――――――――――

	SoundPlay("@dm007a",0,450,true);

	PrintBG("上背景", 30000);

	OnBG(10,"bg304041_5_東江タワー研究エリア研究室");
	FadeBG(0,true);

	CreateTextureSP("絵ロゴ", 700, Center, Middle, "cg/ef/eflロゴモルヒネ.jpg");

	Delete("上背景");

//覇：必要であれば下記プロセス化
//※前方からコツコツとウイルス＆トリップが近付いてくる

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
{
	CreateSE("SE01","se人体_足音_歩く03L");
	MusicStart("SE01",3000,700,0,800,null,true);
	SetPan("SE01", 0, -1000, Dxl3);
	Wait(100);
	CreateSE("SE02","se人体_足音_歩く03L");
	MusicStart("SE02",3000,700,0,1000,null,true);
	SetPan("SE02", 0, 1000, Dxl3);

	FadeDelete("絵ロゴ", 250, null, true);
}
Amidst my astonishment&, my ears pick up on the sound of 
casually approaching footsteps&.

Someone's walking down the middle of the pathway&.

A security guard?
It's dim so I can't see that well&.

As the footsteps came closer&, I was finally able to see 
the faces of their owners&.

{	SetVolumeEX("SE*", 300, 0, null);}

When I realized who they were&, I&.&.&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	CreateTextureEX("絵ＥＶ", 1100, Center, InBottom, "cg/ev/ev011ウイトリ登場a.jpg");
	CreateSE("SE01","se人体_足音_一歩03");
	MusicStart("SE01",0,1000,0,1000,null,false);
	Fade("絵ＥＶ", 500, 1000, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0015]
I couldn't stop my eyes from widening&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	Move("絵ＥＶ", 4500, @0, -3, AxlDxl, true);

	Wait(1000);

	Fade("絵ＥＶ", 1000, 0, null, true);

	Wait(200);

//コレ以降、ウイトリ立ち絵使う場合は、モルヒネバッヂあり立ち絵で（千代子
	St("ML",720, @0,@0,"stウイルス_通常バッヂ_normal");
	FadeSt("ML",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【ウイルス】
<voice name="ウイルス" class="ウイルス" src="voice/dm53/8000010b04">
"Yo&, so you made it all the way in here by yourself&. Well&,
 of course you would&, Aoba-san&."

{	St("MR",700, @0,@0,"stトリップ_通常バッヂ_smile");
	FadeSt("MR",200,true);}
//【トリップ】
<voice name="トリップ" class="トリップ" src="voice/dm53/8000020b09">
"We'd expect nothing less&."

{	Fw("fw蒼葉_通常_worry4");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm53/8000030a01">
"You two&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
Virus and Trip&.

Why are they&.&.&.

Virus tilts his head to the side and flashes me a strange 
smile&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	St("ML",720, @0,@0,"stウイルス_通常バッヂ_fake");
	FadeSt("ML",200,true);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【ウイルス】
<voice name="ウイルス" class="ウイルス" src="voice/dm53/8000040b04">
"You're asking yourself why we're here&, aren't you? That's
 what your face says&. Shall I tell you? It's quite simple&."

{	St("ML",720, @0,@0,"stウイルス_通常バッヂ_normal");
	FadeSt("ML",200,true);}
//【ウイルス】
<voice name="ウイルス" class="ウイルス" src="voice/dm53/8000050b04">
"The reason is&.&.&. because we're part of Morphine&."

{	St("MR",700, @0,@0,"stトリップ_通常バッヂ_smile2");
	FadeSt("MR",200,true);}
//【トリップ】
<voice name="トリップ" class="トリップ" src="voice/dm53/8000060b09">
"Right?"

{	Fw("fw蒼葉_通常_shock2");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm53/8000070a01">
"Morphine&.&.&.?"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
&.&.&.Ths is a lie&, right?

These two are part of Morphine?

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreateTextureEX("絵背景弐", 800, Center, Middle, "cg/ev/evf02モルヒネ暗闇に佇む.jpg");
	Fade("絵背景弐", 500, 1000, null, true);

//	Fw("fwウイルス_通常_normal");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//【ウイルス】
<voice name="ウイルス" class="ウイルス" src="voice/dm53/8000080b04">
"Well&, we are part of it&, but we don't do the dirty work
 like the rest do&. We're more like the leaders&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	St("MR",700, @0,@0,"stトリップ_通常バッヂ_normal");
	FadeSt("MR",0,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
Virus jerks his chin to the member in the black parka 
that's restraining me&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	FadeDelete("絵背景弐", 500, null, true);

	Fw("fw蒼葉_通常_rage");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm53/8000090a01">
"&.&.&.You were decieving me&."

{	St("ML",720, @0,@0,"stウイルス_通常バッヂ_normal");
	FadeSt("ML",200,true);}
//【ウイルス】
<voice name="ウイルス" class="ウイルス" src="voice/dm53/8000100b04">
"We never had any intention of doing so&. Although&, if
 that's what you believe&, it still doesn't change aything&."

{	St("MR",700, @0,@0,"stトリップ_通常バッヂ_smile");
	FadeSt("MR",200,true);}
//【トリップ】
<voice name="トリップ" class="トリップ" src="voice/dm53/8000110b09">
"In truth&, we truly are your fans&, Aoba&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	St("ML",720, @0,@0,"stウイルス_通常バッヂ_think");
	St("ML",720, @0,@0,"stウイルス_通常バッヂ_serious");
	FadeSt("ML",200,true);
	FadeStPro("ML", 4800, 200);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
//【ウイルス】
<voice name="ウイルス" class="ウイルス" src="voice/dm53/8000120b04">
"Well&, we're indifferent&. It's useless to talk this over&.
 More importantly&, you've gotten into something big&."

{	St("ML",720, @0,@0,"stウイルス_通常バッヂ_normal");
	FadeSt("ML",200,true);}
//【ウイルス】
<voice name="ウイルス" class="ウイルス" src="voice/dm53/8000130b04">
"Even if I say that&, that person&.&.&. We used to be part of
 Sei-san's group&."

{	Fw("fw蒼葉_通常_worry4");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm53/8000140a01">
"A part of Sei's group?"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

//あきゅん「↓：適当に演出調整で消して下さい」
	Delete("絵ＥＶ");

//覇：イベントを回想

	CreateSE("SE01","se擬音_回想_フラッシュバック02");
	MusicStart("SE01",0,700,0,1000,null,false);

	CreatePlainSP("絵板写１", 10000);

	St("MR",700, @0,@0,"stトリップ_通常バッヂ_normal");
	FadeSt("MR",0,true);

	CreateTextureSPadd("回想絵演出", 2000, Center, Middle, "cg/ef/effiテレビ画面用効果フィルター.jpg");
	Fade("回想絵演出", 0, 300, null, true);
	CreateTextureSP("回想絵効果背景", 1000, Center, Middle, "cg/ev/ev520東江演説a.jpg");
	CreateColorSP("回想色", 5000, "#624a2b");
	Request("回想色", OverlayRender);
	CreateTextureSPmul("回想枠", 1500, Center, Middle, "cg/ef/effi回想01.jpg");

	FadeDelete("絵板写１", 500, null, true);

	Wait(500);

	CreateTextureSP("回想絵効果背景2", 999, -1024, Middle, "cg/ev/l/ev520東江演説a_l.jpg");
	FadeDelete("回想絵効果背景", 1000, null, true);

	Wait(500);

	CreatePlainSP("絵板写２", 10000);
	Delete("回想*");
	FadeDelete("絵板写２", 500, null, true);

	Wait(500);

	Fw("fw蒼葉_通常_shock2");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0091]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm53/8000150a01">
"By Sei&, you mean the person that was with Toue at the
 event&.&.&."

{	St("ML",720, @0,@0,"stウイルス_通常バッヂ_serious");
	FadeSt("ML",200,true);}
//【ウイルス】
<voice name="ウイルス" class="ウイルス" src="voice/dm53/8000160b04">
"&.&.&.Aoba-san&. You don't have any knowledge of what happened once you were born&, do you?"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_angry");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm53/8000170a01">
"&.&.&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	CreatePlainSP("絵板写", 5000);

	DeleteAllSt(0,true);

	St("C",720, @0,@0,"buウイルス_通常バッヂ_normal");
	FadeSt("C",0,true);

	CreateTextureSP("絵背景", 100, Center, -100, "cg/bg/m/bg304041_5_東江タワー研究エリア研究室_m.jpg");

	Move("@StNameC/C*", 0, @-70, @0, null, true);
	Move("絵背景", 0, @-50, @0, null, true);

	Move("@StNameC/C*", 1000, @70, @0, null, false);
	Move("絵背景", 1000, @50, @0, null, false);

	FadeDelete("絵板写", 1000, null, true);

	Wait(500);

	St("C",720, @0,@0,"buウイルス_通常バッヂ_fake");
	FadeSt("C",500,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
Virus grins at my silence&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	SetVolumeEX("@dm*", 3000, 0, null);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
//【ウイルス】
<voice name="ウイルス" class="ウイルス" src="voice/dm53/8000180b04">
"You don't&. Well&, you did make it all the way here&, so
 let's talk a little&."

{	St("C",720, @0,@0,"buウイルス_通常バッヂ_serious");
	FadeSt("C",200,true);}
//【ウイルス】
<voice name="ウイルス" class="ウイルス" src="voice/dm53/8000190b04">
"I said it earlier&, Aoba-san&. You are a fragment of
 Sei-san's twin&."

{	St("C",720, @0,@0,"buウイルス_通常バッヂ_normal");
	FadeSt("C",200,true);}
//【ウイルス】
<voice name="ウイルス" class="ウイルス" src="voice/dm53/8000200b04">
"At the end of Toue's long research initiative&, he had
 finally gotten his hands on the ultimate power&.&.&.
 He gets his power from Sei-san&."

{	St("C",720, @0,@0,"buウイルス_通常バッヂ_serious");
	FadeSt("C",200,true);}
//【ウイルス】
<voice name="ウイルス" class="ウイルス" src="voice/dm53/8000210b04">
"You're the same as Sei-san&, something born out of Toue
 Inc&.'s research&, their property&. A child with specific
 genetic engineering&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	St("C",720, @0,@0,"buウイルス_通常バッヂ_think");
	St("C",720, @0,@0,"buウイルス_通常バッヂ_serious");
	FadeSt("C",200,true);
	FadeStPro("C", 3500, 200);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
//【ウイルス】
<voice name="ウイルス" class="ウイルス" src="voice/dm53/8000220b04">
"And Sei-san is your older brother&. You two are fraternal
 twins&."

{	SoundPlay("@dm006",0,450,true);
	Fw("fw蒼葉_通常_shock2");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm53/8000230a01">
"!!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
I'm a child with manipulated genes&.&.&.?

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0141]
And Sei is&.&. my brother&.&.&.?

And my twin&.&.&.?


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	St("C",720, @0,@0,"buウイルス_通常バッヂ_normal");
	FadeAllSt(0,true);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
//【ウイルス】
<voice name="ウイルス" class="ウイルス" src="voice/dm53/8000240b04">
"The founder of the theory on what your special abilities were based on was a product of your grandmother's research&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	St("C",720, @0,@0,"buウイルス_通常バッヂ_think");
	FadeSt("C",200,true);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160]
//【ウイルス】
<voice name="ウイルス" class="ウイルス" src="voice/dm53/8000250b04">
"It seemed like she had not the slightest idea that her
 research was for engineering a certain child&. It was
 a neural research on the outside&."

{	St("C",720, @0,@0,"buウイルス_通常バッヂ_serious");
	FadeSt("C",200,true);}
//【ウイルス】
<voice name="ウイルス" class="ウイルス" src="voice/dm53/8000260b04">
"You two twins were designed to have the power to control
 peoples' wills by nature&."

{	St("C",720, @0,@0,"buウイルス_通常バッヂ_normal");
	FadeSt("C",200,true);}
//【ウイルス】
<voice name="ウイルス" class="ウイルス" src="voice/dm53/8000270b04">
"But life is a miracle&, and the amount of minute detail and calculations that went into your births were limitless&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	CreatePlainSP("絵板写", 5000);

	CreateTextureSP("絵画像", 110, Center, 0, "cg/ev/m/evf08蒼葉出生の秘密_m.jpg");
	CreateTextureSP("絵画像弐", 107, Center, 0, "cg/ev/m/evf08蒼葉出生の秘密_m.jpg");
	CreateTextureSP("絵画像参", 105, Center, Middle, "cg/ev/evf08蒼葉出生の秘密.jpg");
	CreateTextureSP("絵画像四", 100, Center, Middle, "cg/ev/evf08蒼葉出生の秘密a.jpg");
	CreateTextureSPmul("絵演回想枠", 1500, Center, Middle, "cg/ef/effi回想01.jpg");
	CreateColor("絵演出色", 2000, 0, 0, 1024, 768, "624a2b");
	SetAlias("絵演出色","絵演出色");
	Request("絵演出色", OverlayRender);

	DeleteSt("C", 0,true);

	FadeDelete("絵板写", 1000, null, true);

//	Fw("fwウイルス_通常_serious");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0165]
//【ウイルス】
<voice name="ウイルス" class="ウイルス" src="voice/dm53/8000280b04">
"You two were entrusted with unique powers&, and both of you also had no pigment when you were born&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	Move("絵画像", 2000, @0, @-288, AxlDxl, true);

//	Fw("fwウイルス_通常_serious");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0167]
//【ウイルス】
<voice name="ウイルス" class="ウイルス" src="voice/dm53/8000290b04">
"Furthermore&, both your and Sei-san's hair was connected&.
 They also had nerves in them&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//	Fw("fwウイルス_通常_normal");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0170]
//【ウイルス】
<voice name="ウイルス" class="ウイルス" src="voice/dm53/8000300b04">
"The sense in your hair must be the rememnants of that&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	DeleteFw();

//※↓削除お願いします。
//【蒼葉】
//<voice name="蒼葉" class="蒼葉" src="voice/dm53/8000310a01">
//"&.&.&.Why would they do such a&.&.&."

	FadeDelete("絵画像", 500, null, true);

//	Fw("fwウイルス_通常_normal");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0175]
//【ウイルス】
<voice name="ウイルス" class="ウイルス" src="voice/dm53/8000320b04">
"It was a hereditary abnormality&, and you were products
 that were cultivated&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	FadeDelete("絵画像弐", 1000, null, true);

//	Fw("fwウイルス_通常_think");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0177]
//【ウイルス】
<voice name="ウイルス" class="ウイルス" src="voice/dm53/8000330b04">
"And by bad luck&, you two had died just as you were born&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	FadeDelete("絵画像参", 500, null, true);

	Wait(800);

//	Fw("fwウイルス_通常_serious");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0179]
//【ウイルス】
<voice name="ウイルス" class="ウイルス" src="voice/dm53/8000340b04">
"When Sei-san's hair was severed&, his breathing returned&,
 but yours hadn't&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	CreatePlainSP("絵板写", 5000);

	CreateTextureSP("絵画像", 110, 0, 50, "cg/ev/l/evf08蒼葉出生の秘密_l.jpg");
	CreateTextureSP("絵画像弐", 107, 0, 0, "cg/ev/l/evf08蒼葉出生の秘密b_l.jpg");
	CreateTextureSP("絵画像参", 100, Center, Middle, "cg/ev/evf08蒼葉出生の秘密b.jpg");

	Delete("絵画像四");

	Move("絵画像", 1000, @0, @-50, Dxl1, false);
	FadeDelete("絵板写", 1000, null, true);

//	Fw("fwウイルス_通常_think");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0180]
//【ウイルス】
<voice name="ウイルス" class="ウイルス" src="voice/dm53/8000350b04">
"Your grandmother was absolutely horrified that a child
 that had just been born had died because of her research&."

//{	Fw("fwウイルス_通常_serious");}
//【ウイルス】
<voice name="ウイルス" class="ウイルス" src="voice/dm53/8000360b04">
"And so&, she took your corpse away from the research
 facility&. She may have thought of giving you a funeral
 like a normal human being&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	Wait(500);

	FadeDelete("絵画像", 500, null, true);

	Wait(500);

//	Fw("fwウイルス_通常_normal");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0183]
//【ウイルス】
<voice name="ウイルス" class="ウイルス" src="voice/dm53/8000370b04">
"And despite it all&, you came back to life on the way&. You
 had revived&. Your grandmother&.&.&. She must've been both
 astonished and overjoyed&."

//{	Fw("fwウイルス_通常_think");}
//【ウイルス】
<voice name="ウイルス" class="ウイルス" src="voice/dm53/8000380b04">
"Probably because she had been the one who had killed you&.
 She took you to her hometown on this island and left you
 to the church&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	FadeDelete("絵画像弐", 700, null, true);

//	Fw("fwウイルス_通常_serious");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0185]
//【ウイルス】
<voice name="ウイルス" class="ウイルス" src="voice/dm53/8000390b04">
"Why did she do that? To end it all? This is my guess&,
 but&.&.&. she was a researcher&, somehow or another&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//	Fw("fwウイルス_通常_think");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0190]
//【ウイルス】
<voice name="ウイルス" class="ウイルス" src="voice/dm53/8000400b04">
"No matter how much she loved you&, no matter how she raised you&, she still couldn't help to see you as a research
 subject&. She would have not been able to forgive herself&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	CreatePlainSP("絵板写", 5000);
	CreateColorSP("絵色黒", 1000, "000000");

	Delete("絵画像参");
	Delete("絵演*");
	Delete("絵背景*");

	St("C",1720, @0,@0,"bu蒼葉_通常_normal");
	FadeSt("C",0,true);

	CreateColorSP("回想色", 5000, "#624a2b");
	Request("回想色", OverlayRender);
	CreateTextureSPmul("回想枠", 2000, Center, Middle, "cg/ef/effi回想01.jpg");

	FadeDelete("絵板写", 1000, null, true);

	Wait(500);

//	Fw("fwウイルス_通常_think");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0195]
//【ウイルス】
<voice name="ウイルス" class="ウイルス" src="voice/dm53/8000410b04">
"And after that&, as your skin gained pigment and was the
 exact same as a human's&, you grew up quickly&, shut up in
 your little world&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	Move("@StNameC/C*", 1500, @-171, @0, AxlDxl, true);

	Wait(500);

	St("MR",1720, @0,@0,"buセイ_通常_lost");
	FadeSt("MR",500,true);

//	Fw("fwウイルス_通常_fake");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0197]
//【ウイルス】
<voice name="ウイルス" class="ウイルス" src="voice/dm53/8000420b04">
"But amazingly&, you two siblings kept your powers&. You with
 your voice&, and Sei-san with his eyes&, you can hold
 peoples' hearts captive&."

//{	Fw("fwウイルス_通常_normal");}
//【ウイルス】
<voice name="ウイルス" class="ウイルス" src="voice/dm53/8000430b04">
"You hold a power that a mediocre human could never dream
 of obtaining&. Surely&, gifts from God&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	CreatePlainSP("絵板写", 5000);

	Delete("絵背景*");
	Delete("絵色黒");
	Delete("回想*");

	DeleteAllSt(0,true);

	FadeDelete("絵板写", 1000, null, true);

	Wait(500);

	Fw("fw蒼葉_通常_pain2");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0199]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm53/8000440a01">
"&.&.&.!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	St("C",720, @0,@0,"stウイルス_通常バッヂ_serious");
	FadeSt("C",300,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0200]
//【ウイルス】
<voice name="ウイルス" class="ウイルス" src="voice/dm53/8000450b04">
"Now that you know&, is there anything you'd like to ask?"

{	Fw("fw蒼葉_通常_hard");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm53/8000460a01">
"&.&.&.You're lying&."

{	St("C",720, @0,@0,"stウイルス_通常バッヂ_normal");
	FadeSt("C",200,true);}
//【ウイルス】
<voice name="ウイルス" class="ウイルス" src="voice/dm53/8000470b04">
"Do you think so? It was all pertaining to you&, and I don't
 care much if you don't think so&. All I spoke of was of
 what I know as truth&."

{	Fw("fw蒼葉_通常_hard2");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm53/8000480a01">
"&.&.&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	DeleteFw();
	DeleteAllSt(200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0210]
It's likely&.&.&. that Virus's story is true&.

He wouldn't gain anything from making up a story like that&.

But&.&.&. my mind hasn't proccessed it all yet&.

Not knowing how to take it all in&, my heart beats 
rigorously&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_rage");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0220]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm53/8000490a01">
"&.&.&.You two stayed with me for all that time knowing this?"

{	St("ML",720, @0,@0,"stウイルス_通常バッヂ_serious");
	FadeSt("ML",200,true);}
//【ウイルス】
<voice name="ウイルス" class="ウイルス" src="voice/dm53/8000500b04">
"That's incorrect&."

{	St("MR",700, @0,@0,"stトリップ_通常バッヂ_normal2");
	FadeSt("MR",200,true);}
//【トリップ】
<voice name="トリップ" class="トリップ" src="voice/dm53/8000510b09">
"Incorrect&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0230]
They both reply immediately&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	St("ML",720, @0,@0,"stウイルス_通常バッヂ_fake");
	FadeSt("ML",200,true);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0240]
//【ウイルス】
<voice name="ウイルス" class="ウイルス" src="voice/dm53/8000520b04">
"I had said this earlier&, but the fact that we're your fans isn't a lie&."

{	St("MR",700, @0,@0,"stトリップ_通常バッヂ_smile");
	FadeSt("MR",200,true);}
//【トリップ】
<voice name="トリップ" class="トリップ" src="voice/dm53/8000530b09">
"You were quite striking as you fought in Rhyme as an
 entertaining psycho&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	CreatePlainSP("絵板写", 5000);

	CreateTextureSP("絵画像", 105, Center, Middle, "cg/ev/ev900昔の荒れてた蒼葉.jpg");
	CreateTextureSP("絵画像弐", 100, Center, Middle, "cg/ev/ev083蒼葉病院着.jpg");

	CreateTextureSPmul("絵演回想枠", 1500, Center, Middle, "cg/ef/effi回想01.jpg");
	CreateColor("絵演出色", 2000, 0, 0, 1024, 768, "624a2b");
	SetAlias("絵演出色","絵演出色");
	Request("絵演出色", OverlayRender);

	DeleteAllSt(0,true);

	FadeDelete("絵板写", 500, null, true);

//	Fw("fwウイルス_通常_normal");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0250]
//【ウイルス】
<voice name="ウイルス" class="ウイルス" src="voice/dm53/8000540b04">
"Yeah&, yeah&. When you used Scrap on your opponent in
 Rhyme&, that was when we became aware of it&. We realized were
 really an amazing person&."

//{	Fw("fwウイルス_通常_think");}
//【ウイルス】
<voice name="ウイルス" class="ウイルス" src="voice/dm53/8000550b04">
"So we investigated a little and put it all together&."

//{	Fw("fwウイルス_通常_normal");}
//【ウイルス】
<voice name="ウイルス" class="ウイルス" src="voice/dm53/8000560b04">
"We were surprised to find that Aoba-san was a peron who
 had the same potential that Sei-san did&."

//{	Fw("fwウイルス_通常_serious");}
//【ウイルス】
<voice name="ウイルス" class="ウイルス" src="voice/dm53/8000570b04">
"But you weren't self-aware of it in the least&. There was
 a danger that you'd unknowingly go on rampages&."

//{	FwPro("fwウイルス_通常_serious",5000,"fwウイルス_通常_normal");}
//【ウイルス】
<voice name="ウイルス" class="ウイルス" src="voice/dm53/8000580b04">
"It would've been troublesome if someone other than us
 noticed as well&. So we made it so that you'd forget
 about Rhyme&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	FadeDelete("絵画像", 500, null, true);

	Wait(500);

//	Fw("fwウイルス_通常_serious");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0260]
//【ウイルス】
<voice name="ウイルス" class="ウイルス" src="voice/dm53/8000590b04">
"Not exactly Rhyme&, but what accidents you'd leave behind
 after your little brawls&."

//{	Fw("fwウイルス_通常_normal");}
//【ウイルス】
<voice name="ウイルス" class="ウイルス" src="voice/dm53/8000600b04">
"If I were to speak for Morphine&, it's an elite force
 prepared for manipulating human nature&. Erasing memories
 is a trivial thing&."

//{	Fw("fwウイルス_通常_fake");}
//【ウイルス】
<voice name="ウイルス" class="ウイルス" src="voice/dm53/8000610b04">
"Well&, when our control was a little too loose and we were
 too visible&, we famously 'disappeared'&."

//{	Fw("fwウイルス_通常_normal");}
//【ウイルス】
<voice name="ウイルス" class="ウイルス" src="voice/dm53/8000620b04">
"So the ones who erased the memories of your past with
 Rhyme were us&. We're very sorry&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	CreatePlainSP("絵板写", 5000);

	Delete("絵画像*");
	Delete("絵演*");

	St("C",720, @0,@0,"stウイルス_通常バッヂ_normal");
	FadeSt("C",0,true);

	FadeDelete("絵板写", 1000, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0270]
Virus apologizes in a tone that doesnt sound very 
apologetic&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	St("C",720, @0,@0,"stウイルス_通常バッヂ_fake");
	FadeSt("C",200,true);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0280]
//【ウイルス】
<voice name="ウイルス" class="ウイルス" src="voice/dm53/8000630b04">
"But Toue had Sei-san&, so we thought it'd be all right if
 we kept Aoba-san our little secret&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	St("C",720, @0,@0,"stウイルス_通常バッヂ_normal");
	FadeSt("C",200,true);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0290]
//【ウイルス】
<voice name="ウイルス" class="ウイルス" src="voice/dm53/8000640b04">
"Well&, in the end Toue found you anyway&."

{	Fw("fw蒼葉_通常_rage");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm53/8000650a01">
"&.&.&.&.&."

{	St("C",720, @0,@0,"stウイルス_通常バッヂ_fake");
	FadeSt("C",200,true);}
//【ウイルス】
<voice name="ウイルス" class="ウイルス" src="voice/dm53/8000660b04">
"Now&, would you come with us&, Aoba-san? You can see Sei-san as well&."

{	Fw("fw蒼葉_通常_angry");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm53/8000670a01">
"&.&.&.Has Sei been with Toue this entire time?"

{	St("C",720, @0,@0,"stウイルス_通常バッヂ_serious");
	FadeSt("C",200,true);}
//【ウイルス】
<voice name="ウイルス" class="ウイルス" src="voice/dm53/8000680b04">
"That's right&. Although he doesn't have much energy to keep on living anymore&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_shock2");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0300]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm53/8000690a01">
"!"

{	St("C",720, @0,@0,"stウイルス_通常バッヂ_normal");
	FadeSt("C",0,true);}
//【ウイルス】
<voice name="ウイルス" class="ウイルス" src="voice/dm53/8000700b04">
"Sei-san has had his consciousness continually analyzed
 since he was a child&. The time he can keep himself moving
 is very short&."

{
	St("C",720, @0,@0,"stウイルス_通常バッヂ_think");
	St("C",720, @0,@0,"stウイルス_通常バッヂ_serious");
	FadeSt("C",200,true);
	FadeStPro("C", 6300, 200);
}
//【ウイルス】
<voice name="ウイルス" class="ウイルス" src="voice/dm53/8000710b04">
"And because of that&, his heart is weak as well&. He's at
 his limit&. Toue has been calling your grandmother to keep
 Sei-san alive longer&." 

{	Fw("fw蒼葉_通常_shock2");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm53/8000720a01">
"No way&.&.&."

{	St("C",720, @0,@0,"stウイルス_通常バッヂ_normal");
	FadeSt("C",200,true);}
//【ウイルス】
<voice name="ウイルス" class="ウイルス" src="voice/dm53/8000730b04">
"But the luminescence equipment developed to model Sei's
 eyes has been completed&. So in the worst case&, we'll
 be all right even if Sei-san is gone&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_shock2");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0310]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm53/8000740a01">
"Luminenscence equipment?"

{	St("C",720, @0,@0,"stウイルス_通常バッヂ_normal");
	FadeSt("C",0,true);}
//【ウイルス】
<voice name="ウイルス" class="ウイルス" src="voice/dm53/8000750b04">
"It produces the different signals that are in Sei-san's
 unique vision&."

{	St("C",720, @0,@0,"stウイルス_通常バッヂ_think");
	FadeSt("C",200,true);}
//【ウイルス】
<voice name="ウイルス" class="ウイルス" src="voice/dm53/8000760b04">
"Once it's been studied and a large scale of them are
 released&, a number of people will be able to replicate
 the same results&."

{	St("C",720, @0,@0,"stウイルス_通常バッヂ_serious");
	FadeSt("C",0,true);}
//【ウイルス】
<voice name="ウイルス" class="ウイルス" src="voice/dm53/8000770b04">
"Well&, Sei-san is a human with the power naturally in him&,
 so we'd rather not lose him if we could&."

{	St("C",720, @0,@0,"stウイルス_通常バッヂ_fake");
	FadeSt("C",200,true);}
//【ウイルス】
<voice name="ウイルス" class="ウイルス" src="voice/dm53/8000780b04">
"But even if we do lose him&, there'd be no more reason to
 worry&. Because now we have you&, Aoba-san&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0320]
Those words&.&.&. My hair stands up just by hearing them&.

This isn't funny&.&.&.!

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	St("C",720, @0,@0,"stウイルス_通常バッヂ_serious");
	FadeAllSt(200,true);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0330]
//【ウイルス】
<voice name="ウイルス" class="ウイルス" src="voice/dm53/8000790b04">
"So if you have no further questions&.&.&. we're very sorry&,
 but we'll be taking you&."


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	DeleteAllSt(200,true);

	CreateSE("SE01","se人体_動作_掴む01");
	MusicStart("SE01",0,700,0,1000,null,false);

	CreateTextureEX("絵背景2000", 2000, Center, Middle, "cg/bg/m/bg304041_5_東江タワー研究エリア研究室_m.jpg");
	Fade("絵背景2000", 500, 1000, null, true);

	CreateSE("SE02","se人体_動作_衣擦れ25");
	MusicStart("SE02",0,700,0,1000,null,false);

	CreatePlainSP("絵板写", 3000);
	Shake("絵板写", 200, 0, 20, 0, 0, 500, null, true);
	Delete("絵板写");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0340]
The men in black parkas grab onto me and pull me along&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_rage");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0350]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm53/8000800a01">
"&.&.&.! Let me go&.&.!"

{	Fw("fwウイルス_通常_normal");}
//【ウイルス】
<voice name="ウイルス" class="ウイルス" src="voice/dm53/8000810b04">
"Please be obedient&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0360]
A slight smile rises to Virus's face&.

I stare at it&, thinking of how unbelievable everything is 
right now&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	St("ML",720, @0,@0,"stウイルス_通常バッヂ_normal");
	St("MR",720, @0,@0,"stトリップ_通常バッヂ_smile");
	FadeAllSt(0,true);

	FadeDelete("絵背景2000", 500, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0370]
I believed in them&.

I thought that they were good people even if they were 
yakuza&.

But&.&.&.!

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_hard2");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0380]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm53/8000820a01">
"&.&.&.Why are you guys working for someone like Toue&.&.&.!?"

{	St("ML",720, @0,@0,"stウイルス_通常バッヂ_shock");
	St("MR",720, @0,@0,"stトリップ_通常バッヂ_normal");
	FadeAllSt(200,true);}
//【ウイルス】
<voice name="ウイルス" class="ウイルス" src="voice/dm53/8000830b04">
"Us?"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0390]
Virus and Trip blankly exchange glances&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	St("ML",720, @0,@0,"stウイルス_通常バッヂ_normal");
	St("ML",720, @0,@0,"stウイルス_通常バッヂ_fake");
	FadeSt("ML",200,true);
	FadeStPro("ML", 8000, 200);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0400]
//【ウイルス】
<voice name="ウイルス" class="ウイルス" src="voice/dm53/8000840b04">
"If I were to answer&, well&.&.&. We like interesting things&.
 And very fun things&."

{	St("MR",700, @0,@0,"stトリップ_通常バッヂ_smile2");
	FadeSt("MR",200,true);}
//【トリップ】
<voice name="トリップ" class="トリップ" src="voice/dm53/8000850b09">
"Yeah&, yeah&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	St("ML",720, @0,@0,"stウイルス_通常バッヂ_serious");
	FadeSt("ML",200,true);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0410]
//【ウイルス】
<voice name="ウイルス" class="ウイルス" src="voice/dm53/8000860b04">
"We have no interest in Toue's ideas&. The reason we're here
 is because Sei-san is an amazing person&, and we can relax
 while at Toue's side&."

{	St("ML",720, @0,@0,"stウイルス_通常バッヂ_normal");
	FadeSt("ML",200,true);}
//【ウイルス】
<voice name="ウイルス" class="ウイルス" src="voice/dm53/8000870b04">
"And that's it&."

{	St("MR",700, @0,@0,"stトリップ_通常バッヂ_smile");
	FadeSt("MR",200,true);}
//【トリップ】
<voice name="トリップ" class="トリップ" src="voice/dm53/8000880b09">
"That's it&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//※次ファイル["dm5380sl.nss"]

}
