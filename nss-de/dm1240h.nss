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


scene dm1240h.nss_MAIN
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
	#ev124紅雀強姦未遂=true;
	#ev124紅雀強姦未遂a=true;
	#ev124紅雀強姦未遂b=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;
	$GameName = "dm1250.nss";

	//▼頭痛レベル設定
	$HALevel=2;

	if($RECRIB_PLAY==1){//回想モード中
		$GameName = "";
		$GameCircle=false;
	}
	#RECLIB02=1;//回想用フラグ取得

}


scene dm1240h.nss
{

	//■シーンの頭に必ず記述
	$スクリプトバージョン = " $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();


//―――――――――――――――――――――――――――――――――――――――

	PrintBG("上背景", 30000);

	OnBG(10,"bg302041_5_グリッター廊下");
	FadeBG(0,true);

	$ftime=0;if($RECRIB_PLAY==1){$ftime=1000;}//回想時
	FadeDelete("上背景", $ftime, null, true);

//===========================================
//以下、合流
//===========================================
	TextBoxDelete(0);

	CreateSE("SE01","se人体_動作_衣擦れ17");
	MusicStart("SE01",0,700,0,1500,null,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
{	CreatePlainSP("絵板写", 990);
	FadeFR2("絵板写", 0, 1000, 150, 0, 0, 10, null, true);
	Delete("絵板写");}
His grip throws me off balance and I fall to my knees&.

{
	St("C",740, @0,@0,"fu紅雀_通常_angry");
	FadeSt("C",200,true);
}

I raise my head&, flustered&.&.&.

And when I do-

I look into Koujaku's dark&, looming eyes&.

Water drips down strands of his hair&, and some of it runs 
down his pale cheeks to his chin&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_shock2");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0011]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm12/4000010a01">
"&.&.&.Koujaku?"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0012]
//【紅雀】
<voice name="紅雀" class="紅雀" src="voice/dm12/4000020a02">
"&.&.&.Why did you do that?"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_shock2");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0013]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm12/4000030a01">
"Huh?"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	St("C",740, @0,@0,"fu紅雀_通常_angry4");
	FadeSt("C",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【紅雀】
<voice name="紅雀" class="紅雀" src="voice/dm12/4000040a02">
"What did you say to him?"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_shock2");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0021]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm12/4000050a01">
"Him? &.&.&.Hey!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreateSE("SE01","se人体_動作_衣擦れ01");
	MusicStart("SE01",0,700,0,1000,null,false);

	DeleteFw();
	DeleteAllSt(200,true);

	CreatePlainSP("絵板写", 990);
	FadeFR2("絵板写", 0, 1000, 150, 0, 0, 40, null, true);
	Delete("絵板写");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0022]
Suddenly&, Koujaku takes hold of my shoulders and violently throws his weight onto me&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	SoundPlay("@dm007a",0,450,true);

	CreateTextureEX("絵背景20", 20, 0, -500, "cg/bg/l/bg302011_5_グリッター部屋01_l.jpg");
	Fade("絵背景20", 150, 1000, null, true);

	OnBG(10,"bg302011_5_グリッター部屋01天井");
	FadeBG(0,true);

	CreateSE("SE01","se人体_動作_衣擦れ25");
	MusicStart("SE01",0,700,0,1000,null,false);

	CreateSE("SE02","se物体_ベッド_鳴る01");
	MusicStart("SE02",0,700,0,1400,null,false);

	CreatePlainSP("絵板写", 990);
	Shake("絵板写", 300, 20, 50, -10, 10, 500, null, true);
	Delete("絵板写");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0023]
I try to step back&, but stumble&, and I fall onto the bed 
along with Koujaku&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	CreateSE("SE01","se人体_動作_衣擦れ02");
	MusicStart("SE01",0,700,0,1000,null,false);

	CreateTextureEX("絵ＥＶ103", 103, Center, Middle, "cg/ev/ev124紅雀強姦未遂a.jpg");
	CreateTextureEX("絵ＥＶ102", 102, 0, -222, "cg/ev/m/ev124紅雀強姦未遂a_m.jpg");
	CreateTextureEX("絵ＥＶ101", 101, Center, Middle, "cg/ev/ev124紅雀強姦未遂.jpg");
	CreateTextureEX("絵ＥＶ100", 100, -500, 0, "cg/ev/m/ev124紅雀強姦未遂_m.jpg");
	Move("絵ＥＶ100", 500, 0, -222, Dxl3, false);
	Fade("絵ＥＶ100", 500, 1000, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0024]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm12/4000060a01">
