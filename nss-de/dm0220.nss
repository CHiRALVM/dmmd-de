//<continuation number="110">
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


scene dm0220.nss_MAIN
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
	#ev022蒼葉音楽効果=true;
	#ev022蒼葉音楽効果a=true;

	#bg104001_3_蒼葉宅前通り玄関消灯=true;
	#bg210011_2_暴露海と砂浜=true;
	#bg104011_5_蒼葉宅玄関消灯=true;
	#bg209011_2_暴露蒼葉教会外観見上げ=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;
	$GameName = "dm0230.nss";

}


scene dm0220.nss
{

	//■シーンの頭に必ず記述
	$スクリプトバージョン = " $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();


//―――――――――――――――――――――――――――――――――――――――

	PrintBG("上背景", 30000);

	OnBG(10,"bg104001_3_蒼葉宅前通り玄関消灯");
	FadeBG(0,true);

	FadeDelete("上背景", 1000, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
Nachdem ich vor dem Laden ummaechtig wurde&.&.&.

Ren hat Haga-san gerufen und er hat mich in den Laden gebracht&.

Obwohl ich den Beutel&, welchen ich ausliefern sollte&, verloren hatte&, 
sagte Haga-san mit seinem ueblichen Laecheln das ich nach Hause gehen koenne&.

Ich entschied mich dazu mich auf Haga-san's Freundlichkeit zu verlassen und ging
gehorsam nach Hause&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	CreateSE("SE01","se物体_蒼葉宅玄関_扉開くゆっくり01");
	MusicStart("SE01",0,700,0,1000,null,false);

	SetVolumeEX("SE*", 3000, 0, null);

	CreateColorSP("絵黒幕", 25000, "BLACK");

	DrawTransition("絵黒幕", 1000, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);

	CreateTextureSP("絵背景100", 100, Center, Middle, "cg/bg/bg104011_5_蒼葉宅玄関消灯.jpg");

	DrawDelete("絵黒幕", 1000, 100, null, "blind_01_00_1", true);


	OnBG(10,"bg104011_5_蒼葉宅玄関");
	FadeBG(0,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0011]
Es sieht danach aus als waere Grossmutter noch nicht zu Hause und
es ist dunkel im Haus&.

{
	CreateSE("SE01","se物体_蒼葉宅照明_点灯01");
	MusicStart("SE01",0,700,0,1000,null,false);

	FadeDelete("絵背景100", 200, null, true);
}
Ich schalte das Licht im Flur an&, betrete den Korridor und laufe in die Kueche&. 
Ich nehme eine Pille gegen meine Kopfschmerzen vom Regal und trinke mehr Wasser
als sonst&.

Normalerweise sollte man die Pille nach einer Mahlzeit zu sich nehmen&, 
aber es ist mir momentan wichtiger das die Kopfschmerzen aufhoeren&.

{
	CreateSE("SE01","se物体_蒼葉宅階段_登る通常01");
	MusicStart("SE01",0,700,0,1000,null,false);
}
Es mag daran liegen&, dass ich erleichtert bin zu Hause zu sein&, aber ich fuehle mich 
ploetzlich so muede&, dass es schwer wird zu laufen&.

Ich will sofort einschlafen&, aber bahne mir trotzdem meinen Weg nach oben in den 
zweiten Stock&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	SetVolumeEX("SE*", 2000, 0, null);

	OnBG(10,"bg104031_5_蒼葉宅自室");
	FadeBG(1000,true);

	CreateSE("SE01","se物体_ベッド_倒れ込む");
	MusicStart("SE01",0,700,0,1000,null,false);

	CreatePlainSP("絵板写", 990);
	Shake("絵板写", 200, 0, 15, 0, 0, 500, null, true);
	Delete("絵板写");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0012]
Ich nehme Ren aus der Tasche und lege ihn aufs Bett&. 
Ich ziehe meine Jacke aus und lege mich neben ihn hin&.

Hch&.&.&.

Ich habe den Beutel den ich ausliefern sollte verloren und bin
dann sogar frueher nach Hause gegangen&.&.&.

Haga-sans Laecheln und Fuersorge waren grossartig und ich fuehle mich allein beim
daran denken schuldig&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	SoundPlay("@dm012",0,450,true);

	Fw("fw蒼葉_通常_worry");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm02/2000010a01">
"Was mache ich&.&.&.?"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0021]
Alles nur wegen dem Hasenkopf&.

