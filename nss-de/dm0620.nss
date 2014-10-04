//<continuation number="850">
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


scene dm0620.nss_MAIN
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
	#ev061全員集合a=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;
	$GameName = "dm0630.nss";

}


scene dm0620.nss
{

	//■シーンの頭に必ず記述
	$スクリプトバージョン = " $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();


//―――――――――――――――――――――――――――――――――――――――

	PrintBG("上背景", 30000);

	OnBG(10,"bg102021_5_平凡地下室");
	FadeBG(0,true);

	FadeDelete("上背景", 1000, null, true);

//※演出：画面暗転→次のシーンで全員集合のevにノイズが増えてる／ev表示

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
&.&.&.I don't know how convincing that was&, but a few minutes pass&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	SoundPlay("@dm001",0,450,true);

	CreatePlainSP("絵板写", 5000);

	CreateMaskSetSPTate("絵マスク中", 2010);//ナット名、優先度
	CreateTextureSP("絵マスク中/絵画像", 1000, -1200, -130, "cg/ev/l/ev061全員集合a_l.jpg");
	FadeDelete("絵板写", 100, null, false);

	CreateColorEX("絵色黒", 200, "000000");
	Fade("絵色黒", 200, 300, null, false);
	OpenTateMask("絵マスク中",200, 1300,Dxl3,true);//所要時間、水平倍率、テンポ、待ち

	Wait(500);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0011]
Noiz showed up at Heibon&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	Fade("絵色黒", 200, 0, null, false);
	CloseTateMask("絵マスク中",200,Dxl3,true);//ナット名、所要時間、テンポ、待ち

	CreateTextureEX("絵ＥＶ100", 100, Center, Middle, "cg/ev/ev061全員集合a.jpg");
	Fade("絵ＥＶ100", 500, 1000, null, true);

	Wait(500);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0012]
Koujaku&, Clear&, Mink&, and Noiz were all here&.

All of these random people just lining up&.&.&.
It's sort of an achievement&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreateTextureEX("絵背景弐", 1000, -950, -80, "cg/ev/l/ev061全員集合a_l.jpg");
	Move("絵背景弐", 500, @0, @-50, Dxl1, false);
	Fade("絵背景弐", 500, 1000, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0013]
Noiz coming here made Koujaku even more unpleasant&, but it can't be helped anymore&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreatePlainSP("絵板写", 5000);

	Delete("絵背景弐");
	Delete("絵ＥＶ100");

	FadeDelete("絵板写", 500, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0014]
And even after the situation from before&, I still spoke 
bluntly&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fwノイズ_通常_normal2");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0015]
//【ノイズ】
<voice name="ノイズ" class="ノイズ" src="voice/dm06/2000010a03">
"Isn't Dry Juice the number one Rib team?"