"You're hea&.&.&. Hey&, Koujaku&.&.&.!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0025]
//【紅雀】
<voice name="紅雀" class="紅雀" src="voice/dm12/4000070a02">
"You talked with him&.&.&."

//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm12/4000080a01">
"Koujaku&.&.&.?"

//【紅雀】
<voice name="紅雀" class="紅雀" src="voice/dm12/4000090a02">
"With him&.&.&."

//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm12/4000100a01">
"Him? &.&.&.!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	CreateSE("SE01","se人体_動作_衣擦れ02");
	MusicStart("SE01",0,700,0,1000,null,false);

	Move("絵ＥＶ100", 500, 0, -100, Dxl3, false);
	Fade("絵ＥＶ101", 500, 1000, null, true);
	Delete("絵背景20");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0031]
Koujaku takes both of his hands and roughly pushes them up my shirt&.

Who does he mean by 'him'&.&.&.?
Who is he talking about?

And Koujaku's eyes&.
I can't tell where he's looking&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm12/4000110a01">
"Koujaku&, hey&.&.&. Are you okay?"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	CreateSE("SE01","se人体_動作_衣擦れ01");
	MusicStart("SE01",0,700,0,1200,null,false);

	Fade("絵ＥＶ103", 300, 1000, Dxl1, true);
	Fade("絵ＥＶ102", 0, 1000, null, true);

	Move("絵ＥＶ102", 500, 0, -283, Axl3, false);
	FadeDelete("絵ＥＶ103", 500, null, true);

	Delete("絵ＥＶ100");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0041]
//【紅雀】
<voice name="紅雀" class="紅雀" src="voice/dm12/4000120a02">
"&.&.&.!"

Koujaku pushes his face down into my shoulders&.
At that instant&, a spark of pain courses through my body&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreateSE("SE01","se人体_動作_衣擦れ11");
	MusicStart("SE01",0,700,0,1200,null,false);

	CreatePlainSP("絵板写", 990);
	Shake("絵板写", 150, 10, 5, -10, 0, 500, null, true);
	Delete("絵板写");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0042]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm12/4000130a01">
"Ouch!"

What&.&.&.!?
Did he just bite my neck&.&.&.!?

{
	CreateSE("SE01","se擬音_水_はねる04");
	MusicStart("SE01",0,500,0,1000,null,false);
}
Right after&, a wet but warm feeling creeps up in the same 
area&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Delete("絵ＥＶ101");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm12/4000140a01">
"Wh-What are you doing&.&.&.!?"

The bite stings&, but he keeps licking it&.

I hear the sound of water and rough panting near my ear&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreateSE("SE01","se人体_動作_衣擦れ17");
	MusicStart("SE01",0,700,0,1000,null,false);

	CreateSE("SE02","se人体_動作_衣擦れ06");
	MusicStart("SE02",0,700,0,1000,null,false);

	CreatePlainSP("絵板写", 990);
	Shake("絵板写", 200, 0, 10, 0, 0, 500, null, true);
	Delete("絵板写");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0051]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm12/4000150a01">
"Koujaku&.&.&.! Stop it&.&.&.!"

I try to squirm out of his grip&, but he holds me down 
still&, licking my neck with his teeth bared&.

Why&.&.&.