Und&.&.&. Rhyme&.

Es ist es wirklich wert danach suechtig zu werden?

{
	CreateSE("SE01","se物体_ベッド_寝る01");
	MusicStart("SE01",0,700,0,1200,null,false);
}
Ich setze mich langsam auf und errinere mich an das Rhyme Feld&.&.&.
und ich fuehle mich nur schlechter&.

Ich denke die Medizin wirkt noch nicht&, da die Kopfschmerzen immer noch da sind&. 
Ich werde etwas anderes ausprobieren&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	CreateSE("SE01","se人体_動作_抱く01");
	MusicStart("SE01",0,600,0,1400,null,false);

	Wait(500);

	CreateSE("SE02","se物体_ベッド_寝る01");
	MusicStart("SE02",0,600,0,1200,null,false);

	CreateTextureEX("絵ＥＶ120", 120, -957, -114, "cg/ev/l/ev022蒼葉音楽効果_l.jpg");
	CreateTextureEX("絵ＥＶ102", 102, -955, -24, "cg/ev/l/ev022蒼葉音楽効果a_l.jpg");
	CreateTextureEX("絵ＥＶ101", 101, Center, Middle, "cg/ev/ev022蒼葉音楽効果a.jpg");
	CreateTextureEX("絵ＥＶ100", 100, Center, Middle, "cg/ev/ev022蒼葉音楽効果.jpg");
	Fade("絵ＥＶ100", 1000, 1000, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
Ich nehme meine Kopfhoerer&, die ich mit meiner Jacke aufs Bett geworfen habe
und ziehe sie auf&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	Fade("絵ＥＶ101", 800, 1000, null, true);
	Delete("絵ＥＶ100");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0031]
Ich waehle auf meinem Coil meine Lieblingsmusik aus und schliesse meine Augen
und lasse meinen Koerper mit der Musik fliessen&.

Immer wenn ich mich unwohl fuehle&, hilft mir das&, mich wieder zu entspannen&.

Ich werde in meine Welt der Musik hineingezogen&.

//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm02/2000020a01">
"&.&.&.Mn&."

Der Rhythmus und das Tempo der Musik&, meine eigenes Atmen und mein Herzschlag&.

Sie stimmen sich langsam ab und verschmelzen schliesslich zu einer wogenden Welle&.

//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm02/2000030a01">
"Ha&, &.&.&.&.&.&."

Dieser Whirlpool aus Melodien umgibt mich und streichelt meinen Koerper zaertlich&.

Der Klang durchdringt meine Haut&, vermischt sich mit meinem Blut und fliesst
durch mich hindurch&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreateSE("SE01","se人体_動作_衣擦れ05");
	MusicStart("SE01",0,600,0,800,null,false);
	SetVolumeEX("SE*", 1000, 0, null);

	Move("絵ＥＶ102", 1000, -955, -114, Dxl1, false);
	Fade("絵ＥＶ102", 1000, 1000, null, true);
	Delete("絵ＥＶ101");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm02/2000040a01">
"&.&.&.Ah&.&.&."

Lichter aller Farben tanzen in meinem Kopf wie ein weicher Film&.

Es ist angenehm und ich beruhige mich langsam&. Ich sage mir selbst 
das nur ich hier bin&, ein Ort nur fuer mich&. Es ist friedlich&.

//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm02/2000050a01">
"Ahhh&.&.&."

{
	CreateTextureEX("絵背景110", 110, 0, -556, "cg/bg/l/bg104031_5_蒼葉宅自室_l.jpg");
	Move("絵背景110", 500, 0, -572, Dxl1, false);
	Fade("絵背景110", 500, 1000, null, true);

	Delete("絵ＥＶ102");
}
Der Mistston meiner Kopfschmerzen und die Gerauesche in meinem Koerper sind weit 
entfernt und nur das leise Gerauesch meiner eigenen Atmung bleibt&.

Es war als waere ich in eine Welle gestossen worden&, die alle Teile meines Koerpers
durchdringt&. Ein entferntes Atmen entspringt gelegentlich meinen Lippen&.

So angenehm&.&.&.

Ich habe das Gefuehl das ich heute tiefer einsinke als sonst&.

Der Schmerz und aehnliches sind verschwunden&.

Falls ich so einschlafe&, muss ich nur darauf warten das ich zaertlich geweckt werde&.

