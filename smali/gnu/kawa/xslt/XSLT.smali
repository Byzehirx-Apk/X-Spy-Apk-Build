.class public Lgnu/kawa/xslt/XSLT;
.super Lgnu/xquery/lang/XQuery;
.source "XSLT.java"


# static fields
.field public static instance:Lgnu/kawa/xslt/XSLT;

.field public static nullMode:Lgnu/mapping/Symbol;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 71
    const/4 v0, 0x0

    const-string/jumbo v1, ""

    invoke-static {v0, v1}, Lgnu/mapping/Symbol;->make(Ljava/lang/Object;Ljava/lang/String;)Lgnu/mapping/Symbol;

    move-result-object v0

    sput-object v0, Lgnu/kawa/xslt/XSLT;->nullMode:Lgnu/mapping/Symbol;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 26
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/xslt/XSLT;
    move-object v1, v0

    invoke-direct {v1}, Lgnu/xquery/lang/XQuery;-><init>()V

    .line 27
    move-object v1, v0

    sput-object v1, Lgnu/kawa/xslt/XSLT;->instance:Lgnu/kawa/xslt/XSLT;

    .line 28
    const/4 v1, 0x1

    invoke-static {v1}, Lgnu/expr/ModuleBody;->setMainPrintValues(Z)V

    .line 29
    return-void
.end method