What's going on&.&.&.?

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreateSE("SE01","se人体_動作_衣擦れ07");
	MusicStart("SE01",0,700,0,1000,null,false);

	Move("絵ＥＶ102", 500, -317, -283, Dxl1, false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm12/4000160a01">
"-Hey&.&.&.!"

He lifts up my clothes in a rush&.

Why is this happening?

What are you doing&, Koujaku&.&.&.!?

//【紅雀】
<voice name="紅雀" class="紅雀" src="voice/dm12/4000170a02">
"&.&.&.&.&."

Koujaku keeps licking&, and moves up to my ear&.

&.&.&.I don't have any idea what's happening&, but I'll be in 
trouble if I don't do something&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreateSE("SE01","se人体_動作_衣擦れ11");
	MusicStart("SE01",0,700,0,1000,null,false);

	CreateSE("SE02","se物体_ベッド_倒れ込む");
	MusicStart("SE02",0,700,0,1000,null,false);

	CreatePlainSP("絵板写", 990);
	FadeFFR("絵板写",0,1000,150,0,0,50,null, true);
	Delete("絵板写");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm12/4000180a01">
"Koujaku&.&.&.! Hey&, what the hell are you thinking! I said
 stop it&.&.&.!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	FadeDelete("絵ＥＶ102", 150, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0071]
I try to put up a serious fight&.

//【紅雀】
<voice name="紅雀" class="紅雀" src="voice/dm12/4000190a02">
"Ugh&.&.&."

{
	CreateSE("SE01","se人体_動作_衣擦れ02");
	MusicStart("SE01",0,700,0,1000,null,false);
}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm12/4000200a01">
"!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreateSE("SE01","se人体_動作_衣擦れ25");
	MusicStart("SE01",0,700,0,1000,null,false);

	CreateSE("SE02","se物体_ベッド_鳴る02");
	MusicStart("SE02",0,800,0,1000,null,false);

	CreatePlainSP("絵板写", 990);
	Shake("絵板写", 300, 50, 30, -5, 10, 500, null, true);
	Delete("絵板写");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0072]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm12/4000210a01">
"Ngh&.&.&.&.!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
As if to warn me to stop now&, Koujaku pushes me down even 
harder on the bed&.

He bites my wrist&, and I flush white because of how 
powerful he is against me&.

Koujaku&.&.&.

I look at him&, and he isn't listening to anything I say&.

Did something&.&.&. happen to him?

He looks like Koujaku on the outside&, but it's like he's a different person inside&.

&.&.&.A different person&.

My body goes cold when I realize that&.

What do I do&.&.&.!?

//【紅雀】
<voice name="紅雀" class="紅雀" src="voice/dm12/4000220a02">
"&.&.&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreateSE("SE01","se人体_動作_衣擦れ01");
	MusicStart("SE01",0,700,0,1000,null,false);

	CreateTextureEX("絵ＥＶ105", 105, -1020, 0, "cg/ev/l/ev124紅雀強姦未遂a_l.jpg");
	Move("絵ＥＶ105", 500, -600, -350, Dxl1, false);
	Fade("絵ＥＶ105", 500, 1000, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0081]