{	Fw("fw蒼葉_通常_normal2");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm06/2000020a01">
"Yeah&."

{	Fw("fwノイズ_通常_normal3");}
//【ノイズ】
<voice name="ノイズ" class="ノイズ" src="voice/dm06/2000030a03">
"So a lot of people are in it&. So that means there's crew
 all around this entire island&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_worry3");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm06/2000040a01">
"I guess so&.&.&."

{	Fw("fw紅雀_通常_cool2");}
//【紅雀】
<voice name="紅雀" class="紅雀" src="voice/dm06/2000050a02">
"My team members have been searching too&, but they're not
 coming up with anything&."

{	Fw("fwクリア_通常マスクあり_normal");}
//【クリア】
<voice name="クリア" class="クリア" src="voice/dm06/2000060a04">
"I also searched from the rooftop&, but did not find
 anything&."

{	Fw("fwノイズ_通常_normal2");}
//【ノイズ】
<voice name="ノイズ" class="ノイズ" src="voice/dm06/2000070a03">
"They must be in some isolated place&."

{	Fw("fw蒼葉_通常_shock2");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm06/2000080a01">
"What do you mean?"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fwノイズ_通常_normal2");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【ノイズ】
<voice name="ノイズ" class="ノイズ" src="voice/dm06/2000090a03">
"The kind of place nobody's allowed to enter so no one
 comes by on accident&."

{	Fw("fwミンク_通常_normal2");}
//【ミンク】
<voice name="ミンク" class="ミンク" src="voice/dm06/2000100a05">
"That's right&. An information gathering lunatic would
 know&."

{	Fw("fwノイズ_通常_angry");}
//【ノイズ】
<voice name="ノイズ" class="ノイズ" src="voice/dm06/2000110a03">
"I'm not a lunatic&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0031]
Mink takes a slow whiff from his pipe&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fwミンク_通常_normal2");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0032]
//【ミンク】
<voice name="ミンク" class="ミンク" src="voice/dm06/2000120a05">
"Your grandmother has been taken to the Keisen&, in the
 North&."

{	Fw("fw蒼葉_通常_worry4");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm06/2000130a01">
"Keisen&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw紅雀_通常_normal2");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【紅雀】
<voice name="紅雀" class="紅雀" src="voice/dm06/2000140a02">
"Actually&, there are unused warehouses up there&."

{	Fw("fwミンク_通常_normal");}
//【ミンク】
<voice name="ミンク" class="ミンク" src="voice/dm06/2000150a05">
"Investigate it&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0041]
Mink points his pipe to Noiz&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);


	Fw("fwノイズ_通常_angry");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0042]
//【ノイズ】
<voice name="ノイズ" class="ノイズ" src="voice/dm06/2000160a03">
"I don't remember taking orders from you&."

{	Fw("fwミンク_通常_normal2");}
//【ミンク】
<voice name="ミンク" class="ミンク" src="voice/dm06/2000170a05">
"Think of it as an exchange&. We both want some things
 sorted out&, don't we?"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fwノイズ_通常_pinch");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【ノイズ】
<voice name="ノイズ" class="ノイズ" src="voice/dm06/2000180a03">
"&.&.&.Tch&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	DeleteFw();

	CreateTextureEX("絵背景い", 1000, -658, -445, "cg/bg/l/bg102021_5_平凡地下室_l.jpg");
	CreateTextureEX("絵背景ろ", 10200, 0, 0, "cg/bg/bg102021_5_平凡地下室.jpg");

//※コイル_ノイズ操作音
	CreateSE("SE01","se物体_コイル_操作音02");
	MusicStart("SE01",0,600,0,700,null,false);

	Fade("絵背景い", 1000, 1000, null, true);

//★徒歩：食べ残し
	CoilNoizeSet();

//★徒歩：食べ残し
	CoilNoizeFade();

	Wait(500);

	CreateSE("SE01","se物体_コイル_操作音01");
	MusicStart("SE01",0,600,0,700,null,false);

//	Wait(500);

	CreateSE("SE01","se物体_パソコン_キーボード操作01");
	MusicStart("SE01",0,700,0,1000,null,true);


	Fade("絵背景ろ", 2000, 1000, null, false);
	CoilNoizeDO01();
	CoilNoizeDO02();

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0051]
Noiz clicks his tongue angrily&, pulls out the monitor and  keyboard from his Coil&, and begins the operation&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	SetVolumeEX("SE*", 3000, 0, null);

	Fw("fw紅雀_通常_angry");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0052]
//【紅雀】
<voice name="紅雀" class="紅雀" src="voice/dm06/2000190a02">
"&.&.&.Anyway&, why do you get to call the shots?"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fwミンク_通常_normal2");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0053]
//【ミンク】
<voice name="ミンク" class="ミンク" src="voice/dm06/2000200a05">
"Fine&, you go ahead and take the initiative&."