Falls ich so einschlafe&.&.&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreateSE("SE01","se物体_物_鳴る01");
	MusicStart("SE01",0,450,0,2000,null,false);

	Move("絵ＥＶ120", 500, -957, -101, Dxl1, false);
	Fade("絵ＥＶ120", 500, 1000, null, true);
	Delete("絵背景110");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm02/2000060a01">
"&.&.&.&.&.?"

Ein Gerauesch&.&.&.?

Ich oeffne meine Augen leicht&, aber mit meinem verschwommenen Bewusstsein&, kann 
ich nicht sicher sagen was es ist&.

&.&.&.&.&.&.&.&.Tja&, was auch immer&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	ClearFadeAll(2000, true);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
Ich versuche erst gar nicht einen klaren Gedanken zu fassen und schliesse meine Augen 
wieder&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	SetVolumeEX("@dm*", 5000, 0, null);

	ClearFadeAll(2000, true);
	CreateColorSP("絵色黒", 5000, "000000");

	Wait(1000);

	CreateColorSPadd("絵色白", 3000, "FFFFFF");

	CreateTextureSP("絵背景101", 101, Center, -766, "cg/bg/bg209011_2_暴露蒼葉教会外観見上げ.jpg");
	SetShade("絵背景101", NOMORE);
	CreateTextureSP("絵背景100", 100, -212, -559, "cg/bg/l/bg210011_2_暴露海と砂浜_l.jpg");
	SetShade("絵背景100", NOMORE);

	CreateSE("SE01","se環境_自然_波01L");
	MusicStart("SE01",4000,400,0,1000,null,true);

	Wait(1500);

	FadeDelete("絵色黒", 1500, null, true);

	Fade("絵色白", 2000, 500, null, true);

	CreateVOICE("蒼葉","dm02/2000070b01");
	MusicStart("蒼葉",5000,300,0,1000,null,true);

	CreateVOICE("蓮","dm02/2000080c03");
	MusicStart("蓮",5000,300,0,1000,null,true);

	FadeDelete("絵背景101", 1000, null, true);
	Fade("絵色白", 3000, 100, null, true);

	Wait(1500);

	SetVolumeEX("SE01", 3000, 300, null);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0061]
Dieser Ort&.&.&. Ich habe ihn schon zuvor gesehen&.

Ich kenne ihn gut&.

Ich sitze an einem sandigen Strand und rede mit einer bestimmten Person&.

Ich hege seine Worte so als wuerden sie strahlen&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	Fade("絵色白", 1000, 1000, null, true);

	CreateTextureSP("絵ＥＶ200", 200, -732, -406, "cg/ev/l/evf10記憶の中の父の影_l.jpg");
	CreateTextureEXadd("絵ＥＶ201", 201, -732, -406, "cg/ev/l/evf10記憶の中の父の影_l.jpg");
	LastfireOGMIX("@絵ＥＶ201","プロセスファイヤー");

	Fade("絵色白", 2000, 100, null, true);

	Wait(1000);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0062]
//※音声：音声加工をして使用（ほとんど聞こえない感じに）
//【ナイン】
<voice name="ナイン" class="ナイン" src="voice/dm02/2000090b17">
"&.&.&.&.&."

//「怖くないから、自分の世界から出ておいで」

//※音声：音声加工をして使用（ほとんど聞こえない感じに）
//【ナイン】
<voice name="ナイン" class="ナイン" src="voice/dm02/2000100b17">
"&.&.&.&.&."

//「大丈夫。世界はいつでも壊すことができるから」

//※音声：音声加工をして使用（ほとんど聞こえない感じに）
//【ナイン】
<voice name="ナイン" class="ナイン" src="voice/dm02/2000110b17">
"&.&.&.&.&."

//「壊して、そのあとにまた新たな世界を作り出せばいい。可能性に終わりなんてないんだ」
//Hihi, it's nice that the words actually are written here&. Beautiful&.

&.&.&.Was hat er wieder gesagt? Ich kann mich nicht erinnern&.

Was er gesagt hat&, war wichtig&.&.&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

Wait(8);
	SetVolumeEX("SE*", 3000, 0, null);
	SetVolumeEX("蒼葉", 3000, 0, null);
	SetVolumeEX("蓮", 3000, 0, null);
	Fade("絵色白", 3000, 1000, null, true);

//※夢終わり

	ClearFadeAll(3000, true);

	Wait(4000);

//※次ファイル["dm0230.nss"]

}