Koujaku lets out a groan&, putting his hands up my already 
half-rolled up shirt&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreateSE("SE01","se人体_動作_衣擦れ05");
	MusicStart("SE01",0,700,0,1000,null,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm12/4000230a01">
"!? Hey&.&.&.!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0091]
He runs his rough palms over my skin and rubs my chest&.

Soon a panicked sweat runs down my body with Koujaku's 
palms on my skin&.

//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm12/4000240a01">
"Get- off&.&.&.! What the hell are you&.&.&. Ouch&.&.&.!"

{
	CreateSE("SE01","se擬音_水_はねる05");
	MusicStart("SE01",0,500,0,800,null,false);
}
On both my wet neck and ear&, I can feel his hot pants&.

//【紅雀】
<voice name="紅雀" class="紅雀" src="voice/dm12/4000250a02">
"Guh&.&.&."

{
	CreateSE("SE01","se人体_動作_衣擦れ09");
	MusicStart("SE01",0,700,0,1000,null,false);

	CreatePlainSP("絵板写", 990);
	Shake("絵板写", 200, 0, 15, 0, 0, 500, null, true);
	Delete("絵板写");
}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm12/4000260a01">
"Koujaku&.&.&. Koujaku!!!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
//【紅雀】
<voice name="紅雀" class="紅雀" src="voice/dm12/4000270a02">
"&.&.&.&.&."


//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm12/4000280a01">
"&.&.&.Ugh&.&.&.!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreateSE("SE01","se人体_動作_衣擦れ02");
	MusicStart("SE01",0,700,0,1000,null,false);

	Move("絵ＥＶ105", 1300, 0, -500, Dxl3, false);

	CreateSE("SE02","se擬音_水_はねる05");
	MusicStart("SE02",0,700,0,1000,null,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
Koujaku holds back my attempts to break free with his 
terrifying strength&, and licks all over my ear&.

All I hear is the sound of saliva glopping all over and in my ear&. I lose my ability to think&.

I try to frantically turn my head away&, but feel something awful in the lower half of my body&.

{
	CreatePlainSP("絵板写", 990);
	Shake("絵板写", 200, 0, 5, 0, 0, 500, null, true);
	Delete("絵板写");

	CreateSE("SE01","se人体_動作_衣擦れ23.ogg");
	MusicStart("SE01",0,700,0,1000,null,false);
}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm12/4000290a01">
"&.&.&.&.&."

Koujaku puts his hands in my pants&, and then my underwear&. He holds my cock with a strong grip&.

//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm12/4000300a01">
"Idi- ot&.&.&.Let go&, stop it&.&.&.!"

I'm completely caught&, frazzled&, and try my hardest to get away&.

But Koujaku refuses to let go&.

Why did it have to come to this?
And even with&.&.&. Koujaku?

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	EfRecoIn1(10000,200);

	CreateTextureSP("絵効果背景", 1000, Center, Middle, "cg/bg/bg303011_5_娯楽施設外観入り口レッド.jpg");//
	St("C",1740, @0,@0,"bu竜峰_通常_normal");
	FadeSt("C",0,true);

	Delete("絵ＥＶ105");

	EfRecoIn2(500);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
//※加工：回想
//【竜峰】
<voice name="竜峰" class="竜峰" src="voice/dm12/4000310b05">
"But you should be careful&. You're a little too
 defenseless&. If you're not&, something you take for
 granted will&.&.&.Chomp!"

{	St("C",1740, @0,@0,"bu竜峰_通常_smile");////_pride
	FadeSt("C",200,true);}
//※加工：回想
//【竜峰】
<voice name="竜峰" class="竜峰" src="voice/dm12/4000320b05">
"They might just gobble you up&, you know?"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	EfRecoOut1(100);

	Delete("絵効果*");
	DeleteSt("C", 0,true);

	EfRecoIn2(400);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0121]
What that man in the kimono said to me comes to mind&.

Why&.&.&.
Why is this happening&.&.&.

What's wrong with Koujaku?
I don't know&. I don't understand&.

I honestly&.&.&.
Don't know anything about Koujaku&.&.&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

//※頭痛レベル：２
//※演出：ずきんと頭痛がする
$HALevel=2;
	HAFade(100, 0,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm12/4000330a01">
"&.&.&.Ugh&."

A sharp pain suddenly rushes to my head&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

//※頭痛レベル：２
//※演出：ずきん、ずきんと頭痛
	HAFade(100, 0,true);
	HAFade(100, 0,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0131]
My head&.&.&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	CreateColorEX("絵色黒", 12000, "000000");
	Fade("絵色黒", 300, 1000, null, true);

	TemptationNoizSet("絵演黒蒼葉誘惑砂嵐覆",1102);
	TemptationAobaSet("絵演黒蒼葉誘惑",1100,Center,40,"cg/ev/l/ev900もう１人の蒼葉_l.jpg",2000,2000);

	CreateColorEX("絵演黒蒼葉誘惑黒隠", 1110, "000000");
	DrawTransition("絵演黒蒼葉誘惑黒隠", 0, 0, 500, 100, null, "cg/data/slide_05_00_0.png", true);

	$HALevel=0;
	Fade("絵演黒蒼葉誘惑黒隠", 0, 1000, null, true);
	Fade("絵演黒蒼葉誘惑", 0, 1000, null, true);
	TemptationNoizFade("絵演黒蒼葉誘惑砂嵐覆",0,null,true);
	Position("@絵演黒蒼葉誘惑", $TANx1, $TANy1);
	$HALevel=2;

	Wait(200);

	CreateSE("SE01","se人体_頭痛_痛む01");
	MusicStart("SE01",0,700,0,1000,null,false);
	Wait(300);
	TemptationAobaIn("絵色黒");
	TemptationAobaOut(200,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0133]
　――――　Destroy　――――

</PRE>
	SetTextM();
	TypeBeginF(150);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fade("絵演黒蒼葉誘惑砂嵐覆", 0, 1000, null, true);
	Position("@絵演黒蒼葉誘惑", $TANx1, $TANy1);
	CreateSE("SE01","se人体_頭痛_痛む01");
	MusicStart("SE01",0,700,0,1000,null,false);
	Wait(300);
	TemptationAobaIn("絵色黒");
	TemptationAobaOut(200,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0134]
　――――　Destroy　――――

</PRE>
	SetTextM();
	TypeBeginF(150);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0135]
A violent headache rushes in&, and I hear someone's voice&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	TemptationAobaSet("絵演黒蒼葉誘惑",1100,Center,-240,"cg/ev/m/ev900もう１人の蒼葉_m.jpg",1000,1000);
	Position("@絵演黒蒼葉誘惑", $TANx1, $TANy1);
	Fade("絵演黒蒼葉誘惑砂嵐覆", 0, 1000, null, true);
	Position("@絵演黒蒼葉誘惑", $TANx1, $TANy1);
	CreateSE("SE01","se人体_頭痛_痛む01");
	MusicStart("SE01",0,700,0,1000,null,false);
	Wait(300);
	TemptationAobaIn("絵色黒");
	TemptationAobaOut(100,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0136]
　――――　Quickly　――――

</PRE>
	SetTextM();
	TypeBeginF(150);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fade("絵演黒蒼葉誘惑砂嵐覆", 0, 1000, null, true);
	Position("@絵演黒蒼葉誘惑", $TANx1, $TANy1);
	CreateSE("SE01","se人体_頭痛_痛む01");
	MusicStart("SE01",0,700,0,1000,null,false);
	Wait(300);
	TemptationAobaIn("絵色黒");
	TemptationAobaOut(100,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0137]
　――――　Destroy　――――

</PRE>
	SetTextM();
	TypeBeginF(150);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
&.&.&.I don't want to&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	TemptationAobaSet("絵演黒蒼葉誘惑",1100,Center,-240,"cg/ev/m/ev900もう１人の蒼葉_m.jpg",1000,1000);
	Position("@絵演黒蒼葉誘惑", $TANx1, $TANy1);
	Fade("絵演黒蒼葉誘惑砂嵐覆", 0, 1000, null, true);
	Position("@絵演黒蒼葉誘惑", $TANx1, $TANy1);
	CreateSE("SE01","se人体_頭痛_痛む01");
	MusicStart("SE01",0,700,0,1000,null,false);
	Wait(300);
	TemptationAobaIn("絵色黒");
	TemptationAobaOut(100,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0141]
　――――　Destroy him　――――

</PRE>
	SetTextM();
	TypeBeginF(150);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0142]