{	Fw("fw紅雀_通常_shout");}
//【紅雀】
<voice name="紅雀" class="紅雀" src="voice/dm06/2000210a02">
"Huh!?"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
Koujaku bends forward&, not quite satisfied with the answer&.
Mink's allmate stops cleaning its self and raises its head&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fwAMトリ_通常_normal");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0061]
//【トリ】
<voice name="トリ" class="鳥" src="voice/dm06/2000220b12">
"I think you shouldn't waste your energy yelling like
 that&."

{	Fw("fwAMベニ_通常_normal");}
//【ベニ】
<voice name="ベニ" class="ベニ" src="voice/dm06/2000240b16">
"'Ey you&, shaddap!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0062]
Beni glares at the cockatoo from Koujaku's shoulder&, 
feathers flared up&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fwAMトリ_通常_normal");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0063]
//【トリ】
<voice name="トリ" class="鳥" src="voice/dm06/2000250b12">
"Allmates really are just like their owners&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fwAMベニ_通常_normal");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
//【ベニ】
<voice name="ベニ" class="ベニ" src="voice/dm06/2000260b16">
"What'dya say!? You bastard!!"

{	SetVolumeEX("SE*", 200, 0, null);
	Fw("fwノイズ_通常_angry");}
//【ノイズ】
<voice name="ノイズ" class="ノイズ" src="voice/dm06/2000270a03">
"Both of you&, shut up&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	DeleteFw();

//※コイル_ノイズ操作音（モニター反転）
//覇：コイル演出は後回し


//★徒歩：食べ残し
	FadeDelete("絵背景ろ", 500, null, false);
	CoilNoizeMove(2,500,-1000,100,Dxl1,true);


	CoilNoizeMove(3,0,2000,-200,Dxl1,true);


	CreateSE("coilsound_se","se物体_コイル_システム移動");
	MusicStart("coilsound_se",0,700,0,1000,null,false);

//★徒歩：食べ残し
	FadeDelete("絵背景い", 500, null, false);
	CoilNoizeMove(1,500,-1000,100,Dxl1,true);

//	Wait(500);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0071]
Noiz interrupts the Allmates' fight and turns his monitor  over for us to see&.

On it is a map of the Old Resident District with a red 
arrow pointing to a spot&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fwノイズ_通常_normal2");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0072]
//【ノイズ】
<voice name="ノイズ" class="ノイズ" src="voice/dm06/2000280a03">
"This is where Keisen is&. When I tried to access their
 network I got an error&."

{	Fw("fwノイズ_通常_normal");}
//【ノイズ】
<voice name="ノイズ" class="ノイズ" src="voice/dm06/2000290a03">
"If it was a normal&, off-limits area&, there wouldn't have
 been a network in the first place&. This place's data has
 a blank error screen&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fwノイズ_通常_normal2");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
//【ノイズ】
<voice name="ノイズ" class="ノイズ" src="voice/dm06/2000300a03">
"In short&, it's a fake&. It's trying to emulate a disfunct
 network&."

{	Fw("fw紅雀_通常_cool2");}
//【紅雀】
<voice name="紅雀" class="紅雀" src="voice/dm06/2000310a02">
"So we were right&."

{	Fw("fwノイズ_通常_normal3");}
//【ノイズ】
<voice name="ノイズ" class="ノイズ" src="voice/dm06/2000320a03">
"I guess&. There used to be a lot of treatment plants built
 here&."

