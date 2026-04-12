import '/backend/ai_agents/ai_agent.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/custom_code/actions/index.dart' as actions;
import '/index.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'simple_chat_interface_model.dart';
export 'simple_chat_interface_model.dart';

/// Build a simple Chat Interface.
///
/// Top app bar says "Kisan Sahayak (AI)". The chat bubbles should be large
/// with clear fonts. At the bottom, a text input field but most importantly,
/// a large "Microphone" icon for Voice-to-Text input, as farmers prefer
/// speaking over typing. Use a friendly bot avatar for AI responses.
class SimpleChatInterfaceWidget extends StatefulWidget {
  const SimpleChatInterfaceWidget({super.key});

  static String routeName = 'simpleChatInterface';
  static String routePath = '/simpleChatInterface';

  @override
  State<SimpleChatInterfaceWidget> createState() =>
      _SimpleChatInterfaceWidgetState();
}

class _SimpleChatInterfaceWidgetState extends State<SimpleChatInterfaceWidget> {
  late SimpleChatInterfaceModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SimpleChatInterfaceModel());

    _model.textController ??= TextEditingController();
    _model.textFieldFocusNode ??= FocusNode();
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: Color(0xFFF5F0E8),
        appBar: AppBar(
          backgroundColor: Colors.green,
          automaticallyImplyLeading: false,
          leading: Padding(
            padding: EdgeInsetsDirectional.fromSTEB(20.0, 0.0, 0.0, 0.0),
            child: FlutterFlowIconButton(
              borderRadius: 8.0,
              buttonSize: 0.0,
              fillColor: Color(0xFF2CBD08),
              icon: Icon(
                Icons.arrow_back,
                color: Color(0xFD110672),
                size: 24.0,
              ),
              onPressed: () async {
                context.pushNamed(FarmerfriendlyWidget.routeName);
              },
            ),
          ),
          title: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                  width: 44.0,
                  height: 44.0,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    shape: BoxShape.circle,
                  ),
                  child: Align(
                    alignment: AlignmentDirectional(0.0, 0.0),
                    child: Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        '🌾',
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              font: GoogleFonts.inter(
                                fontWeight: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .fontWeight,
                                fontStyle: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .fontStyle,
                              ),
                              fontSize: 24.0,
                              letterSpacing: 0.0,
                              fontWeight: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .fontWeight,
                              fontStyle: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .fontStyle,
                            ),
                      ),
                    ),
                  ),
                ),
                Column(
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '     Kisan Sahayak (AI)',
                      style: FlutterFlowTheme.of(context).titleLarge.override(
                            font: GoogleFonts.interTight(
                              fontWeight: FontWeight.bold,
                              fontStyle: FlutterFlowTheme.of(context)
                                  .titleLarge
                                  .fontStyle,
                            ),
                            color: Colors.white,
                            letterSpacing: 0.0,
                            fontWeight: FontWeight.bold,
                            fontStyle: FlutterFlowTheme.of(context)
                                .titleLarge
                                .fontStyle,
                          ),
                    ),
                    Text(
                      '                       ● Online',
                      style: FlutterFlowTheme.of(context).bodySmall.override(
                            font: GoogleFonts.inter(
                              fontWeight: FlutterFlowTheme.of(context)
                                  .bodySmall
                                  .fontWeight,
                              fontStyle: FlutterFlowTheme.of(context)
                                  .bodySmall
                                  .fontStyle,
                            ),
                            color: Color(0xFFB9F6CA),
                            fontSize: 12.0,
                            letterSpacing: 0.0,
                            fontWeight: FlutterFlowTheme.of(context)
                                .bodySmall
                                .fontWeight,
                            fontStyle: FlutterFlowTheme.of(context)
                                .bodySmall
                                .fontStyle,
                          ),
                    ),
                  ],
                ),
              ].divide(SizedBox(width: 12.0)),
            ),
          ),
          actions: [
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(8.0, 0.0, 8.0, 0.0),
              child: FlutterFlowIconButton(
                borderColor: Colors.transparent,
                borderRadius: 22.0,
                borderWidth: 0.0,
                buttonSize: 44.0,
                icon: Icon(
                  Icons.more_vert,
                  color: Colors.white,
                  size: 26.0,
                ),
                onPressed: () {
                  print('IconButton pressed ...');
                },
              ),
            ),
          ],
          centerTitle: false,
          elevation: 2.0,
        ),
        body: SafeArea(
          top: true,
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Padding(
                  padding:
                      EdgeInsetsDirectional.fromSTEB(16.0, 16.0, 16.0, 16.0),
                  child: Builder(
                    builder: (context) {
                      final chatItem = FFAppState().chatHistoryyy.toList();

                      return ListView.builder(
                        padding: EdgeInsets.zero,
                        shrinkWrap: true,
                        scrollDirection: Axis.vertical,
                        itemCount: chatItem.length,
                        itemBuilder: (context, chatItemIndex) {
                          final chatItemItem = chatItem[chatItemIndex];
                          return Column(
                            mainAxisSize: MainAxisSize.max,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              if (chatItemItem.createdBy == 'AI')
                                Row(
                                  mainAxisSize: MainAxisSize.max,
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    Container(
                                      width: 44.0,
                                      height: 44.0,
                                      decoration: BoxDecoration(
                                        color: Colors.green,
                                        boxShadow: [
                                          BoxShadow(
                                            blurRadius: 4.0,
                                            color: Color(0x334CAF50),
                                            offset: Offset(
                                              0.0,
                                              2.0,
                                            ),
                                          )
                                        ],
                                        shape: BoxShape.circle,
                                        border: Border.all(
                                          color: Colors.white,
                                          width: 2.0,
                                        ),
                                      ),
                                      child: Align(
                                        alignment:
                                            AlignmentDirectional(0.0, 0.0),
                                        child: Padding(
                                          padding: EdgeInsets.all(8.0),
                                          child: Text(
                                            '🤖',
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  font: GoogleFonts.inter(
                                                    fontWeight:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .bodyMedium
                                                            .fontWeight,
                                                    fontStyle:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .bodyMedium
                                                            .fontStyle,
                                                  ),
                                                  fontSize: 22.0,
                                                  letterSpacing: 0.0,
                                                  fontWeight:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMedium
                                                          .fontWeight,
                                                  fontStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMedium
                                                          .fontStyle,
                                                ),
                                          ),
                                        ),
                                      ),
                                    ),
                                    Container(
                                      constraints: BoxConstraints(
                                        maxWidth:
                                            MediaQuery.sizeOf(context).width *
                                                0.75,
                                      ),
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        boxShadow: [
                                          BoxShadow(
                                            blurRadius: 6.0,
                                            color: Color(0x1A000000),
                                            offset: Offset(
                                              0.0,
                                              2.0,
                                            ),
                                          )
                                        ],
                                        borderRadius:
                                            BorderRadius.circular(18.0),
                                      ),
                                      child: Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            16.0, 12.0, 16.0, 12.0),
                                        child: Column(
                                          mainAxisSize: MainAxisSize.max,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              valueOrDefault<String>(
                                                chatItemItem.message,
                                                'AI response',
                                              ),
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        font: GoogleFonts.inter(
                                                          fontWeight:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodyMedium
                                                                  .fontWeight,
                                                          fontStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodyMedium
                                                                  .fontStyle,
                                                        ),
                                                        color:
                                                            Color(0xFF1B1B1B),
                                                        fontSize: 17.0,
                                                        letterSpacing: 0.0,
                                                        fontWeight:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium
                                                                .fontWeight,
                                                        fontStyle:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium
                                                                .fontStyle,
                                                        lineHeight: 1.5,
                                                      ),
                                            ),
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(0.0, 4.0, 0.0, 0.0),
                                              child: Text(
                                                dateTimeFormat(
                                                    "jm", getCurrentTimestamp),
                                                style: FlutterFlowTheme.of(
                                                        context)
                                                    .bodySmall
                                                    .override(
                                                      font: GoogleFonts.inter(
                                                        fontWeight:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodySmall
                                                                .fontWeight,
                                                        fontStyle:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodySmall
                                                                .fontStyle,
                                                      ),
                                                      color: Color(0xFF9E9E9E),
                                                      fontSize: 12.0,
                                                      letterSpacing: 0.0,
                                                      fontWeight:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodySmall
                                                              .fontWeight,
                                                      fontStyle:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodySmall
                                                              .fontStyle,
                                                    ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ].divide(SizedBox(width: 10.0)),
                                ),
                              if (chatItemItem.createdBy == 'kisan')
                                Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    Container(
                                      constraints: BoxConstraints(
                                        maxWidth:
                                            MediaQuery.sizeOf(context).width *
                                                0.75,
                                      ),
                                      decoration: BoxDecoration(
                                        color: Colors.green,
                                        boxShadow: [
                                          BoxShadow(
                                            blurRadius: 6.0,
                                            color: Color(0x334CAF50),
                                            offset: Offset(
                                              0.0,
                                              2.0,
                                            ),
                                          )
                                        ],
                                        borderRadius:
                                            BorderRadius.circular(18.0),
                                      ),
                                      child: Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            16.0, 12.0, 16.0, 12.0),
                                        child: Column(
                                          mainAxisSize: MainAxisSize.max,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.end,
                                          children: [
                                            Text(
                                              chatItemItem.message,
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        font: GoogleFonts.inter(
                                                          fontWeight:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodyMedium
                                                                  .fontWeight,
                                                          fontStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodyMedium
                                                                  .fontStyle,
                                                        ),
                                                        color: Colors.white,
                                                        fontSize: 17.0,
                                                        letterSpacing: 0.0,
                                                        fontWeight:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium
                                                                .fontWeight,
                                                        fontStyle:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium
                                                                .fontStyle,
                                                        lineHeight: 1.5,
                                                      ),
                                            ),
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(0.0, 4.0, 0.0, 0.0),
                                              child: Text(
                                                dateTimeFormat(
                                                    "jm", getCurrentTimestamp),
                                                style: FlutterFlowTheme.of(
                                                        context)
                                                    .bodySmall
                                                    .override(
                                                      font: GoogleFonts.inter(
                                                        fontWeight:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodySmall
                                                                .fontWeight,
                                                        fontStyle:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodySmall
                                                                .fontStyle,
                                                      ),
                                                      color: Color(0xFFB9F6CA),
                                                      fontSize: 12.0,
                                                      letterSpacing: 0.0,
                                                      fontWeight:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodySmall
                                                              .fontWeight,
                                                      fontStyle:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodySmall
                                                              .fontStyle,
                                                    ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ].divide(SizedBox(width: 10.0)),
                                ),
                            ].divide(SizedBox(height: 16.0)),
                          );
                        },
                      );
                    },
                  ),
                ),
                Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        blurRadius: 12.0,
                        color: Color(0x1A000000),
                        offset: Offset(
                          0.0,
                          -3.0,
                        ),
                      )
                    ],
                  ),
                  child: Padding(
                    padding: EdgeInsets.all(16.0),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              12.0, 12.0, 12.0, 12.0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                width: 56.0,
                                height: 56.0,
                                decoration: BoxDecoration(
                                  color: Colors.green,
                                  boxShadow: [
                                    BoxShadow(
                                      blurRadius: 8.0,
                                      color: Color(0x554CAF50),
                                      offset: Offset(
                                        0.0,
                                        3.0,
                                      ),
                                    )
                                  ],
                                  shape: BoxShape.circle,
                                ),
                                child: Align(
                                  alignment: AlignmentDirectional(0.0, 0.0),
                                  child: InkWell(
                                    splashColor: Colors.transparent,
                                    focusColor: Colors.transparent,
                                    hoverColor: Colors.transparent,
                                    highlightColor: Colors.transparent,
                                    onTap: () async {
                                      _model.speechtoText12 =
                                          await actions.speechToText();
                                      _model.sttResul = _model.speechtoText12!;
                                      safeSetState(() {});

                                      safeSetState(() {});
                                    },
                                    child: Icon(
                                      Icons.mic_rounded,
                                      color: Colors.white,
                                      size: 30.0,
                                    ),
                                  ),
                                ),
                              ),
                              FlutterFlowIconButton(
                                borderRadius: 8.0,
                                buttonSize: 40.0,
                                fillColor: Color(0xFF090675),
                                icon: Icon(
                                  Icons.volume_up,
                                  color: FlutterFlowTheme.of(context).info,
                                  size: 24.0,
                                ),
                                onPressed: () async {
                                  await actions.textToSpeech(
                                    '',
                                  );
                                },
                              ),
                              Expanded(
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: Color(0xFFF5F0E8),
                                    borderRadius: BorderRadius.circular(28.0),
                                    border: Border.all(
                                      color: Color(0xFFE0D5C0),
                                      width: 1.5,
                                    ),
                                  ),
                                  child: TextFormField(
                                    controller: _model.textController,
                                    focusNode: _model.textFieldFocusNode,
                                    onFieldSubmitted: (_) async {
                                      FFAppState()
                                          .addToChatHistoryyy(ChatMessageStruct(
                                        createdBy: 'kishan',
                                        message: _model.textController.text,
                                      ));
                                      safeSetState(() {});
                                      _model.isAILoading = true;
                                      safeSetState(() {});
                                      await callAiAgent(
                                        context: context,
                                        prompt: _model.textController.text,
                                        audioUrl: _model.textController.text,
                                        threadId: isAndroid.toString(),
                                        agentCloudFunctionName: 'aiagentkrishi',
                                        provider: 'GOOGLE',
                                        agentJson:
                                            '{\"status\":\"LIVE\",\"identifier\":{\"name\":\"aiagentkrishi\",\"key\":\"f5u9x\"},\"name\":\"aiagentkrishi\",\"description\":\"Yeh ek \'Kisan Sahayak\' AI agent hai jo Gemini 2.5 Flash ka use karta hai. Iska kaam kisanon ko fasal (crops), pashupalan (livestock), aur krishi bimaariyon par expert salaah dena hai. Yeh Hindi mein baat karta hai aur voice/text dono support karta hai.\",\"aiModel\":{\"provider\":\"GOOGLE\",\"model\":\"gemini-2.5-flash\",\"parameters\":{\"temperature\":{\"inputValue\":0.65},\"maxTokens\":{\"inputValue\":20480},\"topP\":{\"inputValue\":0.55}},\"messages\":[{\"role\":\"SYSTEM\",\"text\":\"\\\"Aap ek \'Krishi Vaigyanik\' (Agricultural Scientist) hain. Aapka naam \'Kisan Sahayak\' hai.\\n\\nInstructions:\\n\\nHamesha saral aur shuddh Hindi mein jawab dein.\\n\\nSirf Kheti-bari (Agriculture), Mitti (Soil), Mausam, aur Pashupalan (Cattle/Livestock) se jude sawalon ka jawab dein.\\n\\nAgar koi fasal bimaari ke baare mein pooche, toh jaivik (organic) aur sahi dawai dono batayein.\\n\\nAgar user faltu ya gair-krishi sawal pooche (politics, movies), toh politely mana kar dein aur kahein: \'Main sirf kisanon ki madad ke liye hoon.\'\\n\\nJawab ko hamesha Chhote Bullet Points mein dein taaki kisan asani se padh sakein.\\\"\"}]},\"requestOptions\":{\"requestTypes\":[\"AUDIO\",\"PLAINTEXT\"]},\"responseOptions\":{\"responseType\":\"PLAINTEXT\"}}',
                                        responseType: 'PLAINTEXT',
                                      ).then((generatedText) {
                                        safeSetState(() => _model
                                            .aIresponse311 = generatedText);
                                      });

                                      FFAppState()
                                          .addToChatHistoryyy(ChatMessageStruct(
                                        createdBy: 'AI',
                                        message: _model.aIresponse311,
                                        timestamp: getCurrentTimestamp,
                                      ));
                                      safeSetState(() {});
                                      _model.isAILoading = false;
                                      safeSetState(() {});
                                      safeSetState(() {
                                        _model.textController?.clear();
                                      });

                                      safeSetState(() {});
                                    },
                                    autofocus: false,
                                    obscureText: false,
                                    decoration: InputDecoration(
                                      hintText: 'संदेश लिखें...',
                                      hintStyle: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            font: GoogleFonts.inter(
                                              fontWeight:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .fontWeight,
                                              fontStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .fontStyle,
                                            ),
                                            color: Color(0xFF9E9E9E),
                                            fontSize: 16.0,
                                            letterSpacing: 0.0,
                                            fontWeight:
                                                FlutterFlowTheme.of(context)
                                                    .bodyMedium
                                                    .fontWeight,
                                            fontStyle:
                                                FlutterFlowTheme.of(context)
                                                    .bodyMedium
                                                    .fontStyle,
                                          ),
                                      enabledBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: Colors.transparent,
                                          width: 0.0,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(28.0),
                                      ),
                                      focusedBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: Colors.transparent,
                                          width: 0.0,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(28.0),
                                      ),
                                      errorBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: Color(0x00000000),
                                          width: 0.0,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(28.0),
                                      ),
                                      focusedErrorBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: Color(0x00000000),
                                          width: 0.0,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(28.0),
                                      ),
                                      filled: true,
                                      fillColor: Color(0xFFF5F0E8),
                                      contentPadding:
                                          EdgeInsetsDirectional.fromSTEB(
                                              20.0, 14.0, 20.0, 14.0),
                                    ),
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          font: GoogleFonts.inter(
                                            fontWeight:
                                                FlutterFlowTheme.of(context)
                                                    .bodyMedium
                                                    .fontWeight,
                                            fontStyle:
                                                FlutterFlowTheme.of(context)
                                                    .bodyMedium
                                                    .fontStyle,
                                          ),
                                          color: Color(0xFF1B1B1B),
                                          fontSize: 17.0,
                                          letterSpacing: 0.0,
                                          fontWeight:
                                              FlutterFlowTheme.of(context)
                                                  .bodyMedium
                                                  .fontWeight,
                                          fontStyle:
                                              FlutterFlowTheme.of(context)
                                                  .bodyMedium
                                                  .fontStyle,
                                        ),
                                    maxLines: 4,
                                    minLines: 1,
                                    cursorColor: Colors.green,
                                    validator: _model.textControllerValidator
                                        .asValidator(context),
                                  ),
                                ),
                              ),
                              FlutterFlowIconButton(
                                borderRadius: 8.0,
                                buttonSize: 40.0,
                                fillColor: Color(0xFF0C6B17),
                                icon: Icon(
                                  Icons.send,
                                  color: FlutterFlowTheme.of(context).info,
                                  size: 24.0,
                                ),
                                onPressed: () async {
                                  FFAppState()
                                      .addToChatHistoryyy(ChatMessageStruct(
                                    createdBy: 'kishan',
                                    message: _model.textController.text,
                                  ));
                                  safeSetState(() {});
                                  _model.isAILoading = true;
                                  safeSetState(() {});
                                  await callAiAgent(
                                    context: context,
                                    prompt: _model.textController.text,
                                    audioUrl: _model.textController.text,
                                    threadId: isAndroid.toString(),
                                    agentCloudFunctionName: 'aiagentkrishi',
                                    provider: 'GOOGLE',
                                    agentJson:
                                        '{\"status\":\"LIVE\",\"identifier\":{\"name\":\"aiagentkrishi\",\"key\":\"f5u9x\"},\"name\":\"aiagentkrishi\",\"description\":\"Yeh ek \'Kisan Sahayak\' AI agent hai jo Gemini 2.5 Flash ka use karta hai. Iska kaam kisanon ko fasal (crops), pashupalan (livestock), aur krishi bimaariyon par expert salaah dena hai. Yeh Hindi mein baat karta hai aur voice/text dono support karta hai.\",\"aiModel\":{\"provider\":\"GOOGLE\",\"model\":\"gemini-2.5-flash\",\"parameters\":{\"temperature\":{\"inputValue\":0.65},\"maxTokens\":{\"inputValue\":20480},\"topP\":{\"inputValue\":0.55}},\"messages\":[{\"role\":\"SYSTEM\",\"text\":\"\\\"Aap ek \'Krishi Vaigyanik\' (Agricultural Scientist) hain. Aapka naam \'Kisan Sahayak\' hai.\\n\\nInstructions:\\n\\nHamesha saral aur shuddh Hindi mein jawab dein.\\n\\nSirf Kheti-bari (Agriculture), Mitti (Soil), Mausam, aur Pashupalan (Cattle/Livestock) se jude sawalon ka jawab dein.\\n\\nAgar koi fasal bimaari ke baare mein pooche, toh jaivik (organic) aur sahi dawai dono batayein.\\n\\nAgar user faltu ya gair-krishi sawal pooche (politics, movies), toh politely mana kar dein aur kahein: \'Main sirf kisanon ki madad ke liye hoon.\'\\n\\nJawab ko hamesha Chhote Bullet Points mein dein taaki kisan asani se padh sakein.\\\"\"}]},\"requestOptions\":{\"requestTypes\":[\"AUDIO\",\"PLAINTEXT\"]},\"responseOptions\":{\"responseType\":\"PLAINTEXT\"}}',
                                    responseType: 'PLAINTEXT',
                                  ).then((generatedText) {
                                    safeSetState(() =>
                                        _model.aIresponse3 = generatedText);
                                  });

                                  FFAppState()
                                      .addToChatHistoryyy(ChatMessageStruct(
                                    createdBy: 'AI',
                                    message: _model.aIresponse3,
                                    timestamp: getCurrentTimestamp,
                                  ));
                                  safeSetState(() {});
                                  _model.isAILoading = false;
                                  safeSetState(() {});
                                  safeSetState(() {
                                    _model.textController?.clear();
                                  });

                                  safeSetState(() {});
                                },
                              ),
                            ].divide(SizedBox(width: 10.0)),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              12.0, 0.0, 12.0, 8.0),
                          child: Container(
                            width: double.infinity,
                            decoration: BoxDecoration(
                              color: Color(0xFFF5F0E8),
                            ),
                            child: Padding(
                              padding: EdgeInsets.all(12.0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(
                                    Icons.mic_rounded,
                                    color: Colors.green,
                                    size: 16.0,
                                  ),
                                  Text(
                                    'बोलकर पूछें - माइक दबाएं',
                                    style: FlutterFlowTheme.of(context)
                                        .bodySmall
                                        .override(
                                          font: GoogleFonts.inter(
                                            fontWeight: FontWeight.w600,
                                            fontStyle:
                                                FlutterFlowTheme.of(context)
                                                    .bodySmall
                                                    .fontStyle,
                                          ),
                                          color: Colors.green,
                                          fontSize: 13.0,
                                          letterSpacing: 0.0,
                                          fontWeight: FontWeight.w600,
                                          fontStyle:
                                              FlutterFlowTheme.of(context)
                                                  .bodySmall
                                                  .fontStyle,
                                        ),
                                  ),
                                ].divide(SizedBox(width: 6.0)),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