No&.
Never&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	TemptationDelete("@絵演黒蒼葉誘惑黒隠");

	CreateSE("SE01","se人体_動作_衣擦れ03");
	MusicStart("SE01",0,700,0,1000,null,false);

	CreateTextureSP("絵ＥＶ110", 110, -269, -479, "cg/ev/l/ev124紅雀強姦未遂a_l.jpg");
	CreateTextureSP("絵ＥＶ111", 111, -279, -272, "cg/ev/m/ev124紅雀強姦未遂a_m.jpg");

	Fade("絵ＥＶ", 0, 0, null, true);
	Fade("絵演黒隠", 0, 0, null, true);
	Fade("絵色黒", 200, 0, null, true);

	Move("絵ＥＶ111", 1000, -162, -284, Dxl3, false);

	FadeDelete("絵色黒", 1000, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0143]
//【紅雀】
<voice name="紅雀" class="紅雀" src="voice/dm12/4000340a02">
"&.&.&.&.&."

{
	CreateSE("SE01","se人体_動作_衣擦れ16");
	MusicStart("SE01",0,700,0,1000,null,false);
}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm12/4000350a01">
"Ah&.&.&.!"

Koujaku starts to violently jack me off&.

It feels somewhat good&, but it's more mortifying than 
anything&.

No more&.&.&.

No more of this&.&.&.

This is just too awful&.&.&.!

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Move("絵ＥＶ110", 500, -269, -579, Dxl3, false);
	Move("絵ＥＶ111", 500, -162, -184, Dxl3, false);
	FadeDelete("絵ＥＶ111", 500, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0144]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm12/4000360a01">