{	Fw("fw蒼葉_通常_normal2");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm06/2000330a01">
"But they all closed down and became off-limits a few years ago&."

{	Fw("fw紅雀_通常_cool2");}
//【紅雀】
<voice name="紅雀" class="紅雀" src="voice/dm06/2000340a02">
"And it's still used as a dump&, an illegal one at that&. No
 one's ever cracked down on it&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_worry3");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm06/2000350a01">
"Granny's there&.&.&."

{	Fw("fwミンク_通常_normal2");}
//【ミンク】
<voice name="ミンク" class="ミンク" src="voice/dm06/2000360a05">
"I've received some reports on roughly where she is&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0091]
There's no concrete proof that she's here&.
But it's worth it to take that chance&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw紅雀_通常_cool2");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0092]
//【紅雀】
<voice name="紅雀" class="紅雀" src="voice/dm06/2000370a02">
"Even if Tae-san's kidnappers are here&, we have no idea
 what this place is like&. Isn't that dangerous?"

{	ClearComicNext(20001,77, 313,20,"fw");
	Fw("fwクリア_通常マスクあり_normal");}
//【クリア】※漫符：気がついた
<voice name="クリア" class="クリア" src="voice/dm06/2000380a04">
"Oh&, if that's it&, then I know that place quite well&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	ClearComicNexDelete();
	TextBoxDelete(0);

	SetVolumeEX("@dm001", 1500, 0, null);

	CreatePlainSP("絵板写", 15000);

	CreateTextureSP("絵背景", 10500, -1023, -198, "cg/bg/l/bg102021_5_平凡地下室_l.jpg");

	SetShade("絵背景", MEDIUM);

	St("C",10740, @0,@0,"fuクリア_通常マスクあり_normal");
	FadeSt("C",0,true);
	Move("@StNameC/C*", 0, @0, @100, null, true);


	Move("@StNameC/C*", 500, @0, @-100, Dxl2, false);
	FadeDelete("絵板写", 500, null, true);

	Fw("fw紅雀_通常_sad2");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0101]
//【紅雀】
<voice name="紅雀" class="紅雀" src="voice/dm06/2000390a02">
"&.&.&.This isn't a time to joke around&."

{
	SoundPlay("@dm003",0,450,true);
	ClearComicNext(20001,371, 9,12,"st");
	St("C",10740, @0,@0,"fuクリア_通常マスクあり_normal");
	FadeSt("C",200,true);}
//【クリア】※漫符：ガーン
<voice name="クリア" class="クリア" src="voice/dm06/2000400a04">
"I know&. I really do know this area&. I used to take walks
 in this area a long time ago&."