.method public static applyTemplates(Ljava/lang/String;Lgnu/mapping/Symbol;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 184
    move-object v0, p0

    .local v0, "select":Ljava/lang/String;
    move-object v1, p1

    .local v1, "mode":Lgnu/mapping/Symbol;
    move-object v6, v1

    if-nez v6, :cond_0

    .line 185
    sget-object v6, Lgnu/kawa/xslt/XSLT;->nullMode:Lgnu/mapping/Symbol;

    move-object v1, v6

    .line 186
    :cond_0
    move-object v6, v1

    invoke-static {v6}, Lgnu/kawa/xslt/TemplateTable;->getTemplateTable(Lgnu/mapping/Symbol;)Lgnu/kawa/xslt/TemplateTable;

    move-result-object v6

    move-object v2, v6

    .line 187
    .local v2, "table":Lgnu/kawa/xslt/TemplateTable;
    invoke-static {}, Lgnu/mapping/CallContext;->getInstance()Lgnu/mapping/CallContext;

    move-result-object v6

    move-object v3, v6

    .line 188
    .local v3, "ctx":Lgnu/mapping/CallContext;
    invoke-static {}, Lgnu/kawa/xml/Focus;->getCurrent()Lgnu/kawa/xml/Focus;

    move-result-object v6

    move-object v4, v6

    .line 189
    .local v4, "pos":Lgnu/kawa/xml/Focus;
    move-object v6, v4

    iget-object v6, v6, Lgnu/kawa/xml/Focus;->sequence:Lgnu/lists/AbstractSequence;

    check-cast v6, Lgnu/lists/TreeList;

    move-object v5, v6

    .line 190
    .local v5, "doc":Lgnu/lists/TreeList;
    move-object v6, v4

    move-object v7, v5

    move-object v8, v5

    move-object v9, v4

    iget v9, v9, Lgnu/kawa/xml/Focus;->ipos:I

    invoke-virtual {v8, v9}, Lgnu/lists/TreeList;->firstChildPos(I)I

    move-result v8

    invoke-virtual {v6, v7, v8}, Lgnu/kawa/xml/Focus;->push(Lgnu/lists/AbstractSequence;I)V

    .line 191
    move-object v6, v5

    move-object v7, v4

    move-object v8, v3

    invoke-static {v6, v7, v8}, Lgnu/kawa/xslt/XSLT;->process(Lgnu/lists/TreeList;Lgnu/kawa/xml/Focus;Lgnu/mapping/CallContext;)V

    .line 192
    move-object v6, v4

    invoke-virtual {v6}, Lgnu/kawa/xml/Focus;->pop()V

    .line 193
    return-void
.end method

.method public static defineApplyTemplate(Ljava/lang/String;DLgnu/mapping/Symbol;Lgnu/mapping/Procedure;)V
    .locals 11

    .prologue
    .line 78
    move-object v0, p0

    .local v0, "pattern":Ljava/lang/String;
    move-wide v1, p1

    .local v1, "priority":D
    move-object v3, p3

    .local v3, "mode":Lgnu/mapping/Symbol;
    move-object v4, p4

    .local v4, "template":Lgnu/mapping/Procedure;
    move-object v6, v3

    if-nez v6, :cond_0

    .line 79
    sget-object v6, Lgnu/kawa/xslt/XSLT;->nullMode:Lgnu/mapping/Symbol;

    move-object v3, v6

    .line 80
    :cond_0
    move-object v6, v3

    invoke-static {v6}, Lgnu/kawa/xslt/TemplateTable;->getTemplateTable(Lgnu/mapping/Symbol;)Lgnu/kawa/xslt/TemplateTable;

    move-result-object v6

    move-object v5, v6

    .line 81
    .local v5, "table":Lgnu/kawa/xslt/TemplateTable;
    move-object v6, v5

    move-object v7, v0

    move-wide v8, v1

    move-object v10, v4

    invoke-virtual {v6, v7, v8, v9, v10}, Lgnu/kawa/xslt/TemplateTable;->enter(Ljava/lang/String;DLgnu/mapping/Procedure;)V

    .line 82
    return-void
.end method

.method public static defineCallTemplate(Lgnu/mapping/Symbol;DLgnu/mapping/Procedure;)V
    .locals 0
    .param p0, "name"    # Lgnu/mapping/Symbol;
    .param p1, "priority"    # D
    .param p3, "template"    # Lgnu/mapping/Procedure;

    .prologue
    .line 69
    return-void
.end method

.method public static defineTemplate(Lgnu/mapping/Symbol;Ljava/lang/String;DLgnu/mapping/Symbol;Lgnu/mapping/Procedure;)V
    .locals 12

    .prologue
    .line 88
    move-object v1, p0

    .local v1, "name":Lgnu/mapping/Symbol;
    move-object v2, p1

    .local v2, "pattern":Ljava/lang/String;
    move-wide v3, p2

    .local v3, "priority":D
    move-object/from16 v5, p4

    .local v5, "mode":Lgnu/mapping/Symbol;
    move-object/from16 v6, p5

    .local v6, "template":Lgnu/mapping/Procedure;
    move-object v7, v1

    if-eqz v7, :cond_0

    .line 89
    move-object v7, v1

    move-wide v8, v3

    move-object v10, v6

    invoke-static {v7, v8, v9, v10}, Lgnu/kawa/xslt/XSLT;->defineCallTemplate(Lgnu/mapping/Symbol;DLgnu/mapping/Procedure;)V

    .line 90
    :cond_0
    move-object v7, v2

    if-eqz v7, :cond_1

    .line 91
    move-object v7, v2

    move-wide v8, v3

    move-object v10, v5

    move-object v11, v6

    invoke-static {v7, v8, v9, v10, v11}, Lgnu/kawa/xslt/XSLT;->defineApplyTemplate(Ljava/lang/String;DLgnu/mapping/Symbol;Lgnu/mapping/Procedure;)V

    .line 92
    :cond_1
    return-void
.end method

.method public static getXsltInstance()Lgnu/kawa/xslt/XSLT;
    .locals 3

    .prologue
    .line 33
    sget-object v0, Lgnu/kawa/xslt/XSLT;->instance:Lgnu/kawa/xslt/XSLT;

    if-nez v0, :cond_0

    .line 34
    new-instance v0, Lgnu/kawa/xslt/XSLT;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Lgnu/kawa/xslt/XSLT;-><init>()V

    .line 35
    :cond_0
    sget-object v0, Lgnu/kawa/xslt/XSLT;->instance:Lgnu/kawa/xslt/XSLT;

    return-object v0
.end method

.method public static process(Lgnu/lists/TreeList;Lgnu/kawa/xml/Focus;Lgnu/mapping/CallContext;)V
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 97
    move-object/from16 v0, p0

    .local v0, "doc":Lgnu/lists/TreeList;
    move-object/from16 v1, p1

    .local v1, "pos":Lgnu/kawa/xml/Focus;
    move-object/from16 v2, p2

    .local v2, "ctx":Lgnu/mapping/CallContext;
    move-object v11, v2

    iget-object v11, v11, Lgnu/mapping/CallContext;->consumer:Lgnu/lists/Consumer;

    move-object v3, v11

    .line 100
    .local v3, "out":Lgnu/lists/Consumer;
    :goto_0
    move-object v11, v1

    iget v11, v11, Lgnu/kawa/xml/Focus;->ipos:I

    move v4, v11

    .line 101
    .local v4, "ipos":I
    move-object v11, v0

    move v12, v4

    invoke-virtual {v11, v12}, Lgnu/lists/TreeList;->getNextKind(I)I

    move-result v11

    move v5, v11

    .line 105
    .local v5, "kind":I
    move v11, v5

    packed-switch v11, :pswitch_data_0

    .line 159
    :pswitch_0
    return-void

    .line 108
    :pswitch_1
    move-object v11, v0

    move v12, v4

    invoke-virtual {v11, v12}, Lgnu/lists/TreeList;->firstChildPos(I)I

    move-result v11

    move v4, v11

    .line 161
    :goto_1
    move-object v11, v1

    move v12, v4

    iput v12, v11, Lgnu/kawa/xml/Focus;->ipos:I

    .line 162
    goto :goto_0

    .line 111
    :pswitch_2
    move-object v11, v1

    invoke-virtual {v11}, Lgnu/kawa/xml/Focus;->getNextTypeObject()Ljava/lang/Object;

    move-result-object v11

    move-object v6, v11

    .line 112
    .local v6, "type":Ljava/lang/Object;
    move-object v11, v1

    invoke-virtual {v11}, Lgnu/kawa/xml/Focus;->getNextTypeName()Ljava/lang/String;

    move-result-object v11

    move-object v7, v11

    .line 113
    .local v7, "name":Ljava/lang/String;
    sget-object v11, Lgnu/kawa/xslt/TemplateTable;->nullModeTable:Lgnu/kawa/xslt/TemplateTable;

    move-object v12, v7

    invoke-virtual {v11, v12}, Lgnu/kawa/xslt/TemplateTable;->find(Ljava/lang/String;)Lgnu/mapping/Procedure;

    move-result-object v11

    move-object v8, v11

    .line 114
    .local v8, "proc":Lgnu/mapping/Procedure;
    move-object v11, v8

    if-eqz v11, :cond_0

    .line 116
    move-object v11, v8

    move-object v12, v2

    invoke-virtual {v11, v12}, Lgnu/mapping/Procedure;->check0(Lgnu/mapping/CallContext;)V

    .line 117
    move-object v11, v2

    invoke-virtual {v11}, Lgnu/mapping/CallContext;->runUntilDone()V

    .line 130
    :goto_2
    move-object v11, v0

    move v12, v4

    const/4 v13, 0x1

    ushr-int/lit8 v12, v12, 0x1

    invoke-virtual {v11, v12}, Lgnu/lists/TreeList;->nextDataIndex(I)I

    move-result v11

    const/4 v12, 0x1

    shl-int/lit8 v11, v11, 0x1

    move v4, v11

    .line 131
    move-object v11, v1

    invoke-virtual {v11}, Lgnu/kawa/xml/Focus;->gotoNext()Z

    move-result v11

    .line 132
    goto :goto_1

    .line 121
    :cond_0
    move-object v11, v3

    move-object v12, v6

    invoke-interface {v11, v12}, Lgnu/lists/Consumer;->startElement(Ljava/lang/Object;)V

    .line 122
    move-object v11, v0

    move v12, v4

    invoke-virtual {v11, v12}, Lgnu/lists/TreeList;->firstAttributePos(I)I

    move-result v11

    move v9, v11

    .line 123
    .local v9, "child":I
    move v11, v9

    if-nez v11, :cond_1

    .line 124
    move-object v11, v0

    move v12, v4

    invoke-virtual {v11, v12}, Lgnu/lists/TreeList;->firstChildPos(I)I

    move-result v11

    move v9, v11

    .line 125
    :cond_1
    move-object v11, v1

    move-object v12, v0

    move v13, v9

    invoke-virtual {v11, v12, v13}, Lgnu/kawa/xml/Focus;->push(Lgnu/lists/AbstractSequence;I)V

    .line 126
    move-object v11, v0

    move-object v12, v1

    move-object v13, v2

    invoke-static {v11, v12, v13}, Lgnu/kawa/xslt/XSLT;->process(Lgnu/lists/TreeList;Lgnu/kawa/xml/Focus;Lgnu/mapping/CallContext;)V

    .line 127
    move-object v11, v1

    invoke-virtual {v11}, Lgnu/kawa/xml/Focus;->pop()V

    .line 128
    move-object v11, v3

    invoke-interface {v11}, Lgnu/lists/Consumer;->endElement()V

    goto :goto_2

    .line 134
    .end local v6    # "type":Ljava/lang/Object;
    .end local v7    # "name":Ljava/lang/String;
    .end local v8    # "proc":Lgnu/mapping/Procedure;
    .end local v9    # "child":I
    :pswitch_3
    move-object v11, v1

    invoke-virtual {v11}, Lgnu/kawa/xml/Focus;->getNextTypeObject()Ljava/lang/Object;

    move-result-object v11

    move-object v6, v11

    .line 135
    .restart local v6    # "type":Ljava/lang/Object;
    move-object v11, v1

    invoke-virtual {v11}, Lgnu/kawa/xml/Focus;->getNextTypeName()Ljava/lang/String;

    move-result-object v11

    move-object v7, v11

    .line 136
    .restart local v7    # "name":Ljava/lang/String;
    sget-object v11, Lgnu/kawa/xslt/TemplateTable;->nullModeTable:Lgnu/kawa/xslt/TemplateTable;

    new-instance v12, Ljava/lang/StringBuilder;

    move-object v15, v12

    move-object v12, v15

    move-object v13, v15

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "@"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object v13, v7

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Lgnu/kawa/xslt/TemplateTable;->find(Ljava/lang/String;)Lgnu/mapping/Procedure;

    move-result-object v11

    move-object v8, v11

    .line 137
    .restart local v8    # "proc":Lgnu/mapping/Procedure;
    move-object v11, v8

    if-eqz v11, :cond_2

    .line 139
    move-object v11, v8

    move-object v12, v2

    invoke-virtual {v11, v12}, Lgnu/mapping/Procedure;->check0(Lgnu/mapping/CallContext;)V

    .line 140
    move-object v11, v2

    invoke-virtual {v11}, Lgnu/mapping/CallContext;->runUntilDone()V

    .line 141
    goto/16 :goto_1

    .line 145
    .end local v6    # "type":Ljava/lang/Object;
    .end local v7    # "name":Ljava/lang/String;
    .end local v8    # "proc":Lgnu/mapping/Procedure;
    :cond_2
    :pswitch_4
    move v11, v4

    const/4 v12, 0x1

    ushr-int/lit8 v11, v11, 0x1

    move v9, v11

    .line 146
    .local v9, "ichild":I
    move-object v11, v0

    move v12, v9

    const v13, 0x7fffffff

    invoke-virtual {v11, v12, v13}, Lgnu/lists/TreeList;->nextNodeIndex(II)I

    move-result v11

    move v10, v11

    .line 147
    .local v10, "next":I
    move v11, v9

    move v12, v10

    if-ne v11, v12, :cond_3

    .line 148
    move-object v11, v0

    move v12, v9

    invoke-virtual {v11, v12}, Lgnu/lists/TreeList;->nextDataIndex(I)I

    move-result v11

    move v10, v11

    .line 149
    :cond_3
    move-object v11, v0

    move v12, v9

    move v13, v10

    move-object v14, v3

    invoke-virtual {v11, v12, v13, v14}, Lgnu/lists/TreeList;->consumeIRange(IILgnu/lists/Consumer;)I

    move-result v11

    .line 150
    move v11, v10

    const/4 v12, 0x1

    shl-int/lit8 v11, v11, 0x1

    move v4, v11

    .line 151
    goto/16 :goto_1

    .line 154
    .end local v9    # "ichild":I
    .end local v10    # "next":I
    :pswitch_5
    move-object v11, v0

    move v12, v4

    const/4 v13, 0x1

    ushr-int/lit8 v12, v12, 0x1

    invoke-virtual {v11, v12}, Lgnu/lists/TreeList;->nextDataIndex(I)I

    move-result v11

    const/4 v12, 0x1

    shl-int/lit8 v11, v11, 0x1

    move v4, v11

    .line 155
    goto/16 :goto_1

    .line 105
    nop

    :pswitch_data_0
    .packed-switch 0x1d
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_5
        :pswitch_5
    .end packed-switch
.end method

.method public static registerEnvironment()V
    .locals 3

    .prologue
    .line 62
    new-instance v0, Lgnu/kawa/xslt/XSLT;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Lgnu/kawa/xslt/XSLT;-><init>()V

    invoke-static {v0}, Lgnu/expr/Language;->setDefaults(Lgnu/expr/Language;)V

    .line 63
    return-void
.end method

.method public static runStylesheet()V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 168
    invoke-static {}, Lgnu/mapping/CallContext;->getInstance()Lgnu/mapping/CallContext;

    move-result-object v6

    move-object v0, v6

    .line 169
    .local v0, "ctx":Lgnu/mapping/CallContext;
    invoke-static {}, Lgnu/expr/ApplicationMainSupport;->processSetProperties()V

    .line 170
    sget-object v6, Lgnu/expr/ApplicationMainSupport;->commandLineArgArray:[Ljava/lang/String;

    move-object v1, v6

    .line 171
    .local v1, "args":[Ljava/lang/String;
    const/4 v6, 0x0

    move v2, v6

    .local v2, "i":I
    :goto_0
    move v6, v2

    move-object v7, v1

    array-length v7, v7

    if-ge v6, v7, :cond_0

    .line 173
    move-object v6, v1

    move v7, v2

    aget-object v6, v6, v7

    move-object v3, v6

    .line 174
    .local v3, "arg":Ljava/lang/String;
    move-object v6, v3

    invoke-static {v6}, Lgnu/kawa/xml/Document;->parse(Ljava/lang/Object;)Lgnu/kawa/xml/KDocument;

    move-result-object v6

    move-object v4, v6

    .line 175
    .local v4, "doc":Lgnu/kawa/xml/KDocument;
    invoke-static {}, Lgnu/kawa/xml/Focus;->getCurrent()Lgnu/kawa/xml/Focus;

    move-result-object v6

    move-object v5, v6

    .line 176
    .local v5, "pos":Lgnu/kawa/xml/Focus;
    move-object v6, v5

    move-object v7, v4

    iget-object v7, v7, Lgnu/kawa/xml/KDocument;->sequence:Lgnu/lists/AbstractSequence;

    move-object v8, v4

    iget v8, v8, Lgnu/kawa/xml/KDocument;->ipos:I

    invoke-virtual {v6, v7, v8}, Lgnu/kawa/xml/Focus;->push(Lgnu/lists/AbstractSequence;I)V

    .line 177
    move-object v6, v4

    iget-object v6, v6, Lgnu/kawa/xml/KDocument;->sequence:Lgnu/lists/AbstractSequence;

    check-cast v6, Lgnu/lists/TreeList;

    move-object v7, v5

    move-object v8, v0

    invoke-static {v6, v7, v8}, Lgnu/kawa/xslt/XSLT;->process(Lgnu/lists/TreeList;Lgnu/kawa/xml/Focus;Lgnu/mapping/CallContext;)V

    .line 171
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 179
    .end local v3    # "arg":Ljava/lang/String;
    .end local v4    # "doc":Lgnu/kawa/xml/KDocument;
    .end local v5    # "pos":Lgnu/kawa/xml/Focus;
    :cond_0
    return-void
.end method


# virtual methods
.method public getLexer(Lgnu/mapping/InPort;Lgnu/text/SourceMessages;)Lgnu/text/Lexer;
    .locals 9

    .prologue
    .line 40
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/xslt/XSLT;
    move-object v1, p1

    .local v1, "inp":Lgnu/mapping/InPort;
    move-object v2, p2

    .local v2, "messages":Lgnu/text/SourceMessages;
    new-instance v3, Lgnu/kawa/xslt/XslTranslator;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    move-object v5, v1

    move-object v6, v2

    move-object v7, v0

    invoke-direct {v4, v5, v6, v7}, Lgnu/kawa/xslt/XslTranslator;-><init>(Lgnu/mapping/InPort;Lgnu/text/SourceMessages;Lgnu/kawa/xslt/XSLT;)V

    move-object v0, v3

    .end local v0    # "this":Lgnu/kawa/xslt/XSLT;
    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 22
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/xslt/XSLT;
    const-string/jumbo v1, "XSLT"

    move-object v0, v1

    .end local v0    # "this":Lgnu/kawa/xslt/XSLT;
    return-object v0
.end method

.method public parse(Lgnu/expr/Compilation;I)Z
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lgnu/text/SyntaxException;
        }
    .end annotation

    .prologue
    .line 46
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/xslt/XSLT;
    move-object v1, p1

    .local v1, "comp":Lgnu/expr/Compilation;
    move v2, p2

    .local v2, "options":I
    const/4 v5, 0x2

    sput v5, Lgnu/expr/Compilation;->defaultCallConvention:I

    .line 47
    move-object v5, v1

    iget-object v5, v5, Lgnu/expr/Compilation;->lexer:Lgnu/text/Lexer;

    check-cast v5, Lgnu/kawa/xslt/XslTranslator;

    move-object v6, v1

    invoke-virtual {v5, v6}, Lgnu/kawa/xslt/XslTranslator;->parse(Lgnu/expr/Compilation;)V

    .line 48
    move-object v5, v1

    const/4 v6, 0x4

    invoke-virtual {v5, v6}, Lgnu/expr/Compilation;->setState(I)V

    .line 50
    new-instance v5, Lgnu/xquery/lang/XQParser;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    const/4 v7, 0x0

    move-object v8, v1

    invoke-virtual {v8}, Lgnu/expr/Compilation;->getMessages()Lgnu/text/SourceMessages;

    move-result-object v8

    move-object v9, v0

    invoke-direct {v6, v7, v8, v9}, Lgnu/xquery/lang/XQParser;-><init>(Lgnu/mapping/InPort;Lgnu/text/SourceMessages;Lgnu/xquery/lang/XQuery;)V

    move-object v3, v5

    .line 51
    .local v3, "xqparser":Lgnu/xquery/lang/XQParser;
    new-instance v5, Lgnu/xquery/lang/XQResolveNames;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    move-object v7, v1

    invoke-direct {v6, v7}, Lgnu/xquery/lang/XQResolveNames;-><init>(Lgnu/expr/Compilation;)V

    move-object v4, v5

    .line 52
    .local v4, "resolver":Lgnu/xquery/lang/XQResolveNames;
    move-object v5, v4

    move-object v6, v3

    iget-object v6, v6, Lgnu/xquery/lang/XQParser;->functionNamespacePath:[Lgnu/mapping/Namespace;

    iput-object v6, v5, Lgnu/xquery/lang/XQResolveNames;->functionNamespacePath:[Lgnu/mapping/Namespace;

    .line 53
    move-object v5, v4

    move-object v6, v3

    iput-object v6, v5, Lgnu/xquery/lang/XQResolveNames;->parser:Lgnu/xquery/lang/XQParser;

    .line 54
    move-object v5, v4

    move-object v6, v1

    iget-object v6, v6, Lgnu/expr/Compilation;->mainLambda:Lgnu/expr/ModuleExp;

    invoke-virtual {v5, v6}, Lgnu/xquery/lang/XQResolveNames;->resolveModule(Lgnu/expr/ModuleExp;)V

    .line 56
    const/4 v5, 0x1

    move v0, v5

    .end local v0    # "this":Lgnu/kawa/xslt/XSLT;
    return v0
.end method