"No&, stop it&.&.&.!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	CreateColorEX("絵色黒", 12000, "000000");
	Fade("絵色黒", 300, 1000, null, true);

	TemptationNoizSet("絵演黒蒼葉誘惑砂嵐覆",1102);
	TemptationAobaSet("絵演黒蒼葉誘惑",1100,Center,40,"cg/ev/l/ev900もう１人の蒼葉_l.jpg",2000,2000);

	CreateColorEX("絵演黒蒼葉誘惑黒隠", 1110, "000000");
	DrawTransition("絵演黒蒼葉誘惑黒隠", 0, 0, 500, 100, null, "cg/data/slide_05_00_0.png", true);

	$HALevel=0;
	Fade("絵演黒蒼葉誘惑黒隠", 0, 1000, null, true);
	Fade("絵演黒蒼葉誘惑", 0, 1000, null, true);
	TemptationNoizFade("絵演黒蒼葉誘惑砂嵐覆",0,null,true);
	Position("@絵演黒蒼葉誘惑", $TANx1, $TANy1);
	$HALevel=2;

	CreateSE("SE01","se人体_頭痛_痛む01");
	MusicStart("SE01",0,900,0,1000,null,false);
	Wait(300);
	TemptationAobaIn("絵色黒");
	TemptationAobaOut(200,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
　――――　Destroy　――――

</PRE>
	SetTextM();
	TypeBeginF(150);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fade("絵演黒蒼葉誘惑砂嵐覆", 0, 1000, null, true);
	Position("@絵演黒蒼葉誘惑", $TANx1, $TANy1);
	CreateSE("SE01","se人体_頭痛_痛む01");
	MusicStart("SE01",0,900,0,1000,null,false);
	Wait(300);
	TemptationAobaIn("絵色黒");
	TemptationAobaOut(200,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0151]
　――――　Destroy　――――

</PRE>
	SetTextM();
	TypeBeginF(150);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0152]
I don't want to destroy anything&.
But&, I&.&.&.

I'm going to at this rate&.
If this keeps going on&.

But I don't want to&. Why&.

I don't want this&.

Stop&.&.&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	Fade("絵演黒蒼葉誘惑砂嵐覆", 0, 1000, null, true);
	TemptationAobaSet("絵演黒蒼葉誘惑",1100,-501,205,"cg/ev/l/ev900もう１人の蒼葉_l.jpg",3000,3000);
	Position("@絵演黒蒼葉誘惑", $TANx1, $TANy1);
	DrawTransition("絵演黒蒼葉誘惑黒隠", 1, 0, 400, 100, null, "cg/data/slide_05_00_0.png", true);
	CreateSE("SE01","se人体_頭痛_痛む01");
	MusicStart("SE01",0,1200,0,1000,null,false);
	Wait(300);
	TemptationAobaIn("絵色黒");
	TemptationAobaOut(200,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0159]
　――――　Destroy　――――

</PRE>
	SetTextM();
	TypeBeginF(150);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	TemptationAobaSet("絵演黒蒼葉誘惑",1100,-1415,-670,"cg/ev/l/ev900もう１人の蒼葉_l.jpg",2000,2000);
	Position("@絵演黒蒼葉誘惑", $TANx1, $TANy1);
	DrawTransition("絵演黒蒼葉誘惑黒隠", 1, 0, 250, 100, null, "cg/data/slide_05_00_0.png", true);
	Fade("絵演黒蒼葉誘惑砂嵐覆", 0, 1000, null, true);
	Position("@絵演黒蒼葉誘惑", $TANx1, $TANy1);
	CreateSE("SE01","se人体_頭痛_痛む01");
	MusicStart("SE01",0,1400,0,1000,null,false);
	Wait(300);
	TemptationAobaIn("絵色黒");
	TemptationAobaOut(200,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160]
　――――　Destroy him　――――

</PRE>
	SetTextM();
	TypeBeginF(150);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0161]
Stop it&.&.&.!

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	SetVolumeEX("SE*", 1000, 0, null);
	SetVolumeEX("@dm*", 1000, 0, null);

	TemptationDelete("@絵演黒蒼葉誘惑黒隠");

	CreateTextureSP("絵ＥＶ111", 111, -269, -579, "cg/ev/l/ev124紅雀強姦未遂b_l.jpg");
	FadeDelete("絵色黒", 500, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0162]
//※力発動
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm12/4000370a01">
"&.&.&.Stop it&, Koujaku!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

$HALevel=2;

	CreateSE("SE01","se擬音_効果_力蒼葉01");
	MusicStart("SE01",0,700,0,1000,null,false);

	CreateColorSPadd("絵色白", 2000, "FFFFFF");
	Fade("絵色白", 50, 0, null, true);
	Wait(10);
	Fade("絵色白", 50, 1000, null, true);
	FadeDelete("絵色白", 100, null, true);

	CreatePlainSP("絵板写", 990);
	Zoom("絵板写", 1000, 1500, 1500, null, false);
	FadeDelete("絵板写", 300, null, true);
	FadeDelete("絵ＥＶ*", 300, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0163]