{	Fw("fw蒼葉_通常_worry3");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm06/2000410a01">
"&.&.&.&.&."

{	Fw("fw紅雀_通常_worry2");}
//【紅雀】
<voice name="紅雀" class="紅雀" src="voice/dm06/2000420a02">
"&.&.&.&.&."

{	Fw("fwノイズ_通常_angry2");}
//【ノイズ】
<voice name="ノイズ" class="ノイズ" src="voice/dm06/2000430a03">
"&.&.&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);
//	ClearComicNexDelete();

	Fw("fwミンク_通常_angry3");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
//【ミンク】
<voice name="ミンク" class="ミンク" src="voice/dm06/2000440a05">
"&.&.&.&.&."

{	St("C",10740, @0,@0,"fuクリア_正面マスクあり_normal");
	FadeSt("C",200,true);
	ClearComicNext(20001,0, 0,11,"fu");}
//【クリア】※漫符：びっくり
<voice name="クリア" class="クリア" src="voice/dm06/2000450a04">
"Eh? What is it? Why did everyone suddenly go quiet? Do you doubt me?"

{
	ClearComicNexDelete();
	ClearComicNext(20001,357, 0,19,"fu");
}
//【クリア】※漫符：怒り
<voice name="クリア" class="クリア" src="voice/dm06/2000460a04">
"Please don't do that! I really do know! I can draw you a
 map if you want me to!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	ClearComicNexDelete();
//	TextBoxDelete(0);

	CreateTextureSP("絵背景ろ", 10100, 0, 0, "cg/bg/bg102021_5_平凡地下室.jpg");


	CreatePlainSP("絵板写", 15000);

	Delete("絵背景");
	DeleteSt("C", 0,true);

//※ＳＥ：紙を取り出す（ぺらっ）
	CreateSE("SE01","se人体_動作_抱く01");
	MusicStart("SE01",0,700,0,1000,null,false);
	FadeDelete("絵板写", 500, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0111]
Clear is unhappy with our reactions&, and takes out a piece of paper and pen from his coat pocket&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fwクリア_通常マスクあり_normal");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0112]
//【クリア】
<voice name="クリア" class="クリア" src="voice/dm06/2000470a04">
"Annnnddd&.&.&. Here&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0113]
Clear glides the pen across the paper without a single 
pause&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	CreateSE("SE01","se物体_紙_めくる01");
	MusicStart("SE01",0,700,0,1000,null,false);
	CreatePlainSP("絵板写", 15000);

	CreateMaskSetSPTate("絵マスク中", 12010);//ナット名、優先度
	CreateTextureSP("絵マスク中/絵ＥＦ100", 10100, Center, Middle, "cg/ef/efマップ鶏泉_クリア.jpg");

	FadeDelete("絵板写", 100, null, false);

	OpenTateMask("絵マスク中",200, 1300,Dxl3,true);//所要時間、水平倍率、テンポ、待ち

	Wait(500);

	Fw("fwクリア_通常マスクあり_normal");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
//【クリア】
<voice name="クリア" class="クリア" src="voice/dm06/2000480a04">
"&.&.&.Done! I'm finished!"

{	Fw("fw紅雀_通常_worry");}
//【紅雀】
<voice name="紅雀" class="紅雀" src="voice/dm06/2000490a02">
"Hey&, hey&. Are you serious about this map?"

{	Fw("fwミンク_通常_normal2");}
//【ミンク】
<voice name="ミンク" class="ミンク" src="voice/dm06/2000500a05">
"Compare it&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//※ＳＥ：紙を攫む
	CreateSE("SE01","se人体_動作_衣擦れ01");
	MusicStart("SE01",0,700,0,1500,null,false);
	CloseTateMask("絵マスク中",200,Dxl3,true);//ナット名、所要時間、テンポ、待ち
//	FadeDelete("絵ＥＦ100", 250, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0121]
Mink takes the map from Clear and brings it to Noiz&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

//★徒歩：食べ残し

	CreateSE("SE01","se物体_コイル_操作音02");
	MusicStart("SE01",0,600,0,800,null,false);

	CreateTextureSP("絵背景い", 9998, -658, -445, "cg/bg/l/bg102021_5_平凡地下室_l.jpg");

	FadeDelete("絵背景ろ", 1000, null, false);
	CoilNoizeDO03();

	Wait(500);

	Fw("fwノイズ_通常_normal2");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0122]
//【ノイズ】
<voice name="ノイズ" class="ノイズ" src="voice/dm06/2000510a03">
"&.&.&.It matches up&."

{	Fw("fw紅雀_通常_normal2");}
//【紅雀】
<voice name="紅雀" class="紅雀" src="voice/dm06/2000520a02">
"So it really is right&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	ClearComicNext(20001,77, 313,19,"fw");
	Fw("fwクリア_正面マスクあり_normal");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
//【クリア】※漫符：怒り
<voice name="クリア" class="クリア" src="voice/dm06/2000530a04">
"Didn't I say so before? You're all so mean!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	ClearComicNexDelete();

	CoilNoizeDelete();

	SetVolumeEX("@dm003", 2000, 0, null);

	FadeDelete("絵背景い", 500, null, true);


//※演出：キャラ乱立シーン後ほど演出強化
	FwPro("fw蒼葉_通常_fake",3050,"fw蒼葉_通常_normal");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0131]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm06/2000540a01">
"&.&.&.Well&, with this we won't get lost&. Let's follow it&."

