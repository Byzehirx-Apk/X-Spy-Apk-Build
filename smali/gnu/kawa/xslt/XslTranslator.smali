.class public Lgnu/kawa/xslt/XslTranslator;
.super Lgnu/text/Lexer;
.source "XslTranslator.java"

# interfaces
.implements Lgnu/lists/Consumer;


# static fields
.field static final XSL_TRANSFORM_URI:Ljava/lang/String; = "http://www.w3.org/1999/XSL/Transform"

.field static final applyTemplatesMethod:Lgnu/bytecode/Method;

.field static final applyTemplatesProc:Lgnu/expr/PrimProcedure;

.field static final defineTemplateMethod:Lgnu/bytecode/Method;

.field static final defineTemplateProc:Lgnu/expr/PrimProcedure;

.field static final runStylesheetMethod:Lgnu/bytecode/Method;

.field static final runStylesheetProc:Lgnu/expr/PrimProcedure;

.field static final typeTemplateTable:Lgnu/bytecode/ClassType;

.field static final typeXSLT:Lgnu/bytecode/ClassType;


# instance fields
.field attributeType:Ljava/lang/Object;

.field attributeValue:Ljava/lang/StringBuffer;

.field comp:Lgnu/expr/Compilation;

.field consumerDecl:Lgnu/expr/Declaration;

.field in:Lgnu/mapping/InPort;

.field inAttribute:Z

.field inTemplate:Z

.field interpreter:Lgnu/kawa/xslt/XSLT;

.field mexp:Lgnu/expr/ModuleExp;

.field nesting:Ljava/lang/StringBuffer;

.field preserveSpace:Z

.field templateLambda:Lgnu/expr/LambdaExp;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 519
    const-string/jumbo v0, "gnu.kawa.xslt.XSLT"

    invoke-static {v0}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v0

    sput-object v0, Lgnu/kawa/xslt/XslTranslator;->typeXSLT:Lgnu/bytecode/ClassType;

    .line 521
    const-string/jumbo v0, "gnu.kawa.xslt.TemplateTable"

    invoke-static {v0}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v0

    sput-object v0, Lgnu/kawa/xslt/XslTranslator;->typeTemplateTable:Lgnu/bytecode/ClassType;

    .line 523
    sget-object v0, Lgnu/kawa/xslt/XslTranslator;->typeXSLT:Lgnu/bytecode/ClassType;

    const-string/jumbo v1, "defineTemplate"

    const/4 v2, 0x5

    invoke-virtual {v0, v1, v2}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object v0

    sput-object v0, Lgnu/kawa/xslt/XslTranslator;->defineTemplateMethod:Lgnu/bytecode/Method;

    .line 525
    sget-object v0, Lgnu/kawa/xslt/XslTranslator;->typeXSLT:Lgnu/bytecode/ClassType;

    const-string/jumbo v1, "runStylesheet"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object v0

    sput-object v0, Lgnu/kawa/xslt/XslTranslator;->runStylesheetMethod:Lgnu/bytecode/Method;

    .line 527
    new-instance v0, Lgnu/expr/PrimProcedure;

    move-object v3, v0

    move-object v0, v3

    move-object v1, v3

    sget-object v2, Lgnu/kawa/xslt/XslTranslator;->defineTemplateMethod:Lgnu/bytecode/Method;

    invoke-direct {v1, v2}, Lgnu/expr/PrimProcedure;-><init>(Lgnu/bytecode/Method;)V

    sput-object v0, Lgnu/kawa/xslt/XslTranslator;->defineTemplateProc:Lgnu/expr/PrimProcedure;

    .line 529
    new-instance v0, Lgnu/expr/PrimProcedure;

    move-object v3, v0

    move-object v0, v3

    move-object v1, v3

    sget-object v2, Lgnu/kawa/xslt/XslTranslator;->runStylesheetMethod:Lgnu/bytecode/Method;

    invoke-direct {v1, v2}, Lgnu/expr/PrimProcedure;-><init>(Lgnu/bytecode/Method;)V

    sput-object v0, Lgnu/kawa/xslt/XslTranslator;->runStylesheetProc:Lgnu/expr/PrimProcedure;

    .line 531
    sget-object v0, Lgnu/kawa/xslt/XslTranslator;->typeXSLT:Lgnu/bytecode/ClassType;

    const-string/jumbo v1, "applyTemplates"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object v0

    sput-object v0, Lgnu/kawa/xslt/XslTranslator;->applyTemplatesMethod:Lgnu/bytecode/Method;

    .line 533
    new-instance v0, Lgnu/expr/PrimProcedure;

    move-object v3, v0

    move-object v0, v3

    move-object v1, v3

    sget-object v2, Lgnu/kawa/xslt/XslTranslator;->applyTemplatesMethod:Lgnu/bytecode/Method;

    invoke-direct {v1, v2}, Lgnu/expr/PrimProcedure;-><init>(Lgnu/bytecode/Method;)V

    sput-object v0, Lgnu/kawa/xslt/XslTranslator;->applyTemplatesProc:Lgnu/expr/PrimProcedure;

    return-void
.end method

.method constructor <init>(Lgnu/mapping/InPort;Lgnu/text/SourceMessages;Lgnu/kawa/xslt/XSLT;)V
    .locals 9

    .prologue
    .line 45
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/xslt/XslTranslator;
    move-object v1, p1

    .local v1, "inp":Lgnu/mapping/InPort;
    move-object v2, p2

    .local v2, "messages":Lgnu/text/SourceMessages;
    move-object v3, p3

    .local v3, "interpreter":Lgnu/kawa/xslt/XSLT;
    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    invoke-direct {v4, v5, v6}, Lgnu/text/Lexer;-><init>(Lgnu/text/LineBufferedReader;Lgnu/text/SourceMessages;)V

    .line 23
    move-object v4, v0

    new-instance v5, Ljava/lang/StringBuffer;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    const/16 v7, 0x64

    invoke-direct {v6, v7}, Ljava/lang/StringBuffer;-><init>(I)V

    iput-object v5, v4, Lgnu/kawa/xslt/XslTranslator;->nesting:Ljava/lang/StringBuffer;

    .line 32
    move-object v4, v0

    new-instance v5, Ljava/lang/StringBuffer;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    const/16 v7, 0x64

    invoke-direct {v6, v7}, Ljava/lang/StringBuffer;-><init>(I)V

    iput-object v5, v4, Lgnu/kawa/xslt/XslTranslator;->attributeValue:Ljava/lang/StringBuffer;

    .line 46
    move-object v4, v0

    move-object v5, v3

    iput-object v5, v4, Lgnu/kawa/xslt/XslTranslator;->interpreter:Lgnu/kawa/xslt/XSLT;

    .line 47
    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Lgnu/kawa/xslt/XslTranslator;->in:Lgnu/mapping/InPort;

    .line 48
    return-void
.end method