I muster enough strength to scream&, and for some reason 
Koujaku stops&.

But why&, just up until a second ago he wasn't listening&.&.&.

I focus on Koujaku's eyes&, and he finally recognizes me&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreateSE("SE01","se物体_ベッド_寝る01");
	MusicStart("SE01",0,700,0,1000,null,false);

	CreateTextureEX("絵背景20", 20, 0, -500, "cg/bg/l/bg302011_5_グリッター部屋01_l.jpg");
	Fade("絵背景20", 500, 1000, null, true);

	OnBG(10,"bg302011_5_グリッター部屋01");
	FadeBG(0,true);

	Fw("fw紅雀_通常_sad");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0164]
//【紅雀】
<voice name="紅雀" class="紅雀" src="voice/dm12/4000380a02">
"&.&.&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0169]
Koujaku looks down to me&, and becomes startled when he 
sees the state I'm in&.

His mouth just opens and closes&, as if he's trying to spit words out&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_rage");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0170]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm12/4000390a01">
"&.&.&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreateSE("SE01","se人体_動作_衣擦れ25");
	MusicStart("SE01",0,700,0,800,null,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0171]
The face I just saw&.&.&.
I raise my now free right hand up&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreateSE("SE01","se戦闘_打撃_ヒット高01");
	MusicStart("SE01",0,700,0,800,null,false);

	CreatePlainSP("絵板写", 990);
	Shake("絵板写", 200, 20, 0, 0, 0, 500, null, true);
	Delete("絵板写");

//	Fw("fw紅雀_通常_normal");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0172]
//【紅雀】
<voice name="紅雀" class="紅雀" src="voice/dm12/4000400a02">
"&.&.&.!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0173]
I turn away and punch Koujaku&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	SoundPlay("@dm015",0,450,true);

	Fw("fw蒼葉_通常_rage");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0174]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm12/4000410a01">
"&.&.&.!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0175]
I'm taken aback just from hitting him&.

Shit&.&.&.
My hand just happened to slip&. Sorry&.

I stop before I can&.&.&. even say it&.

My right hand shivers from the hit&, so I clutch onto it 
with my free one&.

I'm unsure why&, but I just hit him&.

I was just about to explode&, and my body just&.&.&.

I want to apologize&.
But I can't&.

He can take&.&.&. at least that much&.

Koujaku&.&.&.
Why did you do that&.&.&.?

A number of questions swirl in my head&, but none of them 
come out&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	FadeDelete("絵背景20", 500, null, true);

	St("C",740, @0,@0,"st紅雀_通常_think");
	FadeSt("C",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0180]
I look at Koujaku for some answer&.

Whatever is fine&. I just want to hear him say something&.

Whether he's angry or about to complain&.

Anything is fine&, so just say something&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0190]
&.&.&.But&.

Koujaku pushes his lips together&, and doesn't say anything&.

The cheek I just hit slowly turns red&.

The unwanted silence just piles up&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_pain2");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0191]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm12/4000430a01">
"&.&.&. Why&.&.&.Why?"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0192]
I start to shiver&, about to cry at the end of my sentence&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_pain2");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0193]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm12/4000440a01">
"&.&.&.Why aren't you saying anything&.&.&.!?"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	St("C",740, @0,@0,"st紅雀_通常_think2");
	FadeSt("C",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0194]
The sadness keeps pooling up inside of me&.

No matter what I do&, I can't get through to him&.
I can't understand&. I'm unable to&.

We separate&.&.&. just like that&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreateSE("SE01","se人体_動作_衣擦れ01");
	MusicStart("SE01",0,400,0,1400,null,false);

	CreateSE("SE02","se人体_足音_歩く06");
	MusicStart("SE02",0,700,0,1000,null,false);

	DeleteAllSt(200,true);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0200]
Koujaku makes an awful frown and closes his eyes; he then 
slowly turns his back to me&.

{
	CreateSE("SE02","se物体_ドア木_扉開く01");
	MusicStart("SE02",0,700,0,1000&,null,false);
}

And like that&, he simply leaves the room without a word&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	if($RECRIB_PLAY==1){//回想時
		TextBoxDelete(0);
		SetVolumeEX("@dm*", 1000, 0, null);
		ClearFadeAll(1000, true);Wait(2000);
	}

//※次ファイル["dm1250.nss"]

}