{	Fw("fw紅雀_通常_sad");}
//【紅雀】
<voice name="紅雀" class="紅雀" src="voice/dm06/2000550a02">
"Follow&.&.&. This mask guy?"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	DeleteFw();

	CreatePlainSP("絵板写", 5000);

	CreateTextureSP("絵一枚絵", 100, 0, 0, "cg/ev/ev061全員集合a.jpg");
	CreateTextureSP("絵演出", 500, -950, -70, "cg/ev/l/ev061全員集合a_l.jpg");
	CreateTextureSP("絵演出弐", 400, 0, 0, "cg/ev/l/ev061全員集合a_l.jpg");

	Request("絵演出弐", Smoothing);
	Zoom("絵演出弐", 0, 1055, 1055, null, true);
	Move("絵演出弐", 0, @55, @0, Dxl1, true);

	Move("絵演出", 800, @40, @0, Dxl1, false);
	FadeDelete("絵板写", 300, null, true);
	Wait(1000);
	Move("絵演出弐", 800, @-40, @0, Dxl1, false);
	FadeDelete("絵演出", 300, null, true);

	Wait(1000);
	FadeDelete("絵演出弐", 300, null, true);

	SoundPlay("@dm005",0,450,true);

	Wait(1000);
	FadeDelete("絵一枚絵", 500, null, true);

	Wait(500);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0132]
Koujaku looks at the rest of us with a reluctant face&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	FwMask(-950, 160, "cg/ev/l/ev061全員集合a_l.jpg");
//	Fw("fw紅雀_通常_normal");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
//【紅雀】
<voice name="紅雀" class="紅雀" src="voice/dm06/2000560a02">
"All he does is weird crap&.&.&. Why should we?"

{
	FwMask(-1512, 98, "cg/ev/l/ev061全員集合a_l.jpg");
}
//【ノイズ】
<voice name="ノイズ" class="ノイズ" src="voice/dm06/2000570a03">
"You have no right to say that about someone else&."

{
	FwMask(-950, 160, "cg/ev/l/ev061全員集合a_l.jpg");
}
//【紅雀】
<voice name="紅雀" class="紅雀" src="voice/dm06/2000580a02">
"Shut up&."

{
	FwMask(-1512, 98, "cg/ev/l/ev061全員集合a_l.jpg");
}
//【ノイズ】
<voice name="ノイズ" class="ノイズ" src="voice/dm06/2000590a03">
"I don't have the intention of getting buddy-buddy with you all&. I'm just doing it the easy way&. It's more efficient&."

{
	FwMask(-950, 160, "cg/ev/l/ev061全員集合a_l.jpg");
}
//【紅雀】
<voice name="紅雀" class="紅雀" src="voice/dm06/2000600a02">
"Then we should just all split up&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	FwMask(-15, 257, "cg/ev/m/ev061全員集合a_m.jpg");
//	Fw("fwミンク_通常_normal");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
//【ミンク】
<voice name="ミンク" class="ミンク" src="voice/dm06/2000610a05">
"It's better that way&. Even if we lay out a detailed plan&,
 there's no guarentee that everyone will follow it exactly&.
 Especially the masked guy here&."

{
	FwMask(-950, 160, "cg/ev/l/ev061全員集合_l.jpg");
}
//【紅雀】
<voice name="紅雀" class="紅雀" src="voice/dm06/2000620a02">
"That's what I've been saying!"

{
	FwMask(-15, 257, "cg/ev/m/ev061全員集合a_m.jpg");
}
//【ミンク】
<voice name="ミンク" class="ミンク" src="voice/dm06/2000630a05">
"I was talking about you and gas mask over there&."

{
	FwMask(-950, 160, "cg/ev/l/ev061全員集合_l.jpg");
}
//【紅雀】
<voice name="紅雀" class="紅雀" src="voice/dm06/2000640a02">
"What was that!?"

{	FwMask(-494, 125, "cg/ev/l/ev061全員集合a_l.jpg");
	ClearComicNext(20001,68, 331,25,"ev");}
//【クリア】※漫符：飛汗２？
<voice name="クリア" class="クリア" src="voice/dm06/2000650a04">
"Eh&, me? That's awful! I wanted to be friends with all of
 you too!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	ClearComicNexDelete();

	FwMask(-1512, 98, "cg/ev/l/ev061全員集合a_l.jpg");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160]