.method public static isXslTag(Ljava/lang/Object;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 122
    move-object v0, p0

    .local v0, "type":Ljava/lang/Object;
    move-object v2, v0

    instance-of v2, v2, Lgnu/expr/QuoteExp;

    if-eqz v2, :cond_0

    .line 123
    move-object v2, v0

    check-cast v2, Lgnu/expr/QuoteExp;

    invoke-virtual {v2}, Lgnu/expr/QuoteExp;->getValue()Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    .line 124
    :cond_0
    move-object v2, v0

    instance-of v2, v2, Lgnu/mapping/Symbol;

    if-nez v2, :cond_1

    .line 125
    const/4 v2, 0x0

    move-object v0, v2

    .line 129
    .end local v0    # "type":Ljava/lang/Object;
    .local v1, "qname":Lgnu/mapping/Symbol;
    :goto_0
    return-object v0

    .line 126
    .end local v1    # "qname":Lgnu/mapping/Symbol;
    .restart local v0    # "type":Ljava/lang/Object;
    :cond_1
    move-object v2, v0

    check-cast v2, Lgnu/mapping/Symbol;

    move-object v1, v2

    .line 127
    .restart local v1    # "qname":Lgnu/mapping/Symbol;
    move-object v2, v1

    invoke-virtual {v2}, Lgnu/mapping/Symbol;->getNamespaceURI()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "http://www.w3.org/1999/XSL/Transform"

    if-eq v2, v3, :cond_2

    .line 128
    const/4 v2, 0x0

    move-object v0, v2

    goto :goto_0

    .line 129
    :cond_2
    move-object v2, v1

    invoke-virtual {v2}, Lgnu/mapping/Symbol;->getLocalName()Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    goto :goto_0
.end method


# virtual methods
.method public append(C)Lgnu/lists/Consumer;
    .locals 4

    .prologue
    .line 342
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/xslt/XslTranslator;
    move v1, p1

    .local v1, "v":C
    move-object v2, v0

    iget-boolean v2, v2, Lgnu/kawa/xslt/XslTranslator;->inAttribute:Z

    if-eqz v2, :cond_0

    .line 343
    move-object v2, v0

    iget-object v2, v2, Lgnu/kawa/xslt/XslTranslator;->attributeValue:Ljava/lang/StringBuffer;

    move v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v2

    .line 346
    :goto_0
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Lgnu/kawa/xslt/XslTranslator;
    return-object v0

    .line 345
    .restart local v0    # "this":Lgnu/kawa/xslt/XslTranslator;
    :cond_0
    move-object v2, v0

    move v3, v1

    invoke-static {v3}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lgnu/kawa/xslt/XslTranslator;->push(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public append(Ljava/lang/CharSequence;)Lgnu/lists/Consumer;
    .locals 4

    .prologue
    .line 351
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/xslt/XslTranslator;
    move-object v1, p1

    .local v1, "csq":Ljava/lang/CharSequence;
    move-object v2, v0

    iget-boolean v2, v2, Lgnu/kawa/xslt/XslTranslator;->inAttribute:Z

    if-eqz v2, :cond_0

    .line 352
    move-object v2, v0

    iget-object v2, v2, Lgnu/kawa/xslt/XslTranslator;->attributeValue:Ljava/lang/StringBuffer;

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuffer;

    move-result-object v2

    .line 355
    :goto_0
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Lgnu/kawa/xslt/XslTranslator;
    return-object v0

    .line 354
    .restart local v0    # "this":Lgnu/kawa/xslt/XslTranslator;
    :cond_0
    move-object v2, v0

    move-object v3, v1

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lgnu/kawa/xslt/XslTranslator;->push(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public append(Ljava/lang/CharSequence;II)Lgnu/lists/Consumer;
    .locals 8

    .prologue
    .line 360
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/xslt/XslTranslator;
    move-object v1, p1

    .local v1, "csq":Ljava/lang/CharSequence;
    move v2, p2

    .local v2, "start":I
    move v3, p3

    .local v3, "end":I
    move-object v4, v0

    move-object v5, v1

    move v6, v2

    move v7, v3

    invoke-interface {v5, v6, v7}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Lgnu/kawa/xslt/XslTranslator;->append(Ljava/lang/CharSequence;)Lgnu/lists/Consumer;

    move-result-object v4

    move-object v0, v4

    .end local v0    # "this":Lgnu/kawa/xslt/XslTranslator;
    return-object v0
.end method

.method public bridge synthetic append(C)Ljava/lang/Appendable;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 19
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/xslt/XslTranslator;
    move v1, p1

    .local v1, "x0":C
    move-object v2, v0

    move v3, v1

    invoke-virtual {v2, v3}, Lgnu/kawa/xslt/XslTranslator;->append(C)Lgnu/lists/Consumer;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Lgnu/kawa/xslt/XslTranslator;
    return-object v0
.end method

.method public bridge synthetic append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 19
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/xslt/XslTranslator;
    move-object v1, p1

    .local v1, "x0":Ljava/lang/CharSequence;
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Lgnu/kawa/xslt/XslTranslator;->append(Ljava/lang/CharSequence;)Lgnu/lists/Consumer;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Lgnu/kawa/xslt/XslTranslator;
    return-object v0
.end method

.method public bridge synthetic append(Ljava/lang/CharSequence;II)Ljava/lang/Appendable;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 19
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/xslt/XslTranslator;
    move-object v1, p1

    .local v1, "x0":Ljava/lang/CharSequence;
    move v2, p2

    .local v2, "x1":I
    move v3, p3

    .local v3, "x2":I
    move-object v4, v0

    move-object v5, v1

    move v6, v2

    move v7, v3

    invoke-virtual {v4, v5, v6, v7}, Lgnu/kawa/xslt/XslTranslator;->append(Ljava/lang/CharSequence;II)Lgnu/lists/Consumer;

    move-result-object v4

    move-object v0, v4

    .end local v0    # "this":Lgnu/kawa/xslt/XslTranslator;
    return-object v0
.end method

.method append(Lgnu/expr/Expression;)V
    .locals 0
    .param p1, "expr"    # Lgnu/expr/Expression;

    .prologue
    .line 135
    return-void
.end method

.method public endAttribute()V
    .locals 8

    .prologue
    .line 175
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/xslt/XslTranslator;
    const/4 v2, 0x2

    new-array v2, v2, [Lgnu/expr/Expression;

    move-object v1, v2

    .line 176
    .local v1, "args":[Lgnu/expr/Expression;
    move-object v2, v1

    const/4 v3, 0x0

    new-instance v4, Lgnu/expr/QuoteExp;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    move-object v6, v0

    iget-object v6, v6, Lgnu/kawa/xslt/XslTranslator;->attributeType:Ljava/lang/Object;

    invoke-direct {v5, v6}, Lgnu/expr/QuoteExp;-><init>(Ljava/lang/Object;)V

    aput-object v4, v2, v3

    .line 177
    move-object v2, v1

    const/4 v3, 0x1

    new-instance v4, Lgnu/expr/QuoteExp;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    move-object v6, v0

    iget-object v6, v6, Lgnu/kawa/xslt/XslTranslator;->attributeValue:Ljava/lang/StringBuffer;

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lgnu/expr/QuoteExp;-><init>(Ljava/lang/Object;)V

    aput-object v4, v2, v3

    .line 178
    move-object v2, v0

    new-instance v3, Lgnu/expr/ApplyExp;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    sget-object v5, Lgnu/kawa/xml/MakeAttribute;->makeAttributeExp:Lgnu/expr/QuoteExp;

    move-object v6, v1

    invoke-direct {v4, v5, v6}, Lgnu/expr/ApplyExp;-><init>(Lgnu/expr/Expression;[Lgnu/expr/Expression;)V

    invoke-virtual {v2, v3}, Lgnu/kawa/xslt/XslTranslator;->push(Lgnu/expr/Expression;)V

    .line 179
    move-object v2, v0

    iget-object v2, v2, Lgnu/kawa/xslt/XslTranslator;->nesting:Ljava/lang/StringBuffer;

    move-object v3, v0

    iget-object v3, v3, Lgnu/kawa/xslt/XslTranslator;->nesting:Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->length()I

    move-result v3

    const/4 v4, 0x1

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 180
    move-object v2, v0

    const/4 v3, 0x0

    iput-boolean v3, v2, Lgnu/kawa/xslt/XslTranslator;->inAttribute:Z

    .line 181
    return-void
.end method

.method public endDocument()V
    .locals 0

    .prologue
    .line 436
    return-void
.end method

.method public endElement()V
    .locals 20

    .prologue
    .line 185
    move-object/from16 v0, p0

    .local v0, "this":Lgnu/kawa/xslt/XslTranslator;
    move-object v12, v0

    invoke-virtual {v12}, Lgnu/kawa/xslt/XslTranslator;->maybeSkipWhitespace()V

    .line 186
    move-object v12, v0

    iget-object v12, v12, Lgnu/kawa/xslt/XslTranslator;->nesting:Ljava/lang/StringBuffer;

    invoke-virtual {v12}, Ljava/lang/StringBuffer;->length()I

    move-result v12

    const/4 v13, 0x1

    add-int/lit8 v12, v12, -0x1

    move v1, v12

    .line 187
    .local v1, "nlen":I
    move-object v12, v0

    iget-object v12, v12, Lgnu/kawa/xslt/XslTranslator;->nesting:Ljava/lang/StringBuffer;

    move v13, v1

    invoke-virtual {v12, v13}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v12

    move v2, v12

    .line 188
    .local v2, "start":I
    move-object v12, v0

    iget-object v12, v12, Lgnu/kawa/xslt/XslTranslator;->nesting:Ljava/lang/StringBuffer;

    move v13, v1

    invoke-virtual {v12, v13}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 189
    move-object v12, v0

    iget-object v12, v12, Lgnu/kawa/xslt/XslTranslator;->comp:Lgnu/expr/Compilation;

    iget-object v12, v12, Lgnu/expr/Compilation;->exprStack:Ljava/util/Stack;

    move v13, v2

    invoke-virtual {v12, v13}, Ljava/util/Stack;->elementAt(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lgnu/expr/Expression;

    move-object v3, v12

    .line 190
    .local v3, "startTag":Lgnu/expr/Expression;
    move-object v12, v3

    invoke-static {v12}, Lgnu/kawa/xslt/XslTranslator;->isXslTag(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    move-object v4, v12

    .line 191
    .local v4, "xslTag":Ljava/lang/String;
    move-object v12, v4

    const-string/jumbo v13, "value-of"

    if-ne v12, v13, :cond_1

    .line 193
    move-object v12, v0

    const-string/jumbo v13, ""

    const-string/jumbo v14, "select"

    move v15, v2

    const/16 v16, 0x1

    add-int/lit8 v15, v15, 0x1

    invoke-virtual {v12, v13, v14, v15}, Lgnu/kawa/xslt/XslTranslator;->popMatchingAttribute(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v12

    move-object v5, v12

    .line 194
    .local v5, "select":Ljava/lang/String;
    move-object v12, v5

    if-eqz v12, :cond_0

    .line 196
    move-object v12, v0

    move-object v13, v5

    invoke-virtual {v12, v13}, Lgnu/kawa/xslt/XslTranslator;->parseXPath(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v12

    move-object v6, v12

    .line 197
    .local v6, "exp":Lgnu/expr/Expression;
    new-instance v12, Lgnu/expr/ApplyExp;

    move-object/from16 v19, v12

    move-object/from16 v12, v19

    move-object/from16 v13, v19

    sget-object v14, Lgnu/xquery/lang/XQParser;->makeText:Lgnu/expr/Expression;

    const/4 v15, 0x1

    new-array v15, v15, [Lgnu/expr/Expression;

    move-object/from16 v19, v15

    move-object/from16 v15, v19

    move-object/from16 v16, v19

    const/16 v17, 0x0

    move-object/from16 v18, v6

    aput-object v18, v16, v17

    invoke-direct {v13, v14, v15}, Lgnu/expr/ApplyExp;-><init>(Lgnu/expr/Expression;[Lgnu/expr/Expression;)V

    move-object v6, v12

    .line 198
    move-object v12, v0

    iget-object v12, v12, Lgnu/kawa/xslt/XslTranslator;->comp:Lgnu/expr/Compilation;

    iget-object v12, v12, Lgnu/expr/Compilation;->exprStack:Ljava/util/Stack;

    invoke-virtual {v12}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v12

    .line 199
    move-object v12, v0

    move-object v13, v6

    invoke-virtual {v12, v13}, Lgnu/kawa/xslt/XslTranslator;->push(Lgnu/expr/Expression;)V

    .line 200
    .line 281
    .end local v5    # "select":Ljava/lang/String;
    .end local v6    # "exp":Lgnu/expr/Expression;
    :goto_0
    return-void

    .line 202
    .line 281
    :cond_0
    :goto_1
    goto :goto_0

    .line 203
    :cond_1
    move-object v12, v4

    const-string/jumbo v13, "copy-of"

    if-ne v12, v13, :cond_3

    .line 205
    move-object v12, v0

    const-string/jumbo v13, ""

    const-string/jumbo v14, "select"

    move v15, v2

    const/16 v16, 0x1

    add-int/lit8 v15, v15, 0x1

    invoke-virtual {v12, v13, v14, v15}, Lgnu/kawa/xslt/XslTranslator;->popMatchingAttribute(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v12

    move-object v5, v12

    .line 206
    .restart local v5    # "select":Ljava/lang/String;
    move-object v12, v5

    if-eqz v12, :cond_2

    .line 208
    move-object v12, v0

    move-object v13, v5

    invoke-virtual {v12, v13}, Lgnu/kawa/xslt/XslTranslator;->parseXPath(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v12

    move-object v6, v12

    .line 209
    .restart local v6    # "exp":Lgnu/expr/Expression;
    move-object v12, v0

    iget-object v12, v12, Lgnu/kawa/xslt/XslTranslator;->comp:Lgnu/expr/Compilation;

    iget-object v12, v12, Lgnu/expr/Compilation;->exprStack:Ljava/util/Stack;

    invoke-virtual {v12}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v12

    .line 210
    move-object v12, v0

    move-object v13, v6

    invoke-virtual {v12, v13}, Lgnu/kawa/xslt/XslTranslator;->push(Lgnu/expr/Expression;)V

    .line 211
    goto :goto_0

    .line 213
    .end local v6    # "exp":Lgnu/expr/Expression;
    :cond_2
    goto :goto_1

    .line 214
    .end local v5    # "select":Ljava/lang/String;
    :cond_3
    move-object v12, v4

    const-string/jumbo v13, "apply-templates"

    if-ne v12, v13, :cond_4

    .line 216
    move-object v12, v0

    const-string/jumbo v13, ""

    const-string/jumbo v14, "select"

    move v15, v2

    const/16 v16, 0x1

    add-int/lit8 v15, v15, 0x1

    invoke-virtual {v12, v13, v14, v15}, Lgnu/kawa/xslt/XslTranslator;->popMatchingAttribute(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v12

    move-object v5, v12

    .line 217
    .restart local v5    # "select":Ljava/lang/String;
    move-object v12, v0

    const-string/jumbo v13, ""

    const-string/jumbo v14, "mode"

    move v15, v2

    const/16 v16, 0x1

    add-int/lit8 v15, v15, 0x1

    invoke-virtual {v12, v13, v14, v15}, Lgnu/kawa/xslt/XslTranslator;->popMatchingAttribute(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v12

    move-object v6, v12

    .line 218
    .local v6, "mode":Ljava/lang/String;
    const/4 v12, 0x2

    new-array v12, v12, [Lgnu/expr/Expression;

    move-object/from16 v19, v12

    move-object/from16 v12, v19

    move-object/from16 v13, v19

    const/4 v14, 0x0

    new-instance v15, Lgnu/expr/QuoteExp;

    move-object/from16 v19, v15

    move-object/from16 v15, v19

    move-object/from16 v16, v19

    move-object/from16 v17, v5

    invoke-direct/range {v16 .. v17}, Lgnu/expr/QuoteExp;-><init>(Ljava/lang/Object;)V

    aput-object v15, v13, v14

    move-object/from16 v19, v12

    move-object/from16 v12, v19

    move-object/from16 v13, v19

    const/4 v14, 0x1

    move-object v15, v0

    move-object/from16 v16, v6

    invoke-virtual/range {v15 .. v16}, Lgnu/kawa/xslt/XslTranslator;->resolveQNameExpression(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v15

    aput-object v15, v13, v14

    move-object v7, v12

    .line 220
    .local v7, "args":[Lgnu/expr/Expression;
    move-object v12, v0

    iget-object v12, v12, Lgnu/kawa/xslt/XslTranslator;->comp:Lgnu/expr/Compilation;

    iget-object v12, v12, Lgnu/expr/Compilation;->exprStack:Ljava/util/Stack;

    invoke-virtual {v12}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v12

    .line 221
    move-object v12, v0

    new-instance v13, Lgnu/expr/ApplyExp;

    move-object/from16 v19, v13

    move-object/from16 v13, v19

    move-object/from16 v14, v19

    new-instance v15, Lgnu/expr/QuoteExp;

    move-object/from16 v19, v15

    move-object/from16 v15, v19

    move-object/from16 v16, v19

    sget-object v17, Lgnu/kawa/xslt/XslTranslator;->applyTemplatesProc:Lgnu/expr/PrimProcedure;

    invoke-direct/range {v16 .. v17}, Lgnu/expr/QuoteExp;-><init>(Ljava/lang/Object;)V

    move-object/from16 v16, v7

    invoke-direct/range {v14 .. v16}, Lgnu/expr/ApplyExp;-><init>(Lgnu/expr/Expression;[Lgnu/expr/Expression;)V

    invoke-virtual {v12, v13}, Lgnu/kawa/xslt/XslTranslator;->push(Lgnu/expr/Expression;)V

    .line 222
    goto/16 :goto_1

    .line 223
    .end local v5    # "select":Ljava/lang/String;
    .end local v6    # "mode":Ljava/lang/String;
    .end local v7    # "args":[Lgnu/expr/Expression;
    :cond_4
    move-object v12, v4

    const-string/jumbo v13, "if"

    if-ne v12, v13, :cond_5

    .line 225
    move-object v12, v0

    const-string/jumbo v13, ""

    const-string/jumbo v14, "test"

    move v15, v2

    const/16 v16, 0x1

    add-int/lit8 v15, v15, 0x1

    invoke-virtual {v12, v13, v14, v15}, Lgnu/kawa/xslt/XslTranslator;->popMatchingAttribute(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v12

    move-object v5, v12

    .line 226
    .restart local v5    # "select":Ljava/lang/String;
    move-object v12, v0

    move-object v13, v5

    invoke-virtual {v12, v13}, Lgnu/kawa/xslt/XslTranslator;->parseXPath(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v12

    move-object v6, v12

    .line 227
    .local v6, "test":Lgnu/expr/Expression;
    move-object v12, v6

    invoke-static {v12}, Lgnu/xquery/lang/XQParser;->booleanValue(Lgnu/expr/Expression;)Lgnu/expr/Expression;

    move-result-object v12

    move-object v6, v12

    .line 228
    move-object v12, v0

    move v13, v2

    const/4 v14, 0x1

    add-int/lit8 v13, v13, 0x1

    invoke-virtual {v12, v13}, Lgnu/kawa/xslt/XslTranslator;->popTemplateBody(I)Lgnu/expr/Expression;

    move-result-object v12

    move-object v7, v12

    .line 229
    .local v7, "clause":Lgnu/expr/Expression;
    move-object v12, v0

    iget-object v12, v12, Lgnu/kawa/xslt/XslTranslator;->comp:Lgnu/expr/Compilation;

    iget-object v12, v12, Lgnu/expr/Compilation;->exprStack:Ljava/util/Stack;

    invoke-virtual {v12}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v12

    .line 230
    move-object v12, v0

    new-instance v13, Lgnu/expr/IfExp;

    move-object/from16 v19, v13

    move-object/from16 v13, v19

    move-object/from16 v14, v19

    move-object v15, v6

    move-object/from16 v16, v7

    sget-object v17, Lgnu/expr/QuoteExp;->voidExp:Lgnu/expr/QuoteExp;

    invoke-direct/range {v14 .. v17}, Lgnu/expr/IfExp;-><init>(Lgnu/expr/Expression;Lgnu/expr/Expression;Lgnu/expr/Expression;)V

    invoke-virtual {v12, v13}, Lgnu/kawa/xslt/XslTranslator;->push(Lgnu/expr/Expression;)V

    .line 231
    goto/16 :goto_1

    .line 232
    .end local v5    # "select":Ljava/lang/String;
    .end local v6    # "test":Lgnu/expr/Expression;
    .end local v7    # "clause":Lgnu/expr/Expression;
    :cond_5
    move-object v12, v4

    const-string/jumbo v13, "stylesheet"

    if-eq v12, v13, :cond_6

    move-object v12, v4

    const-string/jumbo v13, "transform"

    if-ne v12, v13, :cond_7

    .line 234
    :cond_6
    move-object v12, v0

    const-string/jumbo v13, ""

    const-string/jumbo v14, "version"

    move v15, v2

    const/16 v16, 0x1

    add-int/lit8 v15, v15, 0x1

    invoke-virtual {v12, v13, v14, v15}, Lgnu/kawa/xslt/XslTranslator;->popMatchingAttribute(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v12

    move-object v5, v12

    .line 235
    .local v5, "version":Ljava/lang/String;
    move-object v12, v0

    new-instance v13, Lgnu/expr/ApplyExp;

    move-object/from16 v19, v13

    move-object/from16 v13, v19

    move-object/from16 v14, v19

    new-instance v15, Lgnu/expr/QuoteExp;

    move-object/from16 v19, v15

    move-object/from16 v15, v19

    move-object/from16 v16, v19

    sget-object v17, Lgnu/kawa/xslt/XslTranslator;->runStylesheetProc:Lgnu/expr/PrimProcedure;

    invoke-direct/range {v16 .. v17}, Lgnu/expr/QuoteExp;-><init>(Ljava/lang/Object;)V

    sget-object v16, Lgnu/expr/Expression;->noExpressions:[Lgnu/expr/Expression;

    invoke-direct/range {v14 .. v16}, Lgnu/expr/ApplyExp;-><init>(Lgnu/expr/Expression;[Lgnu/expr/Expression;)V

    invoke-virtual {v12, v13}, Lgnu/kawa/xslt/XslTranslator;->push(Lgnu/expr/Expression;)V

    .line 237
    move-object v12, v0

    move v13, v2

    const/4 v14, 0x1

    add-int/lit8 v13, v13, 0x1

    invoke-virtual {v12, v13}, Lgnu/kawa/xslt/XslTranslator;->popTemplateBody(I)Lgnu/expr/Expression;

    move-result-object v12

    move-object v6, v12

    .line 238
    .local v6, "body":Lgnu/expr/Expression;
    move-object v12, v0

    move-object v13, v6

    invoke-virtual {v12, v13}, Lgnu/kawa/xslt/XslTranslator;->push(Lgnu/expr/Expression;)V

    .line 239
    move-object v12, v0

    iget-object v12, v12, Lgnu/kawa/xslt/XslTranslator;->mexp:Lgnu/expr/ModuleExp;

    move-object v13, v6

    iput-object v13, v12, Lgnu/expr/ModuleExp;->body:Lgnu/expr/Expression;

    .line 240
    goto/16 :goto_1

    .line 241
    .end local v5    # "version":Ljava/lang/String;
    .end local v6    # "body":Lgnu/expr/Expression;
    :cond_7
    move-object v12, v4

    const-string/jumbo v13, "template"

    if-ne v12, v13, :cond_8

    .line 243
    move-object v12, v0

    const-string/jumbo v13, ""

    const-string/jumbo v14, "match"

    move v15, v2

    const/16 v16, 0x1

    add-int/lit8 v15, v15, 0x1

    invoke-virtual {v12, v13, v14, v15}, Lgnu/kawa/xslt/XslTranslator;->popMatchingAttribute(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v12

    move-object v5, v12

    .line 244
    .local v5, "match":Ljava/lang/String;
    move-object v12, v0

    const-string/jumbo v13, ""

    const-string/jumbo v14, "name"

    move v15, v2

    const/16 v16, 0x1

    add-int/lit8 v15, v15, 0x1

    invoke-virtual {v12, v13, v14, v15}, Lgnu/kawa/xslt/XslTranslator;->popMatchingAttribute(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v12

    move-object v6, v12

    .line 245
    .local v6, "name":Ljava/lang/String;
    move-object v12, v0

    const-string/jumbo v13, ""

    const-string/jumbo v14, "priority"

    move v15, v2

    const/16 v16, 0x1

    add-int/lit8 v15, v15, 0x1

    invoke-virtual {v12, v13, v14, v15}, Lgnu/kawa/xslt/XslTranslator;->popMatchingAttribute(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v12

    move-object v7, v12

    .line 246
    .local v7, "priority":Ljava/lang/String;
    move-object v12, v0

    const-string/jumbo v13, ""

    const-string/jumbo v14, "mode"

    move v15, v2

    const/16 v16, 0x1

    add-int/lit8 v15, v15, 0x1

    invoke-virtual {v12, v13, v14, v15}, Lgnu/kawa/xslt/XslTranslator;->popMatchingAttribute(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v12

    move-object v8, v12

    .line 247
    .local v8, "mode":Ljava/lang/String;
    move-object v12, v0

    iget-object v12, v12, Lgnu/kawa/xslt/XslTranslator;->templateLambda:Lgnu/expr/LambdaExp;

    move-object v13, v0

    move v14, v2

    const/4 v15, 0x1

    add-int/lit8 v14, v14, 0x1

    invoke-virtual {v13, v14}, Lgnu/kawa/xslt/XslTranslator;->popTemplateBody(I)Lgnu/expr/Expression;

    move-result-object v13

    iput-object v13, v12, Lgnu/expr/LambdaExp;->body:Lgnu/expr/Expression;

    .line 248
    move-object v12, v0

    iget-object v12, v12, Lgnu/kawa/xslt/XslTranslator;->comp:Lgnu/expr/Compilation;

    iget-object v12, v12, Lgnu/expr/Compilation;->exprStack:Ljava/util/Stack;

    invoke-virtual {v12}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v12

    .line 249
    const/4 v12, 0x5

    new-array v12, v12, [Lgnu/expr/Expression;

    move-object v9, v12

    .line 250
    .local v9, "args":[Lgnu/expr/Expression;
    const-wide/16 v12, 0x0

    move-wide v10, v12

    .line 251
    .local v10, "prio":D
    move-object v12, v9

    const/4 v13, 0x0

    move-object v14, v0

    move-object v15, v6

    invoke-virtual {v14, v15}, Lgnu/kawa/xslt/XslTranslator;->resolveQNameExpression(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v14

    aput-object v14, v12, v13

    .line 252
    move-object v12, v9

    const/4 v13, 0x1

    new-instance v14, Lgnu/expr/QuoteExp;

    move-object/from16 v19, v14

    move-object/from16 v14, v19

    move-object/from16 v15, v19

    move-object/from16 v16, v5

    invoke-direct/range {v15 .. v16}, Lgnu/expr/QuoteExp;-><init>(Ljava/lang/Object;)V

    aput-object v14, v12, v13

    .line 253
    move-object v12, v9

    const/4 v13, 0x2

    new-instance v14, Lgnu/expr/QuoteExp;

    move-object/from16 v19, v14

    move-object/from16 v14, v19

    move-object/from16 v15, v19

    move-wide/from16 v16, v10

    invoke-static/range {v16 .. v17}, Lgnu/math/DFloNum;->make(D)Lgnu/math/DFloNum;

    move-result-object v16

    invoke-direct/range {v15 .. v16}, Lgnu/expr/QuoteExp;-><init>(Ljava/lang/Object;)V

    aput-object v14, v12, v13

    .line 254
    move-object v12, v9

    const/4 v13, 0x3

    move-object v14, v0

    move-object v15, v8

    invoke-virtual {v14, v15}, Lgnu/kawa/xslt/XslTranslator;->resolveQNameExpression(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v14

    aput-object v14, v12, v13

    .line 255
    move-object v12, v9

    const/4 v13, 0x4

    move-object v14, v0

    iget-object v14, v14, Lgnu/kawa/xslt/XslTranslator;->templateLambda:Lgnu/expr/LambdaExp;

    aput-object v14, v12, v13

    .line 256
    move-object v12, v0

    new-instance v13, Lgnu/expr/ApplyExp;

    move-object/from16 v19, v13

    move-object/from16 v13, v19

    move-object/from16 v14, v19

    new-instance v15, Lgnu/expr/QuoteExp;

    move-object/from16 v19, v15

    move-object/from16 v15, v19

    move-object/from16 v16, v19

    sget-object v17, Lgnu/kawa/xslt/XslTranslator;->defineTemplateProc:Lgnu/expr/PrimProcedure;

    invoke-direct/range {v16 .. v17}, Lgnu/expr/QuoteExp;-><init>(Ljava/lang/Object;)V

    move-object/from16 v16, v9

    invoke-direct/range {v14 .. v16}, Lgnu/expr/ApplyExp;-><init>(Lgnu/expr/Expression;[Lgnu/expr/Expression;)V

    invoke-virtual {v12, v13}, Lgnu/kawa/xslt/XslTranslator;->push(Lgnu/expr/Expression;)V

    .line 257
    move-object v12, v0

    const/4 v13, 0x0

    iput-object v13, v12, Lgnu/kawa/xslt/XslTranslator;->templateLambda:Lgnu/expr/LambdaExp;

    .line 258
    goto/16 :goto_1

    .line 259
    .end local v5    # "match":Ljava/lang/String;
    .end local v6    # "name":Ljava/lang/String;
    .end local v7    # "priority":Ljava/lang/String;
    .end local v8    # "mode":Ljava/lang/String;
    .end local v9    # "args":[Lgnu/expr/Expression;
    .end local v10    # "prio":D
    :cond_8
    move-object v12, v4

    const-string/jumbo v13, "text"

    if-ne v12, v13, :cond_a

    .line 261
    move-object v12, v0

    const/4 v13, 0x0

    iput-boolean v13, v12, Lgnu/kawa/xslt/XslTranslator;->preserveSpace:Z

    .line 262
    move-object v12, v0

    iget-object v12, v12, Lgnu/kawa/xslt/XslTranslator;->comp:Lgnu/expr/Compilation;

    iget-object v12, v12, Lgnu/expr/Compilation;->exprStack:Ljava/util/Stack;

    invoke-virtual {v12}, Ljava/util/Stack;->size()I

    move-result v12

    move v13, v2

    sub-int/2addr v12, v13

    const/4 v13, 0x1

    add-int/lit8 v12, v12, -0x1

    new-array v12, v12, [Lgnu/expr/Expression;

    move-object v5, v12

    .line 263
    .local v5, "args":[Lgnu/expr/Expression;
    move-object v12, v5

    array-length v12, v12

    move v6, v12

    .local v6, "i":I
    :goto_2
    add-int/lit8 v6, v6, -0x1

    move v12, v6

    if-ltz v12, :cond_9

    .line 264
    move-object v12, v5

    move v13, v6

    move-object v14, v0

    iget-object v14, v14, Lgnu/kawa/xslt/XslTranslator;->comp:Lgnu/expr/Compilation;

    iget-object v14, v14, Lgnu/expr/Compilation;->exprStack:Ljava/util/Stack;

    invoke-virtual {v14}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lgnu/expr/Expression;

    aput-object v14, v12, v13

    goto :goto_2

    .line 265
    :cond_9
    move-object v12, v0

    iget-object v12, v12, Lgnu/kawa/xslt/XslTranslator;->comp:Lgnu/expr/Compilation;

    iget-object v12, v12, Lgnu/expr/Compilation;->exprStack:Ljava/util/Stack;

    invoke-virtual {v12}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v12

    .line 266
    new-instance v12, Lgnu/expr/ApplyExp;

    move-object/from16 v19, v12

    move-object/from16 v12, v19

    move-object/from16 v13, v19

    sget-object v14, Lgnu/xquery/lang/XQParser;->makeText:Lgnu/expr/Expression;

    move-object v15, v5

    invoke-direct {v13, v14, v15}, Lgnu/expr/ApplyExp;-><init>(Lgnu/expr/Expression;[Lgnu/expr/Expression;)V

    move-object v6, v12

    .line 267
    .local v6, "exp":Lgnu/expr/Expression;
    move-object v12, v0

    move-object v13, v6

    invoke-virtual {v12, v13}, Lgnu/kawa/xslt/XslTranslator;->push(Lgnu/expr/Expression;)V

    .line 268
    move-object v12, v0

    iget-object v12, v12, Lgnu/kawa/xslt/XslTranslator;->mexp:Lgnu/expr/ModuleExp;

    move-object v13, v6

    iput-object v13, v12, Lgnu/expr/ModuleExp;->body:Lgnu/expr/Expression;

    .line 269
    goto/16 :goto_1

    .line 272
    .end local v5    # "args":[Lgnu/expr/Expression;
    .end local v6    # "exp":Lgnu/expr/Expression;
    :cond_a
    move-object v12, v0

    iget-object v12, v12, Lgnu/kawa/xslt/XslTranslator;->comp:Lgnu/expr/Compilation;

    iget-object v12, v12, Lgnu/expr/Compilation;->exprStack:Ljava/util/Stack;

    invoke-virtual {v12}, Ljava/util/Stack;->size()I

    move-result v12

    move v13, v2

    sub-int/2addr v12, v13

    new-array v12, v12, [Lgnu/expr/Expression;

    move-object v5, v12

    .line 273
    .restart local v5    # "args":[Lgnu/expr/Expression;
    move-object v12, v5

    array-length v12, v12

    move v6, v12

    .local v6, "i":I
    :goto_3
    add-int/lit8 v6, v6, -0x1

    move v12, v6

    if-ltz v12, :cond_b

    .line 274
    move-object v12, v5

    move v13, v6

    move-object v14, v0

    iget-object v14, v14, Lgnu/kawa/xslt/XslTranslator;->comp:Lgnu/expr/Compilation;

    iget-object v14, v14, Lgnu/expr/Compilation;->exprStack:Ljava/util/Stack;

    invoke-virtual {v14}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lgnu/expr/Expression;

    aput-object v14, v12, v13

    goto :goto_3

    .line 275
    :cond_b
    new-instance v12, Lgnu/kawa/xml/MakeElement;

    move-object/from16 v19, v12

    move-object/from16 v12, v19

    move-object/from16 v13, v19

    invoke-direct {v13}, Lgnu/kawa/xml/MakeElement;-><init>()V

    move-object v6, v12

    .line 277
    .local v6, "mkElement":Lgnu/kawa/xml/MakeElement;
    new-instance v12, Lgnu/expr/ApplyExp;

    move-object/from16 v19, v12

    move-object/from16 v12, v19

    move-object/from16 v13, v19

    new-instance v14, Lgnu/expr/QuoteExp;

    move-object/from16 v19, v14

    move-object/from16 v14, v19

    move-object/from16 v15, v19

    move-object/from16 v16, v6

    invoke-direct/range {v15 .. v16}, Lgnu/expr/QuoteExp;-><init>(Ljava/lang/Object;)V

    move-object v15, v5

    invoke-direct {v13, v14, v15}, Lgnu/expr/ApplyExp;-><init>(Lgnu/expr/Expression;[Lgnu/expr/Expression;)V

    move-object v7, v12

    .line 278
    .local v7, "exp":Lgnu/expr/Expression;
    move-object v12, v0

    move-object v13, v7

    invoke-virtual {v12, v13}, Lgnu/kawa/xslt/XslTranslator;->push(Lgnu/expr/Expression;)V

    .line 279
    move-object v12, v0

    iget-object v12, v12, Lgnu/kawa/xslt/XslTranslator;->mexp:Lgnu/expr/ModuleExp;

    move-object v13, v7

    iput-object v13, v12, Lgnu/expr/ModuleExp;->body:Lgnu/expr/Expression;

    goto/16 :goto_1
.end method

.method public error(CLjava/lang/String;)V
    .locals 6

    .prologue
    .line 486
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/xslt/XslTranslator;
    move v1, p1

    .local v1, "kind":C
    move-object v2, p2

    .local v2, "message":Ljava/lang/String;
    move-object v3, v0

    invoke-virtual {v3}, Lgnu/kawa/xslt/XslTranslator;->getMessages()Lgnu/text/SourceMessages;

    move-result-object v3

    move v4, v1

    move-object v5, v2

    invoke-virtual {v3, v4, v5}, Lgnu/text/SourceMessages;->error(CLjava/lang/String;)V

    .line 487
    return-void
.end method

.method public getExpression()Lgnu/expr/Expression;
    .locals 2

    .prologue
    .line 481
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/xslt/XslTranslator;
    move-object v1, v0

    iget-object v1, v1, Lgnu/kawa/xslt/XslTranslator;->comp:Lgnu/expr/Compilation;

    iget-object v1, v1, Lgnu/expr/Compilation;->exprStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgnu/expr/Expression;

    move-object v0, v1

    .end local v0    # "this":Lgnu/kawa/xslt/XslTranslator;
    return-object v0
.end method

.method public ignoring()Z
    .locals 2

    .prologue
    .line 476
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/xslt/XslTranslator;
    const/4 v1, 0x0

    move v0, v1

    .end local v0    # "this":Lgnu/kawa/xslt/XslTranslator;
    return v0
.end method

.method maybeSkipWhitespace()V
    .locals 10

    .prologue
    .line 55
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/xslt/XslTranslator;
    move-object v7, v0

    iget-boolean v7, v7, Lgnu/kawa/xslt/XslTranslator;->preserveSpace:Z

    if-eqz v7, :cond_0

    .line 56
    .line 76
    :goto_0
    return-void

    .line 57
    :cond_0
    move-object v7, v0

    iget-object v7, v7, Lgnu/kawa/xslt/XslTranslator;->comp:Lgnu/expr/Compilation;

    iget-object v7, v7, Lgnu/expr/Compilation;->exprStack:Ljava/util/Stack;

    invoke-virtual {v7}, Ljava/util/Stack;->size()I

    move-result v7

    move v1, v7

    .line 58
    .local v1, "size":I
    :goto_1
    add-int/lit8 v1, v1, -0x1

    move v7, v1

    if-ltz v7, :cond_4

    .line 60
    move-object v7, v0

    iget-object v7, v7, Lgnu/kawa/xslt/XslTranslator;->comp:Lgnu/expr/Compilation;

    iget-object v7, v7, Lgnu/expr/Compilation;->exprStack:Ljava/util/Stack;

    move v8, v1

    invoke-virtual {v7, v8}, Ljava/util/Stack;->elementAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lgnu/expr/Expression;

    move-object v2, v7

    .line 61
    .local v2, "expr":Lgnu/expr/Expression;
    move-object v7, v2

    instance-of v7, v7, Lgnu/expr/QuoteExp;

    if-eqz v7, :cond_4

    .line 63
    move-object v7, v2

    check-cast v7, Lgnu/expr/QuoteExp;

    invoke-virtual {v7}, Lgnu/expr/QuoteExp;->getValue()Ljava/lang/Object;

    move-result-object v7

    move-object v3, v7

    .line 64
    .local v3, "value":Ljava/lang/Object;
    move-object v7, v3

    if-nez v7, :cond_1

    const-string/jumbo v7, ""

    :goto_2
    move-object v4, v7

    .line 65
    .local v4, "str":Ljava/lang/String;
    move-object v7, v4

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    move v5, v7

    .local v5, "j":I
    :goto_3
    add-int/lit8 v5, v5, -0x1

    move v7, v5

    if-ltz v7, :cond_3

    .line 67
    move-object v7, v4

    move v8, v5

    invoke-virtual {v7, v8}, Ljava/lang/String;->charAt(I)C

    move-result v7

    move v6, v7

    .line 68
    .local v6, "ch":C
    move v7, v6

    const/16 v8, 0x20

    if-eq v7, v8, :cond_2

    move v7, v6

    const/16 v8, 0x9

    if-eq v7, v8, :cond_2

    move v7, v6

    const/16 v8, 0xd

    if-eq v7, v8, :cond_2

    move v7, v6

    const/16 v8, 0xa

    if-eq v7, v8, :cond_2

    .line 69
    goto :goto_0

    .line 64
    .end local v4    # "str":Ljava/lang/String;
    .end local v5    # "j":I
    .end local v6    # "ch":C
    :cond_1
    move-object v7, v3

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    goto :goto_2

    .line 70
    .restart local v4    # "str":Ljava/lang/String;
    .restart local v5    # "j":I
    .restart local v6    # "ch":C
    :cond_2
    goto :goto_3

    .line 74
    .end local v6    # "ch":C
    :cond_3
    goto :goto_1

    .line 75
    .end local v2    # "expr":Lgnu/expr/Expression;
    .end local v3    # "value":Ljava/lang/Object;
    .end local v4    # "str":Ljava/lang/String;
    .end local v5    # "j":I
    :cond_4
    move-object v7, v0

    iget-object v7, v7, Lgnu/kawa/xslt/XslTranslator;->comp:Lgnu/expr/Compilation;

    iget-object v7, v7, Lgnu/expr/Compilation;->exprStack:Ljava/util/Stack;

    move v8, v1

    const/4 v9, 0x1

    add-int/lit8 v8, v8, 0x1

    invoke-virtual {v7, v8}, Ljava/util/Stack;->setSize(I)V

    .line 76
    goto :goto_0
.end method

.method public parse(Lgnu/expr/Compilation;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 508
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/xslt/XslTranslator;
    move-object v1, p1

    .local v1, "comp":Lgnu/expr/Compilation;
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lgnu/kawa/xslt/XslTranslator;->comp:Lgnu/expr/Compilation;

    .line 509
    move-object v3, v1

    iget-object v3, v3, Lgnu/expr/Compilation;->exprStack:Ljava/util/Stack;

    if-nez v3, :cond_0

    .line 510
    move-object v3, v1

    new-instance v4, Ljava/util/Stack;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    invoke-direct {v5}, Ljava/util/Stack;-><init>()V

    iput-object v4, v3, Lgnu/expr/Compilation;->exprStack:Ljava/util/Stack;

    .line 511
    :cond_0
    move-object v3, v1

    move-object v4, v0

    invoke-virtual {v3, v4}, Lgnu/expr/Compilation;->pushNewModule(Lgnu/text/Lexer;)Lgnu/expr/ModuleExp;

    move-result-object v3

    move-object v2, v3

    .line 512
    .local v2, "mexp":Lgnu/expr/ModuleExp;
    move-object v3, v1

    invoke-virtual {v3}, Lgnu/expr/Compilation;->mustCompileHere()V

    .line 513
    move-object v3, v0

    move-object v4, v2

    invoke-virtual {v3, v4}, Lgnu/kawa/xslt/XslTranslator;->startDocument(Lgnu/expr/ModuleExp;)V

    .line 514
    move-object v3, v0

    iget-object v3, v3, Lgnu/kawa/xslt/XslTranslator;->in:Lgnu/mapping/InPort;

    move-object v4, v0

    invoke-virtual {v4}, Lgnu/kawa/xslt/XslTranslator;->getMessages()Lgnu/text/SourceMessages;

    move-result-object v4

    move-object v5, v0

    invoke-static {v3, v4, v5}, Lgnu/xml/XMLParser;->parse(Lgnu/text/LineBufferedReader;Lgnu/text/SourceMessages;Lgnu/lists/Consumer;)V

    .line 515
    move-object v3, v0

    invoke-virtual {v3}, Lgnu/kawa/xslt/XslTranslator;->endDocument()V

    .line 516
    move-object v3, v1

    move-object v4, v2

    invoke-virtual {v3, v4}, Lgnu/expr/Compilation;->pop(Lgnu/expr/ScopeExp;)V

    .line 517
    return-void
.end method

.method parseXPath(Ljava/lang/String;)Lgnu/expr/Expression;
    .locals 12

    .prologue
    .line 285
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/xslt/XslTranslator;
    move-object v1, p1

    .local v1, "string":Ljava/lang/String;
    move-object v6, v0

    iget-object v6, v6, Lgnu/kawa/xslt/XslTranslator;->comp:Lgnu/expr/Compilation;

    invoke-virtual {v6}, Lgnu/expr/Compilation;->getMessages()Lgnu/text/SourceMessages;

    move-result-object v6

    move-object v2, v6

    .line 288
    .local v2, "messages":Lgnu/text/SourceMessages;
    :try_start_0
    new-instance v6, Lgnu/xquery/lang/XQParser;

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    new-instance v8, Lgnu/mapping/CharArrayInPort;

    move-object v11, v8

    move-object v8, v11

    move-object v9, v11

    move-object v10, v1

    invoke-direct {v9, v10}, Lgnu/mapping/CharArrayInPort;-><init>(Ljava/lang/String;)V

    move-object v9, v2

    move-object v10, v0

    iget-object v10, v10, Lgnu/kawa/xslt/XslTranslator;->interpreter:Lgnu/kawa/xslt/XSLT;

    invoke-direct {v7, v8, v9, v10}, Lgnu/xquery/lang/XQParser;-><init>(Lgnu/mapping/InPort;Lgnu/text/SourceMessages;Lgnu/xquery/lang/XQuery;)V

    move-object v3, v6

    .line 290
    .local v3, "parser":Lgnu/xquery/lang/XQParser;
    new-instance v6, Ljava/util/Vector;

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    const/16 v8, 0x14

    invoke-direct {v7, v8}, Ljava/util/Vector;-><init>(I)V

    move-object v4, v6

    .line 294
    .local v4, "exps":Ljava/util/Vector;
    :goto_0
    move-object v6, v3

    move-object v7, v0

    iget-object v7, v7, Lgnu/kawa/xslt/XslTranslator;->comp:Lgnu/expr/Compilation;

    invoke-virtual {v6, v7}, Lgnu/xquery/lang/XQParser;->parse(Lgnu/expr/Compilation;)Lgnu/expr/Expression;

    move-result-object v6

    move-object v5, v6

    .line 295
    .local v5, "sexp":Lgnu/expr/Expression;
    move-object v6, v5

    if-nez v6, :cond_0

    .line 296
    .line 299
    move-object v6, v4

    invoke-virtual {v6}, Ljava/util/Vector;->size()I

    move-result v6

    move v5, v6

    .line 300
    .local v5, "nexps":I
    move v6, v5

    if-nez v6, :cond_1

    .line 301
    sget-object v6, Lgnu/expr/QuoteExp;->voidExp:Lgnu/expr/QuoteExp;

    move-object v0, v6

    .line 303
    .end local v0    # "this":Lgnu/kawa/xslt/XslTranslator;
    :goto_1
    return-object v0

    .line 297
    .restart local v0    # "this":Lgnu/kawa/xslt/XslTranslator;
    .local v5, "sexp":Lgnu/expr/Expression;
    :cond_0
    move-object v6, v4

    move-object v7, v5

    invoke-virtual {v6, v7}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 298
    goto :goto_0

    .line 302
    .local v5, "nexps":I
    :cond_1
    move v6, v5

    const/4 v7, 0x1

    if-ne v6, v7, :cond_2

    .line 303
    move-object v6, v4

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lgnu/expr/Expression;

    move-object v0, v6

    goto :goto_1

    .line 305
    :cond_2
    new-instance v6, Ljava/lang/InternalError;

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    const-string/jumbo v8, "too many xpath expressions"

    invoke-direct {v7, v8}, Ljava/lang/InternalError;-><init>(Ljava/lang/String;)V

    throw v6
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 307
    .end local v3    # "parser":Lgnu/xquery/lang/XQParser;
    .end local v4    # "exps":Ljava/util/Vector;
    .end local v5    # "nexps":I
    :catch_0
    move-exception v6

    move-object v3, v6

    .line 309
    .local v3, "ex":Ljava/lang/Throwable;
    move-object v6, v3

    invoke-virtual {v6}, Ljava/lang/Throwable;->printStackTrace()V

    .line 310
    new-instance v6, Ljava/lang/InternalError;

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    new-instance v8, Ljava/lang/StringBuilder;

    move-object v11, v8

    move-object v8, v11

    move-object v9, v11

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "caught "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object v9, v3

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/InternalError;-><init>(Ljava/lang/String;)V

    throw v6
.end method

.method public popMatchingAttribute(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .locals 15

    .prologue
    .line 80
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/xslt/XslTranslator;
    move-object/from16 v1, p1

    .local v1, "ns":Ljava/lang/String;
    move-object/from16 v2, p2

    .local v2, "name":Ljava/lang/String;
    move/from16 v3, p3

    .local v3, "start":I
    move-object v13, v0

    iget-object v13, v13, Lgnu/kawa/xslt/XslTranslator;->comp:Lgnu/expr/Compilation;

    iget-object v13, v13, Lgnu/expr/Compilation;->exprStack:Ljava/util/Stack;

    invoke-virtual {v13}, Ljava/util/Stack;->size()I

    move-result v13

    move v4, v13

    .line 81
    .local v4, "size":I
    move v13, v3

    move v5, v13

    .local v5, "i":I
    :goto_0
    move v13, v5

    move v14, v4

    if-ge v13, v14, :cond_6

    .line 83
    move-object v13, v0

    iget-object v13, v13, Lgnu/kawa/xslt/XslTranslator;->comp:Lgnu/expr/Compilation;

    iget-object v13, v13, Lgnu/expr/Compilation;->exprStack:Ljava/util/Stack;

    move v14, v3

    invoke-virtual {v13, v14}, Ljava/util/Stack;->elementAt(I)Ljava/lang/Object;

    move-result-object v13

    move-object v6, v13

    .line 84
    .local v6, "el":Ljava/lang/Object;
    move-object v13, v6

    instance-of v13, v13, Lgnu/expr/ApplyExp;

    if-nez v13, :cond_0

    .line 85
    const/4 v13, 0x0

    move-object v0, v13

    .line 106
    .end local v0    # "this":Lgnu/kawa/xslt/XslTranslator;
    .end local v6    # "el":Ljava/lang/Object;
    :goto_1
    return-object v0

    .line 86
    .restart local v0    # "this":Lgnu/kawa/xslt/XslTranslator;
    .restart local v6    # "el":Ljava/lang/Object;
    :cond_0
    move-object v13, v6

    check-cast v13, Lgnu/expr/ApplyExp;

    move-object v7, v13

    .line 87
    .local v7, "aexp":Lgnu/expr/ApplyExp;
    move-object v13, v7

    invoke-virtual {v13}, Lgnu/expr/ApplyExp;->getFunction()Lgnu/expr/Expression;

    move-result-object v13

    move-object v8, v13

    .line 88
    .local v8, "function":Lgnu/expr/Expression;
    move-object v13, v7

    invoke-virtual {v13}, Lgnu/expr/ApplyExp;->getFunction()Lgnu/expr/Expression;

    move-result-object v13

    sget-object v14, Lgnu/kawa/xml/MakeAttribute;->makeAttributeExp:Lgnu/expr/QuoteExp;

    if-eq v13, v14, :cond_1

    .line 89
    const/4 v13, 0x0

    move-object v0, v13

    goto :goto_1

    .line 90
    :cond_1
    move-object v13, v7

    invoke-virtual {v13}, Lgnu/expr/ApplyExp;->getArgs()[Lgnu/expr/Expression;

    move-result-object v13

    move-object v9, v13

    .line 91
    .local v9, "args":[Lgnu/expr/Expression;
    move-object v13, v9

    array-length v13, v13

    const/4 v14, 0x2

    if-eq v13, v14, :cond_2

    .line 92
    const/4 v13, 0x0

    move-object v0, v13

    goto :goto_1

    .line 93
    :cond_2
    move-object v13, v9

    const/4 v14, 0x0

    aget-object v13, v13, v14

    move-object v10, v13

    .line 94
    .local v10, "arg0":Lgnu/expr/Expression;
    move-object v13, v10

    instance-of v13, v13, Lgnu/expr/QuoteExp;

    if-nez v13, :cond_3

    .line 95
    const/4 v13, 0x0

    move-object v0, v13

    goto :goto_1

    .line 96
    :cond_3
    move-object v13, v10

    check-cast v13, Lgnu/expr/QuoteExp;

    invoke-virtual {v13}, Lgnu/expr/QuoteExp;->getValue()Ljava/lang/Object;

    move-result-object v13

    move-object v11, v13

    .line 97
    .local v11, "tag":Ljava/lang/Object;
    move-object v13, v11

    instance-of v13, v13, Lgnu/mapping/Symbol;

    if-nez v13, :cond_4

    .line 98
    const/4 v13, 0x0

    move-object v0, v13

    goto :goto_1

    .line 99
    :cond_4
    move-object v13, v11

    check-cast v13, Lgnu/mapping/Symbol;

    move-object v12, v13

    .line 100
    .local v12, "stag":Lgnu/mapping/Symbol;
    move-object v13, v12

    invoke-virtual {v13}, Lgnu/mapping/Symbol;->getLocalPart()Ljava/lang/String;

    move-result-object v13

    move-object v14, v2

    if-ne v13, v14, :cond_5

    move-object v13, v12

    invoke-virtual {v13}, Lgnu/mapping/Symbol;->getNamespaceURI()Ljava/lang/String;

    move-result-object v13

    move-object v14, v1

    if-ne v13, v14, :cond_5

    .line 102
    move-object v13, v0

    iget-object v13, v13, Lgnu/kawa/xslt/XslTranslator;->comp:Lgnu/expr/Compilation;

    iget-object v13, v13, Lgnu/expr/Compilation;->exprStack:Ljava/util/Stack;

    move v14, v5

    invoke-virtual {v13, v14}, Ljava/util/Stack;->removeElementAt(I)V

    .line 103
    move-object v13, v9

    const/4 v14, 0x1

    aget-object v13, v13, v14

    check-cast v13, Lgnu/expr/QuoteExp;

    invoke-virtual {v13}, Lgnu/expr/QuoteExp;->getValue()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    move-object v0, v13

    goto :goto_1

    .line 81
    :cond_5
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0

    .line 106
    .end local v6    # "el":Ljava/lang/Object;
    .end local v7    # "aexp":Lgnu/expr/ApplyExp;
    .end local v8    # "function":Lgnu/expr/Expression;
    .end local v9    # "args":[Lgnu/expr/Expression;
    .end local v10    # "arg0":Lgnu/expr/Expression;
    .end local v11    # "tag":Ljava/lang/Object;
    .end local v12    # "stag":Lgnu/mapping/Symbol;
    :cond_6
    const/4 v13, 0x0

    move-object v0, v13

    goto :goto_1
.end method

.method popTemplateBody(I)Lgnu/expr/Expression;
    .locals 10

    .prologue
    .line 112
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/xslt/XslTranslator;
    move v1, p1

    .local v1, "start":I
    move-object v5, v0

    iget-object v5, v5, Lgnu/kawa/xslt/XslTranslator;->comp:Lgnu/expr/Compilation;

    iget-object v5, v5, Lgnu/expr/Compilation;->exprStack:Ljava/util/Stack;

    invoke-virtual {v5}, Ljava/util/Stack;->size()I

    move-result v5

    move v6, v1

    sub-int/2addr v5, v6

    move v2, v5

    .line 114
    .local v2, "i":I
    move v5, v2

    new-array v5, v5, [Lgnu/expr/Expression;

    move-object v4, v5

    .line 115
    .local v4, "args":[Lgnu/expr/Expression;
    :goto_0
    add-int/lit8 v2, v2, -0x1

    move v5, v2

    if-ltz v5, :cond_0

    .line 116
    move-object v5, v4

    move v6, v2

    move-object v7, v0

    iget-object v7, v7, Lgnu/kawa/xslt/XslTranslator;->comp:Lgnu/expr/Compilation;

    iget-object v7, v7, Lgnu/expr/Compilation;->exprStack:Ljava/util/Stack;

    invoke-virtual {v7}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lgnu/expr/Expression;

    aput-object v7, v5, v6

    goto :goto_0

    .line 117
    :cond_0
    new-instance v5, Lgnu/expr/ApplyExp;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    sget-object v7, Lgnu/kawa/functions/AppendValues;->appendValues:Lgnu/kawa/functions/AppendValues;

    move-object v8, v4

    invoke-direct {v6, v7, v8}, Lgnu/expr/ApplyExp;-><init>(Lgnu/mapping/Procedure;[Lgnu/expr/Expression;)V

    move-object v0, v5

    .end local v0    # "this":Lgnu/kawa/xslt/XslTranslator;
    return-object v0
.end method

.method push(Lgnu/expr/Expression;)V
    .locals 4

    .prologue
    .line 375
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/xslt/XslTranslator;
    move-object v1, p1

    .local v1, "exp":Lgnu/expr/Expression;
    move-object v2, v0

    iget-object v2, v2, Lgnu/kawa/xslt/XslTranslator;->comp:Lgnu/expr/Compilation;

    iget-object v2, v2, Lgnu/expr/Compilation;->exprStack:Ljava/util/Stack;

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 376
    return-void
.end method

.method push(Ljava/lang/Object;)V
    .locals 7

    .prologue
    .line 380
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/xslt/XslTranslator;
    move-object v1, p1

    .local v1, "value":Ljava/lang/Object;
    move-object v2, v0

    new-instance v3, Lgnu/expr/QuoteExp;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v1

    invoke-direct {v4, v5}, Lgnu/expr/QuoteExp;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v2, v3}, Lgnu/kawa/xslt/XslTranslator;->push(Lgnu/expr/Expression;)V

    .line 381
    return-void
.end method

.method resolveQNameExpression(Ljava/lang/String;)Lgnu/expr/Expression;
    .locals 7

    .prologue
    .line 499
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/xslt/XslTranslator;
    move-object v1, p1

    .local v1, "name":Ljava/lang/String;
    move-object v2, v1

    if-nez v2, :cond_0

    .line 500
    sget-object v2, Lgnu/expr/QuoteExp;->nullExp:Lgnu/expr/QuoteExp;

    move-object v0, v2

    .line 502
    .end local v0    # "this":Lgnu/kawa/xslt/XslTranslator;
    :goto_0
    return-object v0

    .restart local v0    # "this":Lgnu/kawa/xslt/XslTranslator;
    :cond_0
    new-instance v2, Lgnu/expr/QuoteExp;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const/4 v4, 0x0

    move-object v5, v1

    invoke-static {v4, v5}, Lgnu/mapping/Symbol;->make(Ljava/lang/Object;Ljava/lang/String;)Lgnu/mapping/Symbol;

    move-result-object v4

    invoke-direct {v3, v4}, Lgnu/expr/QuoteExp;-><init>(Ljava/lang/Object;)V

    move-object v0, v2

    goto :goto_0
.end method

.method public startAttribute(Ljava/lang/Object;)V
    .locals 5

    .prologue
    .line 165
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/xslt/XslTranslator;
    move-object v1, p1

    .local v1, "attrType":Ljava/lang/Object;
    move-object v2, v0

    iget-boolean v2, v2, Lgnu/kawa/xslt/XslTranslator;->inAttribute:Z

    if-eqz v2, :cond_0

    .line 166
    move-object v2, v0

    const/16 v3, 0x66

    const-string/jumbo v4, "internal error - attribute inside attribute"

    invoke-virtual {v2, v3, v4}, Lgnu/kawa/xslt/XslTranslator;->error(CLjava/lang/String;)V

    .line 167
    :cond_0
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lgnu/kawa/xslt/XslTranslator;->attributeType:Ljava/lang/Object;

    .line 168
    move-object v2, v0

    iget-object v2, v2, Lgnu/kawa/xslt/XslTranslator;->attributeValue:Ljava/lang/StringBuffer;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 169
    move-object v2, v0

    iget-object v2, v2, Lgnu/kawa/xslt/XslTranslator;->nesting:Ljava/lang/StringBuffer;

    move-object v3, v0

    iget-object v3, v3, Lgnu/kawa/xslt/XslTranslator;->comp:Lgnu/expr/Compilation;

    iget-object v3, v3, Lgnu/expr/Compilation;->exprStack:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->size()I

    move-result v3

    int-to-char v3, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v2

    .line 170
    move-object v2, v0

    const/4 v3, 0x1

    iput-boolean v3, v2, Lgnu/kawa/xslt/XslTranslator;->inAttribute:Z

    .line 171
    return-void
.end method

.method public startDocument()V
    .locals 0

    .prologue
    .line 426
    return-void
.end method

.method public startDocument(Lgnu/expr/ModuleExp;)V
    .locals 4

    .prologue
    .line 430
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/xslt/XslTranslator;
    move-object v1, p1

    .local v1, "mexp":Lgnu/expr/ModuleExp;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lgnu/kawa/xslt/XslTranslator;->mexp:Lgnu/expr/ModuleExp;

    .line 431
    move-object v2, v0

    invoke-virtual {v2}, Lgnu/kawa/xslt/XslTranslator;->startDocument()V

    .line 432
    return-void
.end method

.method public startElement(Ljava/lang/Object;)V
    .locals 8

    .prologue
    .line 139
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/xslt/XslTranslator;
    move-object v1, p1

    .local v1, "type":Ljava/lang/Object;
    move-object v4, v0

    invoke-virtual {v4}, Lgnu/kawa/xslt/XslTranslator;->maybeSkipWhitespace()V

    .line 140
    move-object v4, v1

    invoke-static {v4}, Lgnu/kawa/xslt/XslTranslator;->isXslTag(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    move-object v2, v4

    .line 141
    .local v2, "xslTag":Ljava/lang/String;
    move-object v4, v2

    const-string/jumbo v5, "template"

    if-ne v4, v5, :cond_3

    .line 143
    move-object v4, v0

    iget-object v4, v4, Lgnu/kawa/xslt/XslTranslator;->templateLambda:Lgnu/expr/LambdaExp;

    if-eqz v4, :cond_0

    .line 144
    move-object v4, v0

    const-string/jumbo v5, "nested xsl:template"

    invoke-virtual {v4, v5}, Lgnu/kawa/xslt/XslTranslator;->error(Ljava/lang/String;)V

    .line 145
    :cond_0
    move-object v4, v0

    new-instance v5, Lgnu/expr/LambdaExp;

    move-object v7, v5

    move-object v5, v7

    move-object v6, v7

    invoke-direct {v6}, Lgnu/expr/LambdaExp;-><init>()V

    iput-object v5, v4, Lgnu/kawa/xslt/XslTranslator;->templateLambda:Lgnu/expr/LambdaExp;

    .line 151
    :cond_1
    :goto_0
    move-object v4, v1

    instance-of v4, v4, Lgnu/xml/XName;

    if-eqz v4, :cond_2

    .line 155
    move-object v4, v1

    check-cast v4, Lgnu/xml/XName;

    move-object v3, v4

    .line 156
    .local v3, "xn":Lgnu/xml/XName;
    move-object v4, v3

    invoke-virtual {v4}, Lgnu/xml/XName;->getNamespaceURI()Ljava/lang/String;

    move-result-object v4

    move-object v5, v3

    invoke-virtual {v5}, Lgnu/xml/XName;->getLocalPart()Ljava/lang/String;

    move-result-object v5

    move-object v6, v3

    invoke-virtual {v6}, Lgnu/xml/XName;->getPrefix()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lgnu/mapping/Symbol;->make(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lgnu/mapping/Symbol;

    move-result-object v4

    move-object v1, v4

    .line 159
    .end local v1    # "type":Ljava/lang/Object;
    .end local v3    # "xn":Lgnu/xml/XName;
    :cond_2
    move-object v4, v0

    iget-object v4, v4, Lgnu/kawa/xslt/XslTranslator;->nesting:Ljava/lang/StringBuffer;

    move-object v5, v0

    iget-object v5, v5, Lgnu/kawa/xslt/XslTranslator;->comp:Lgnu/expr/Compilation;

    iget-object v5, v5, Lgnu/expr/Compilation;->exprStack:Ljava/util/Stack;

    invoke-virtual {v5}, Ljava/util/Stack;->size()I

    move-result v5

    int-to-char v5, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v4

    .line 160
    move-object v4, v0

    move-object v5, v1

    invoke-virtual {v4, v5}, Lgnu/kawa/xslt/XslTranslator;->push(Ljava/lang/Object;)V

    .line 161
    return-void

    .line 149
    .restart local v1    # "type":Ljava/lang/Object;
    :cond_3
    move-object v4, v2

    const-string/jumbo v5, "text"

    if-ne v4, v5, :cond_1

    .line 150
    move-object v4, v0

    const/4 v5, 0x0

    iput-boolean v5, v4, Lgnu/kawa/xslt/XslTranslator;->preserveSpace:Z

    goto :goto_0
.end method

.method public write(I)V
    .locals 10

    .prologue
    .line 316
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/xslt/XslTranslator;
    move v1, p1

    .local v1, "v":I
    move-object v4, v0

    iget-boolean v4, v4, Lgnu/kawa/xslt/XslTranslator;->inAttribute:Z

    if-eqz v4, :cond_0

    .line 319
    move-object v4, v0

    iget-object v4, v4, Lgnu/kawa/xslt/XslTranslator;->attributeValue:Ljava/lang/StringBuffer;

    move v5, v1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->appendCodePoint(I)Ljava/lang/StringBuffer;

    move-result-object v4

    .line 337
    :goto_0
    return-void

    .line 327
    :cond_0
    move v4, v1

    const/high16 v5, 0x10000

    if-ge v4, v5, :cond_1

    .line 328
    move v4, v1

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    move-object v2, v4

    .line 335
    .local v2, "str":Ljava/lang/String;
    :goto_1
    move-object v4, v0

    move-object v5, v2

    invoke-virtual {v4, v5}, Lgnu/kawa/xslt/XslTranslator;->push(Ljava/lang/Object;)V

    goto :goto_0

    .line 331
    .end local v2    # "str":Ljava/lang/String;
    :cond_1
    const/4 v4, 0x2

    new-array v4, v4, [C

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    const/4 v6, 0x0

    move v7, v1

    const/high16 v8, 0x10000

    sub-int/2addr v7, v8

    const/16 v8, 0xa

    shr-int/lit8 v7, v7, 0xa

    const v8, 0xd800

    add-int/2addr v7, v8

    int-to-char v7, v7

    aput-char v7, v5, v6

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    const/4 v6, 0x1

    move v7, v1

    const/16 v8, 0x3ff

    and-int/lit16 v7, v7, 0x3ff

    const v8, 0xdc00

    add-int/2addr v7, v8

    int-to-char v7, v7

    aput-char v7, v5, v6

    move-object v3, v4

    .line 333
    .local v3, "c2":[C
    new-instance v4, Ljava/lang/String;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    move-object v6, v3

    invoke-direct {v5, v6}, Ljava/lang/String;-><init>([C)V

    move-object v2, v4

    .restart local v2    # "str":Ljava/lang/String;
    goto :goto_1
.end method

.method public write(Ljava/lang/CharSequence;II)V
    .locals 8

    .prologue
    .line 465
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/xslt/XslTranslator;
    move-object v1, p1

    .local v1, "str":Ljava/lang/CharSequence;
    move v2, p2

    .local v2, "start":I
    move v3, p3

    .local v3, "length":I
    move-object v4, v0

    move-object v5, v1

    move v6, v2

    move v7, v3

    invoke-interface {v5, v6, v7}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lgnu/kawa/xslt/XslTranslator;->write(Ljava/lang/String;)V

    .line 466
    return-void
.end method

.method public write(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 456
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/xslt/XslTranslator;
    move-object v1, p1

    .local v1, "str":Ljava/lang/String;
    move-object v2, v0

    iget-boolean v2, v2, Lgnu/kawa/xslt/XslTranslator;->inAttribute:Z

    if-eqz v2, :cond_0

    .line 457
    move-object v2, v0

    iget-object v2, v2, Lgnu/kawa/xslt/XslTranslator;->attributeValue:Ljava/lang/StringBuffer;

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    .line 460
    :goto_0
    return-void

    .line 459
    :cond_0
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Lgnu/kawa/xslt/XslTranslator;->push(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public write([CII)V
    .locals 11

    .prologue
    .line 448
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/xslt/XslTranslator;
    move-object v1, p1

    .local v1, "buf":[C
    move v2, p2

    .local v2, "off":I
    move v3, p3

    .local v3, "len":I
    move-object v4, v0

    iget-boolean v4, v4, Lgnu/kawa/xslt/XslTranslator;->inAttribute:Z

    if-eqz v4, :cond_0

    .line 449
    move-object v4, v0

    iget-object v4, v4, Lgnu/kawa/xslt/XslTranslator;->attributeValue:Ljava/lang/StringBuffer;

    move-object v5, v1

    move v6, v2

    move v7, v3

    invoke-virtual {v4, v5, v6, v7}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    move-result-object v4

    .line 452
    :goto_0
    return-void

    .line 451
    :cond_0
    move-object v4, v0

    new-instance v5, Ljava/lang/String;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    move-object v7, v1

    move v8, v2

    move v9, v3

    invoke-direct {v6, v7, v8, v9}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v4, v5}, Lgnu/kawa/xslt/XslTranslator;->push(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public writeBoolean(Z)V
    .locals 4

    .prologue
    .line 385
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/xslt/XslTranslator;
    move v1, p1

    .local v1, "v":Z
    move-object v2, v0

    iget-boolean v2, v2, Lgnu/kawa/xslt/XslTranslator;->inAttribute:Z

    if-eqz v2, :cond_0

    .line 386
    move-object v2, v0

    iget-object v2, v2, Lgnu/kawa/xslt/XslTranslator;->attributeValue:Ljava/lang/StringBuffer;

    move v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    move-result-object v2

    .line 389
    :goto_0
    return-void

    .line 388
    :cond_0
    move-object v2, v0

    move v3, v1

    if-eqz v3, :cond_1

    sget-object v3, Lgnu/expr/QuoteExp;->trueExp:Lgnu/expr/QuoteExp;

    :goto_1
    invoke-virtual {v2, v3}, Lgnu/kawa/xslt/XslTranslator;->push(Lgnu/expr/Expression;)V

    goto :goto_0

    :cond_1
    sget-object v3, Lgnu/expr/QuoteExp;->falseExp:Lgnu/expr/QuoteExp;

    goto :goto_1
.end method

.method public writeDouble(D)V
    .locals 7

    .prologue
    .line 401
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/xslt/XslTranslator;
    move-wide v1, p1

    .local v1, "v":D
    move-object v3, v0

    iget-boolean v3, v3, Lgnu/kawa/xslt/XslTranslator;->inAttribute:Z

    if-eqz v3, :cond_0

    .line 402
    move-object v3, v0

    iget-object v3, v3, Lgnu/kawa/xslt/XslTranslator;->attributeValue:Ljava/lang/StringBuffer;

    move-wide v4, v1

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuffer;->append(D)Ljava/lang/StringBuffer;

    move-result-object v3

    .line 405
    :goto_0
    return-void

    .line 404
    :cond_0
    move-object v3, v0

    move-wide v4, v1

    invoke-static {v4, v5}, Lgnu/math/DFloNum;->make(D)Lgnu/math/DFloNum;

    move-result-object v4

    invoke-virtual {v3, v4}, Lgnu/kawa/xslt/XslTranslator;->push(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public writeFloat(F)V
    .locals 6

    .prologue
    .line 393
    move-object v1, p0

    .local v1, "this":Lgnu/kawa/xslt/XslTranslator;
    move v2, p1

    .local v2, "v":F
    move-object v3, v1

    iget-boolean v3, v3, Lgnu/kawa/xslt/XslTranslator;->inAttribute:Z

    if-eqz v3, :cond_0

    .line 394
    move-object v3, v1

    iget-object v3, v3, Lgnu/kawa/xslt/XslTranslator;->attributeValue:Ljava/lang/StringBuffer;

    move v4, v2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(F)Ljava/lang/StringBuffer;

    move-result-object v3

    .line 397
    :goto_0
    return-void

    .line 396
    :cond_0
    move-object v3, v1

    move v4, v2

    float-to-double v4, v4

    invoke-static {v4, v5}, Lgnu/math/DFloNum;->make(D)Lgnu/math/DFloNum;

    move-result-object v4

    invoke-virtual {v3, v4}, Lgnu/kawa/xslt/XslTranslator;->push(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public writeInt(I)V
    .locals 4

    .prologue
    .line 409
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/xslt/XslTranslator;
    move v1, p1

    .local v1, "v":I
    move-object v2, v0

    iget-boolean v2, v2, Lgnu/kawa/xslt/XslTranslator;->inAttribute:Z

    if-eqz v2, :cond_0

    .line 410
    move-object v2, v0

    iget-object v2, v2, Lgnu/kawa/xslt/XslTranslator;->attributeValue:Ljava/lang/StringBuffer;

    move v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v2

    .line 413
    :goto_0
    return-void

    .line 412
    :cond_0
    move-object v2, v0

    move v3, v1

    invoke-static {v3}, Lgnu/math/IntNum;->make(I)Lgnu/math/IntNum;

    move-result-object v3

    invoke-virtual {v2, v3}, Lgnu/kawa/xslt/XslTranslator;->push(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public writeLong(J)V
    .locals 7

    .prologue
    .line 417
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/xslt/XslTranslator;
    move-wide v1, p1

    .local v1, "v":J
    move-object v3, v0

    iget-boolean v3, v3, Lgnu/kawa/xslt/XslTranslator;->inAttribute:Z

    if-eqz v3, :cond_0

    .line 418
    move-object v3, v0

    iget-object v3, v3, Lgnu/kawa/xslt/XslTranslator;->attributeValue:Ljava/lang/StringBuffer;

    move-wide v4, v1

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v3

    .line 421
    :goto_0
    return-void

    .line 420
    :cond_0
    move-object v3, v0

    move-wide v4, v1

    invoke-static {v4, v5}, Lgnu/math/IntNum;->make(J)Lgnu/math/IntNum;

    move-result-object v4

    invoke-virtual {v3, v4}, Lgnu/kawa/xslt/XslTranslator;->push(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public writeObject(Ljava/lang/Object;)V
    .locals 4

    .prologue
    .line 440
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/xslt/XslTranslator;
    move-object v1, p1

    .local v1, "v":Ljava/lang/Object;
    move-object v2, v0

    iget-boolean v2, v2, Lgnu/kawa/xslt/XslTranslator;->inAttribute:Z

    if-eqz v2, :cond_0

    .line 441
    move-object v2, v0

    iget-object v2, v2, Lgnu/kawa/xslt/XslTranslator;->attributeValue:Ljava/lang/StringBuffer;

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v2

    .line 444
    :goto_0
    return-void

    .line 443
    :cond_0
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Lgnu/kawa/xslt/XslTranslator;->push(Ljava/lang/Object;)V

    goto :goto_0
.end method