//【ノイズ】
<voice name="ノイズ" class="ノイズ" src="voice/dm06/2000660a03">
"Keep your jokes to yourself&."

{	FwMask(-494, 125, "cg/ev/l/ev061全員集合a_l.jpg");
	ClearComicNext(20001,68, 331,25,"ev");}
//【クリア】※漫符：飛汗２？
<voice name="クリア" class="クリア" src="voice/dm06/2000670a04">
"Ehhhh?"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	ClearComicNexDelete();
//	TextBoxDelete(0);

	FadeDelete("絵壱一枚絵", 800, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0161]
&.&.&.&.&.

&.&.&.This is impossible&.

I thought it would be&, and I was right&. No one is 
cooperating&.

If they could at least look like they could work together&.&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	FwMask(-950, 160, "cg/ev/l/ev061全員集合_l.jpg");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0162]
//【紅雀】
<voice name="紅雀" class="紅雀" src="voice/dm06/2000680a02">
"Hey&, gas mask guy&. Don't butt into our complicated
 conversation&, and shut up!"

{	FwMask(-1512, 98, "cg/ev/l/ev061全員集合a_l.jpg");}
//【ノイズ】
<voice name="ノイズ" class="ノイズ" src="voice/dm06/2000690a03">
"You should do the same thing&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	FwMask(-494, 125, "cg/ev/l/ev061全員集合a_l.jpg");
	ClearComicNext(20001,43,320,26,"ev");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0170]
//【クリア】※漫符：飛汗３？
<voice name="クリア" class="クリア" src="voice/dm06/2000700a04">
"No way! So mean! It's not complicated at all!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	ClearComicNexDelete();
//	TextBoxDelete(0);

//	SetVolumeEX("@クリア*", 0, 0, null);

//覇：以下SEつくるのでしょうか？そうでなければプロセス対応
//	CreateVOICE("ノイズ","dm06/2000710a03");
//	CreateVOICE("クリア","dm06/2000720a04");
//	CreateVOICE("紅雀","dm06/2000730a02");
//	CreateVOICE("ミンク","dm06/2000740a05");
//	CreateVOICE("ノイズ","dm06/2000750a03");
//	CreateVOICE("紅雀","dm06/2000760a02");
//	CreateVOICE("クリア","dm06/2000770a04");

	DeleteFw();

	CreateTextureEX("絵一枚絵", 100, 0, 0, "cg/ev/ev061全員集合a.jpg");
	Fade("絵一枚絵", 500, 1000, null, true);

	Request("@text0170", UnLock);
	Delete("@text0170");
	dm0620_seprocess();

//※演出：ここから先の会話は描写の後ろにSEとして敷いてください。長すぎたら適当なところで切ってください。
//※ＳＥ：メインキャラガヤ・ここから

/*
{	Fw("fwノイズ_通常_normal");}
//【ノイズ】
<voice name="ノイズ" class="ノイズ" src="voice/dm06/2000710a03">
"You're complicated just by yourself&."

{	Fw("fwクリア_通常マスクあり_normal");}
//【クリア】
<voice name="クリア" class="クリア" src="voice/dm06/2000720a04">
"So mean! You're a bully!!!"

{	Fw("fw紅雀_通常_normal");}
//【紅雀】
<voice name="紅雀" class="紅雀" src="voice/dm06/2000730a02">
"You talk like a brat! I can't trust you guys any more than this gas mask guy!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fwミンク_通常_normal");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0180]
//【ミンク】
<voice name="ミンク" class="ミンク" src="voice/dm06/2000740a05">
"You said it&."

{	Fw("fwノイズ_通常_normal");}
//【ノイズ】
<voice name="ノイズ" class="ノイズ" src="voice/dm06/2000750a03">
"You're a jackass just going on about not trusting anyone in the first place!"

{	Fw("fw紅雀_通常_normal");}
//【紅雀】
<voice name="紅雀" class="紅雀" src="voice/dm06/2000760a02">
"You little shit!"

{	Fw("fwクリア_通常マスクあり_normal");}
//【クリア】
<voice name="クリア" class="クリア" src="voice/dm06/2000770a04">
"Please stop fighting!!!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

*/

//※メインキャラガヤ・ここまで

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0181]
While I'm sitting here at my wit's end&, these guys just 
keep going on and on like little kids&.

This really isn't the time&.&.&.

While we waste our time&, Granny could be in even more 
danger for all we know&.&.&.

More and more as time goes on&.&.&.

These guys&.&.&.

Are seriously&.&.&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	SetVolumeEX("@dm005", 1000, 0, null);

	CreateSE("SE01","se擬音_効果_ドン01");
	MusicStart("SE01",0,700,0,1000,null,false);
	dm0620_sedelete();
	CreateColorEX("絵色白", 5000, "WHITE");
	Shake("絵一枚絵", 300, 5, 5, 0, 0, 500, Dxl1, false);
	Fade("絵色白", 200, 1000, Dxl1, true);
	Fade("絵色白", 200, 0, Dxl1, true);

	Fw("fw蒼葉_通常力行使_shout");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0190]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm06/2000780a01">
"&.&.&.You guys&, cut this shit out already!!!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	DeleteFw();
	Delete("絵色*");
	FadeDelete("絵一枚絵", 300, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0191]
&.&.&.With no patience left&, I yell at them&.

Even if I do that&, they won't listen to me anyway&.

&.&.&.Well&, that's what I thought&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_shock");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0200]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm06/2000790a01">
"&.&.&.H-Huh?"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0201]
They suddenly all stopped their banter&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_shock2");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0202]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm06/2000800a01">
"Eh&.&.&. Why did&.&.&.?"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	SoundPlay("@dm002",0,450,true);

	Fw("fw紅雀_通常_cool");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0203]
//【紅雀】
<voice name="紅雀" class="紅雀" src="voice/dm06/2000810a02">
"It's just like what Aoba said&. We need to stop this&."

{	Fw("fwノイズ_通常_normal2");}
//【ノイズ】
<voice name="ノイズ" class="ノイズ" src="voice/dm06/2000820a03">
"It was useless to waste our time with this in the first
 place&."

{	Fw("fwミンク_通常_angry4");}
//【ミンク】
<voice name="ミンク" class="ミンク" src="voice/dm06/2000830a05">
"Anyway&, let's go&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fwクリア_通常マスクあり_normal");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0210]
//【クリア】
<voice name="クリア" class="クリア" src="voice/dm06/2000840a04">
"That's right&. Let's go&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreateSE("SE01","se人体_動作_衣擦れ01");
	MusicStart("SE01",0,500,0,1200,null,false);
	CreateSE("SE02","se人体_動作_衣擦れ01");
	MusicStart("SE02",0,500,0,1100,null,false);
	CreateSE("SE03","se人体_動作_衣擦れ01");
	MusicStart("SE03",0,500,0,1000,null,false);
	CreateSE("SE04","se人体_動作_衣擦れ01");
	MusicStart("SE04",0,500,0,800,null,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0211]
Everyone's mind changes with the flip of a switch&, and 
they all stand up from the sofa&.

I don't know how exactly&, but it seems they all came to a  mutual understanding&.&.&.

&.&.&.Well&, whatever&.
It turned out all right in the end&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_serious");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0212]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm06/2000850a01">
"&.&.&.All right&. Let's go&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreateSE("SE01","se人体_動作_衣擦れ01");
	MusicStart("SE01",0,400,0,1000,null,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0213]
I pull myself together and get up from the sofa&. 

Granny&.&.&.
I'll definitely save you&.

Mizuki and the rest of Dry Juice too&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0220]
We leave Heibon and head towards the North District&.



</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	SetVolumeEX("@dm002", 2000, 0, null);
	ClearFadeAll(1000, true);

	Wait(2000);

//※次ファイル["dm0630.nss"]

}
