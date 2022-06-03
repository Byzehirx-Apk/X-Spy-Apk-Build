.class public Lkawa/lang/Translator;
.super Lgnu/expr/Compilation;
.source "Translator.java"


# static fields
.field private static errorExp:Lgnu/expr/Expression;

.field public static final getNamedPartDecl:Lgnu/expr/Declaration;


# instance fields
.field public curMethodLambda:Lgnu/expr/LambdaExp;

.field public currentMacroDefinition:Lkawa/lang/Macro;

.field currentSyntax:Lkawa/lang/Syntax;

.field private env:Lgnu/mapping/Environment;

.field public firstForm:I

.field public formStack:Ljava/util/Stack;

.field macroContext:Lgnu/expr/Declaration;

.field public matchArray:Lgnu/expr/Declaration;

.field notedAccess:Ljava/util/Vector;

.field public patternScope:Lkawa/lang/PatternScope;

.field public pendingForm:Ljava/lang/Object;

.field positionPair:Lgnu/lists/PairWithPosition;

.field renamedAliasStack:Ljava/util/Stack;

.field public templateScopeDecl:Lgnu/expr/Declaration;

.field public xmlElementNamespaces:Lgnu/xml/NamespaceBinding;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    .line 64
    const-string/jumbo v2, "gnu.kawa.functions.GetNamedPart"

    move-object v0, v2

    .line 65
    .local v0, "cname":Ljava/lang/String;
    const-string/jumbo v2, "getNamedPart"

    move-object v1, v2

    .line 66
    .local v1, "fname":Ljava/lang/String;
    move-object v2, v0

    move-object v3, v1

    invoke-static {v2, v3}, Lgnu/expr/Declaration;->getDeclarationFromStatic(Ljava/lang/String;Ljava/lang/String;)Lgnu/expr/Declaration;

    move-result-object v2

    sput-object v2, Lkawa/lang/Translator;->getNamedPartDecl:Lgnu/expr/Declaration;

    .line 67
    sget-object v2, Lgnu/kawa/lispexpr/LispLanguage;->getNamedPartLocation:Lgnu/kawa/reflect/StaticFieldLocation;

    sget-object v3, Lkawa/lang/Translator;->getNamedPartDecl:Lgnu/expr/Declaration;

    invoke-virtual {v2, v3}, Lgnu/kawa/reflect/StaticFieldLocation;->setDeclaration(Lgnu/expr/Declaration;)V

    .line 70
    new-instance v2, Lgnu/expr/ErrorExp;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const-string/jumbo v4, "unknown syntax error"

    invoke-direct {v3, v4}, Lgnu/expr/ErrorExp;-><init>(Ljava/lang/String;)V

    sput-object v2, Lkawa/lang/Translator;->errorExp:Lgnu/expr/Expression;

    return-void
.end method

.method public constructor <init>(Lgnu/expr/Language;Lgnu/text/SourceMessages;Lgnu/expr/NameLookup;)V
    .locals 9

    .prologue
    .line 74
    move-object v0, p0

    .local v0, "this":Lkawa/lang/Translator;
    move-object v1, p1

    .local v1, "language":Lgnu/expr/Language;
    move-object v2, p2

    .local v2, "messages":Lgnu/text/SourceMessages;
    move-object v3, p3

    .local v3, "lexical":Lgnu/expr/NameLookup;
    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    move-object v7, v3

    invoke-direct {v4, v5, v6, v7}, Lgnu/expr/Compilation;-><init>(Lgnu/expr/Language;Lgnu/text/SourceMessages;Lgnu/expr/NameLookup;)V

    .line 50
    move-object v4, v0

    new-instance v5, Ljava/util/Stack;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    invoke-direct {v6}, Ljava/util/Stack;-><init>()V

    iput-object v5, v4, Lkawa/lang/Translator;->formStack:Ljava/util/Stack;

    .line 57
    move-object v4, v0

    sget-object v5, Lgnu/xml/NamespaceBinding;->predefinedXML:Lgnu/xml/NamespaceBinding;

    iput-object v5, v4, Lkawa/lang/Translator;->xmlElementNamespaces:Lgnu/xml/NamespaceBinding;

    .line 75
    move-object v4, v0

    invoke-static {}, Lgnu/mapping/Environment;->getCurrent()Lgnu/mapping/Environment;

    move-result-object v5

    iput-object v5, v4, Lkawa/lang/Translator;->env:Lgnu/mapping/Environment;

    .line 76
    return-void
.end method

.method static getOriginalRef(Lgnu/expr/Declaration;)Lgnu/expr/ReferenceExp;
    .locals 3

    .prologue
    .line 147
    move-object v0, p0

    .local v0, "decl":Lgnu/expr/Declaration;
    move-object v2, v0

    if-eqz v2, :cond_0

    move-object v2, v0

    invoke-virtual {v2}, Lgnu/expr/Declaration;->isAlias()Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v2, v0

    invoke-virtual {v2}, Lgnu/expr/Declaration;->isIndirectBinding()Z

    move-result v2

    if-nez v2, :cond_0

    .line 149
    move-object v2, v0

    invoke-virtual {v2}, Lgnu/expr/Declaration;->getValue()Lgnu/expr/Expression;

    move-result-object v2

    move-object v1, v2

    .line 150
    .local v1, "value":Lgnu/expr/Expression;
    move-object v2, v1

    instance-of v2, v2, Lgnu/expr/ReferenceExp;

    if-eqz v2, :cond_0

    .line 151
    move-object v2, v1

    check-cast v2, Lgnu/expr/ReferenceExp;

    move-object v0, v2

    .line 153
    .end local v0    # "decl":Lgnu/expr/Declaration;
    :goto_0
    return-object v0

    .end local v1    # "value":Lgnu/expr/Expression;
    .restart local v0    # "decl":Lgnu/expr/Declaration;
    :cond_0
    const/4 v2, 0x0

    move-object v0, v2

    goto :goto_0
.end method

.method public static listLength(Ljava/lang/Object;)I
    .locals 7

    .prologue
    .line 500
    move-object v0, p0

    .local v0, "obj":Ljava/lang/Object;
    const/4 v5, 0x0

    move v1, v5

    .line 501
    .local v1, "n":I
    move-object v5, v0

    move-object v2, v5

    .line 502
    .local v2, "slow":Ljava/lang/Object;
    move-object v5, v0

    move-object v3, v5

    .line 506
    .local v3, "fast":Ljava/lang/Object;
    :goto_0
    move-object v5, v3

    instance-of v5, v5, Lkawa/lang/SyntaxForm;

    if-eqz v5, :cond_0

    .line 507
    move-object v5, v3

    check-cast v5, Lkawa/lang/SyntaxForm;

    invoke-interface {v5}, Lkawa/lang/SyntaxForm;->getDatum()Ljava/lang/Object;

    move-result-object v5

    move-object v3, v5

    goto :goto_0

    .line 508
    :cond_0
    :goto_1
    move-object v5, v2

    instance-of v5, v5, Lkawa/lang/SyntaxForm;

    if-eqz v5, :cond_1

    .line 509
    move-object v5, v2

    check-cast v5, Lkawa/lang/SyntaxForm;

    invoke-interface {v5}, Lkawa/lang/SyntaxForm;->getDatum()Ljava/lang/Object;

    move-result-object v5

    move-object v2, v5

    goto :goto_1

    .line 510
    :cond_1
    move-object v5, v3

    sget-object v6, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    if-ne v5, v6, :cond_2

    .line 511
    move v5, v1

    move v0, v5

    .line 526
    .end local v0    # "obj":Ljava/lang/Object;
    :goto_2
    return v0

    .line 512
    .restart local v0    # "obj":Ljava/lang/Object;
    :cond_2
    move-object v5, v3

    instance-of v5, v5, Lgnu/lists/Pair;

    if-nez v5, :cond_3

    .line 513
    const/4 v5, -0x1

    move v6, v1

    rsub-int/lit8 v5, v6, -0x1

    move v0, v5

    goto :goto_2

    .line 514
    :cond_3
    add-int/lit8 v1, v1, 0x1

    .line 515
    move-object v5, v3

    check-cast v5, Lgnu/lists/Pair;

    invoke-virtual {v5}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v5

    move-object v4, v5

    .line 516
    .local v4, "next":Ljava/lang/Object;
    :goto_3
    move-object v5, v4

    instance-of v5, v5, Lkawa/lang/SyntaxForm;

    if-eqz v5, :cond_4

    .line 517
    move-object v5, v4

    check-cast v5, Lkawa/lang/SyntaxForm;

    invoke-interface {v5}, Lkawa/lang/SyntaxForm;->getDatum()Ljava/lang/Object;

    move-result-object v5

    move-object v4, v5

    goto :goto_3

    .line 518
    :cond_4
    move-object v5, v4

    sget-object v6, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    if-ne v5, v6, :cond_5

    .line 519
    move v5, v1

    move v0, v5

    goto :goto_2

    .line 520
    :cond_5
    move-object v5, v4

    instance-of v5, v5, Lgnu/lists/Pair;

    if-nez v5, :cond_6

    .line 521
    const/4 v5, -0x1

    move v6, v1

    rsub-int/lit8 v5, v6, -0x1

    move v0, v5

    goto :goto_2

    .line 522
    :cond_6
    move-object v5, v2

    check-cast v5, Lgnu/lists/Pair;

    invoke-virtual {v5}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v5

    move-object v2, v5

    .line 523
    move-object v5, v4

    check-cast v5, Lgnu/lists/Pair;

    invoke-virtual {v5}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v5

    move-object v3, v5

    .line 524
    add-int/lit8 v1, v1, 0x1

    .line 525
    move-object v5, v3

    move-object v6, v2

    if-ne v5, v6, :cond_7

    .line 526
    const/high16 v5, -0x80000000

    move v0, v5

    goto :goto_2

    .line 527
    :cond_7
    goto :goto_0
.end method

.method private makeBody(ILgnu/expr/ScopeExp;)Lgnu/expr/Expression;
    .locals 12

    .prologue
    .line 1237
    move-object v0, p0

    .local v0, "this":Lkawa/lang/Translator;
    move v1, p1

    .local v1, "first":I
    move-object v2, p2

    .local v2, "scope":Lgnu/expr/ScopeExp;
    move-object v6, v0

    iget-object v6, v6, Lkawa/lang/Translator;->formStack:Ljava/util/Stack;

    invoke-virtual {v6}, Ljava/util/Stack;->size()I

    move-result v6

    move v7, v1

    sub-int/2addr v6, v7

    move v3, v6

    .line 1238
    .local v3, "nforms":I
    move v6, v3

    if-nez v6, :cond_0

    .line 1239
    sget-object v6, Lgnu/expr/QuoteExp;->voidExp:Lgnu/expr/QuoteExp;

    move-object v0, v6

    .line 1254
    .end local v0    # "this":Lkawa/lang/Translator;
    :goto_0
    return-object v0

    .line 1240
    .restart local v0    # "this":Lkawa/lang/Translator;
    :cond_0
    move v6, v3

    const/4 v7, 0x1

    if-ne v6, v7, :cond_1

    .line 1242
    move-object v6, v0

    iget-object v6, v6, Lkawa/lang/Translator;->formStack:Ljava/util/Stack;

    invoke-virtual {v6}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lgnu/expr/Expression;

    move-object v0, v6

    goto :goto_0

    .line 1246
    :cond_1
    move v6, v3

    new-array v6, v6, [Lgnu/expr/Expression;

    move-object v4, v6

    .line 1247
    .local v4, "exps":[Lgnu/expr/Expression;
    const/4 v6, 0x0

    move v5, v6

    .local v5, "i":I
    :goto_1
    move v6, v5

    move v7, v3

    if-ge v6, v7, :cond_2

    .line 1248
    move-object v6, v4

    move v7, v5

    move-object v8, v0

    iget-object v8, v8, Lkawa/lang/Translator;->formStack:Ljava/util/Stack;

    move v9, v1

    move v10, v5

    add-int/2addr v9, v10

    invoke-virtual {v8, v9}, Ljava/util/Stack;->elementAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lgnu/expr/Expression;

    aput-object v8, v6, v7

    .line 1247
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 1249
    :cond_2
    move-object v6, v0

    iget-object v6, v6, Lkawa/lang/Translator;->formStack:Ljava/util/Stack;

    move v7, v1

    invoke-virtual {v6, v7}, Ljava/util/Stack;->setSize(I)V

    .line 1250
    move-object v6, v2

    instance-of v6, v6, Lgnu/expr/ModuleExp;

    if-eqz v6, :cond_3

    .line 1251
    new-instance v6, Lgnu/expr/ApplyExp;

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    sget-object v8, Lgnu/kawa/functions/AppendValues;->appendValues:Lgnu/kawa/functions/AppendValues;

    move-object v9, v4

    invoke-direct {v7, v8, v9}, Lgnu/expr/ApplyExp;-><init>(Lgnu/mapping/Procedure;[Lgnu/expr/Expression;)V

    move-object v0, v6

    goto :goto_0

    .line 1254
    :cond_3
    move-object v6, v0

    invoke-virtual {v6}, Lkawa/lang/Translator;->getLanguage()Lgnu/expr/Language;

    move-result-object v6

    check-cast v6, Lgnu/kawa/lispexpr/LispLanguage;

    move-object v7, v4

    invoke-virtual {v6, v7}, Lgnu/kawa/lispexpr/LispLanguage;->makeBody([Lgnu/expr/Expression;)Lgnu/expr/Expression;

    move-result-object v6

    move-object v0, v6

    goto :goto_0
.end method

.method public static makePair(Lgnu/lists/Pair;Ljava/lang/Object;Ljava/lang/Object;)Lgnu/lists/Pair;
    .locals 9

    .prologue
    .line 1169
    move-object v0, p0

    .local v0, "pair":Lgnu/lists/Pair;
    move-object v1, p1

    .local v1, "car":Ljava/lang/Object;
    move-object v2, p2

    .local v2, "cdr":Ljava/lang/Object;
    move-object v3, v0

    instance-of v3, v3, Lgnu/lists/PairWithPosition;

    if-eqz v3, :cond_0

    .line 1170
    new-instance v3, Lgnu/lists/PairWithPosition;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    move-object v5, v0

    check-cast v5, Lgnu/lists/PairWithPosition;

    move-object v6, v1

    move-object v7, v2

    invoke-direct {v4, v5, v6, v7}, Lgnu/lists/PairWithPosition;-><init>(Lgnu/text/SourceLocator;Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v0, v3

    .line 1171
    .end local v0    # "pair":Lgnu/lists/Pair;
    :goto_0
    return-object v0

    .restart local v0    # "pair":Lgnu/lists/Pair;
    :cond_0
    new-instance v3, Lgnu/lists/Pair;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    move-object v5, v1

    move-object v6, v2

    invoke-direct {v4, v5, v6}, Lgnu/lists/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v0, v3

    goto :goto_0
.end method

.method private rewriteBody(Lgnu/lists/LList;)V
    .locals 7

    .prologue
    .line 1218
    move-object v0, p0

    .local v0, "this":Lkawa/lang/Translator;
    move-object v1, p1

    .local v1, "forms":Lgnu/lists/LList;
    :goto_0
    move-object v5, v1

    sget-object v6, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    if-eq v5, v6, :cond_0

    .line 1220
    move-object v5, v1

    check-cast v5, Lgnu/lists/Pair;

    move-object v2, v5

    .line 1221
    .local v2, "pair":Lgnu/lists/Pair;
    move-object v5, v0

    move-object v6, v2

    invoke-virtual {v5, v6}, Lkawa/lang/Translator;->pushPositionOf(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    move-object v3, v5

    .line 1224
    .local v3, "saved":Ljava/lang/Object;
    move-object v5, v0

    move-object v6, v2

    :try_start_0
    invoke-virtual {v6}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Lkawa/lang/Translator;->rewriteInBody(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1228
    move-object v5, v0

    move-object v6, v3

    invoke-virtual {v5, v6}, Lkawa/lang/Translator;->popPositionOf(Ljava/lang/Object;)V

    .line 1229
    .line 1230
    move-object v5, v2

    invoke-virtual {v5}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lgnu/lists/LList;

    move-object v1, v5

    .line 1231
    goto :goto_0

    .line 1228
    :catchall_0
    move-exception v5

    move-object v4, v5

    move-object v5, v0

    move-object v6, v3

    invoke-virtual {v5, v6}, Lkawa/lang/Translator;->popPositionOf(Ljava/lang/Object;)V

    move-object v5, v4

    throw v5

    .line 1232
    .end local v2    # "pair":Lgnu/lists/Pair;
    .end local v3    # "saved":Ljava/lang/Object;
    :cond_0
    return-void
.end method

.method public static safeCar(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .prologue
    .line 475
    move-object v0, p0

    .local v0, "obj":Ljava/lang/Object;
    :goto_0
    move-object v1, v0

    instance-of v1, v1, Lkawa/lang/SyntaxForm;

    if-eqz v1, :cond_0

    .line 476
    move-object v1, v0

    check-cast v1, Lkawa/lang/SyntaxForm;

    invoke-interface {v1}, Lkawa/lang/SyntaxForm;->getDatum()Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    goto :goto_0

    .line 477
    :cond_0
    move-object v1, v0

    instance-of v1, v1, Lgnu/lists/Pair;

    if-nez v1, :cond_1

    .line 478
    const/4 v1, 0x0

    move-object v0, v1

    .line 479
    .end local v0    # "obj":Ljava/lang/Object;
    :goto_1
    return-object v0

    .restart local v0    # "obj":Ljava/lang/Object;
    :cond_1
    move-object v1, v0

    check-cast v1, Lgnu/lists/Pair;

    invoke-virtual {v1}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lkawa/lang/Translator;->stripSyntax(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    goto :goto_1
.end method

.method public static safeCdr(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .prologue
    .line 484
    move-object v0, p0

    .local v0, "obj":Ljava/lang/Object;
    :goto_0
    move-object v1, v0

    instance-of v1, v1, Lkawa/lang/SyntaxForm;

    if-eqz v1, :cond_0

    .line 485
    move-object v1, v0

    check-cast v1, Lkawa/lang/SyntaxForm;

    invoke-interface {v1}, Lkawa/lang/SyntaxForm;->getDatum()Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    goto :goto_0

    .line 486
    :cond_0
    move-object v1, v0

    instance-of v1, v1, Lgnu/lists/Pair;

    if-nez v1, :cond_1

    .line 487
    const/4 v1, 0x0

    move-object v0, v1

    .line 488
    .end local v0    # "obj":Ljava/lang/Object;
    :goto_1
    return-object v0

    .restart local v0    # "obj":Ljava/lang/Object;
    :cond_1
    move-object v1, v0

    check-cast v1, Lgnu/lists/Pair;

    invoke-virtual {v1}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lkawa/lang/Translator;->stripSyntax(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    goto :goto_1
.end method

.method public static setLine(Lgnu/expr/Declaration;Ljava/lang/Object;)V
    .locals 4

    .prologue
    .line 816
    move-object v0, p0

    .local v0, "decl":Lgnu/expr/Declaration;
    move-object v1, p1

    .local v1, "location":Ljava/lang/Object;
    move-object v2, v1

    instance-of v2, v2, Lgnu/text/SourceLocator;

    if-eqz v2, :cond_0

    .line 817
    move-object v2, v0

    move-object v3, v1

    check-cast v3, Lgnu/text/SourceLocator;

    invoke-virtual {v2, v3}, Lgnu/expr/Declaration;->setLocation(Lgnu/text/SourceLocator;)V

    .line 818
    :cond_0
    return-void
.end method

.method public static setLine(Lgnu/expr/Expression;Ljava/lang/Object;)V
    .locals 4

    .prologue
    .line 810
    move-object v0, p0

    .local v0, "exp":Lgnu/expr/Expression;
    move-object v1, p1

    .local v1, "location":Ljava/lang/Object;
    move-object v2, v1

    instance-of v2, v2, Lgnu/text/SourceLocator;

    if-eqz v2, :cond_0

    .line 811
    move-object v2, v0

    move-object v3, v1

    check-cast v3, Lgnu/text/SourceLocator;

    invoke-virtual {v2, v3}, Lgnu/expr/Expression;->setLocation(Lgnu/text/SourceLocator;)V

    .line 812
    :cond_0
    return-void
.end method

.method public static stripSyntax(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .prologue
    .line 468
    move-object v0, p0

    .local v0, "obj":Ljava/lang/Object;
    :goto_0
    move-object v1, v0

    instance-of v1, v1, Lkawa/lang/SyntaxForm;

    if-eqz v1, :cond_0

    .line 469
    move-object v1, v0

    check-cast v1, Lkawa/lang/SyntaxForm;

    invoke-interface {v1}, Lkawa/lang/SyntaxForm;->getDatum()Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    goto :goto_0

    .line 470
    :cond_0
    move-object v1, v0

    move-object v0, v1

    .end local v0    # "obj":Ljava/lang/Object;
    return-object v0
.end method

.method static vectorReverse(Ljava/util/Vector;II)V
    .locals 11

    .prologue
    .line 1347
    move-object v0, p0

    .local v0, "vec":Ljava/util/Vector;
    move v1, p1

    .local v1, "start":I
    move v2, p2

    .local v2, "count":I
    move v7, v2

    const/4 v8, 0x2

    div-int/lit8 v7, v7, 0x2

    move v3, v7

    .line 1348
    .local v3, "j":I
    move v7, v1

    move v8, v2

    add-int/2addr v7, v8

    const/4 v8, 0x1

    add-int/lit8 v7, v7, -0x1

    move v4, v7

    .line 1349
    .local v4, "last":I
    const/4 v7, 0x0

    move v5, v7

    .local v5, "i":I
    :goto_0
    move v7, v5

    move v8, v3

    if-ge v7, v8, :cond_0

    .line 1351
    move-object v7, v0

    move v8, v1

    move v9, v5

    add-int/2addr v8, v9

    invoke-virtual {v7, v8}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v7

    move-object v6, v7

    .line 1352
    .local v6, "tmp":Ljava/lang/Object;
    move-object v7, v0

    move-object v8, v0

    move v9, v4

    move v10, v5

    sub-int/2addr v9, v10

    invoke-virtual {v8, v9}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v8

    move v9, v1

    move v10, v5

    add-int/2addr v9, v10

    invoke-virtual {v7, v8, v9}, Ljava/util/Vector;->setElementAt(Ljava/lang/Object;I)V

    .line 1353
    move-object v7, v0

    move-object v8, v6

    move v9, v4

    move v10, v5

    sub-int/2addr v9, v10

    invoke-virtual {v7, v8, v9}, Ljava/util/Vector;->setElementAt(Ljava/lang/Object;I)V

    .line 1349
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 1355
    .end local v6    # "tmp":Ljava/lang/Object;
    :cond_0
    return-void
.end method

.method public static wrapSyntax(Ljava/lang/Object;Lkawa/lang/SyntaxForm;)Ljava/lang/Object;
    .locals 4

    .prologue
    .line 936
    move-object v0, p0

    .local v0, "form":Ljava/lang/Object;
    move-object v1, p1

    .local v1, "syntax":Lkawa/lang/SyntaxForm;
    move-object v2, v1

    if-eqz v2, :cond_0

    move-object v2, v0

    instance-of v2, v2, Lgnu/expr/Expression;

    if-eqz v2, :cond_1

    .line 937
    :cond_0
    move-object v2, v0

    move-object v0, v2

    .line 939
    .end local v0    # "form":Ljava/lang/Object;
    :goto_0
    return-object v0

    .restart local v0    # "form":Ljava/lang/Object;
    :cond_1
    move-object v2, v0

    move-object v3, v1

    invoke-static {v2, v3}, Lkawa/lang/SyntaxForms;->fromDatumIfNeeded(Ljava/lang/Object;Lkawa/lang/SyntaxForm;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    goto :goto_0
.end method


# virtual methods
.method apply_rewrite(Lkawa/lang/Syntax;Lgnu/lists/Pair;)Lgnu/expr/Expression;
    .locals 9

    .prologue
    .line 128
    move-object v0, p0

    .local v0, "this":Lkawa/lang/Translator;
    move-object v1, p1

    .local v1, "syntax":Lkawa/lang/Syntax;
    move-object v2, p2

    .local v2, "form":Lgnu/lists/Pair;
    sget-object v6, Lkawa/lang/Translator;->errorExp:Lgnu/expr/Expression;

    move-object v3, v6

    .line 129
    .local v3, "exp":Lgnu/expr/Expression;
    move-object v6, v0

    iget-object v6, v6, Lkawa/lang/Translator;->currentSyntax:Lkawa/lang/Syntax;

    move-object v4, v6

    .line 130
    .local v4, "saveSyntax":Lkawa/lang/Syntax;
    move-object v6, v0

    move-object v7, v1

    iput-object v7, v6, Lkawa/lang/Translator;->currentSyntax:Lkawa/lang/Syntax;

    .line 133
    move-object v6, v1

    move-object v7, v2

    move-object v8, v0

    :try_start_0
    invoke-virtual {v6, v7, v8}, Lkawa/lang/Syntax;->rewriteForm(Lgnu/lists/Pair;Lkawa/lang/Translator;)Lgnu/expr/Expression;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v6

    move-object v3, v6

    .line 137
    move-object v6, v0

    move-object v7, v4

    iput-object v7, v6, Lkawa/lang/Translator;->currentSyntax:Lkawa/lang/Syntax;

    .line 138
    .line 139
    move-object v6, v3

    move-object v0, v6

    .end local v0    # "this":Lkawa/lang/Translator;
    return-object v0

    .line 137
    .restart local v0    # "this":Lkawa/lang/Translator;
    :catchall_0
    move-exception v6

    move-object v5, v6

    move-object v6, v0

    move-object v7, v4

    iput-object v7, v6, Lkawa/lang/Translator;->currentSyntax:Lkawa/lang/Syntax;

    move-object v6, v5

    throw v6
.end method

.method check_if_Syntax(Lgnu/expr/Declaration;)Lkawa/lang/Syntax;
    .locals 12

    .prologue
    .line 251
    move-object v1, p0

    .local v1, "this":Lkawa/lang/Translator;
    move-object v2, p1

    .local v2, "decl":Lgnu/expr/Declaration;
    move-object v7, v2

    invoke-static {v7}, Lgnu/expr/Declaration;->followAliases(Lgnu/expr/Declaration;)Lgnu/expr/Declaration;

    move-result-object v7

    move-object v3, v7

    .line 252
    .local v3, "d":Lgnu/expr/Declaration;
    const/4 v7, 0x0

    move-object v4, v7

    .line 253
    .local v4, "obj":Ljava/lang/Object;
    move-object v7, v3

    invoke-virtual {v7}, Lgnu/expr/Declaration;->getValue()Lgnu/expr/Expression;

    move-result-object v7

    move-object v5, v7

    .line 254
    .local v5, "dval":Lgnu/expr/Expression;
    move-object v7, v5

    if-eqz v7, :cond_4

    move-object v7, v3

    const-wide/32 v8, 0x8000

    invoke-virtual {v7, v8, v9}, Lgnu/expr/Declaration;->getFlag(J)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 258
    move-object v7, v2

    :try_start_0
    invoke-virtual {v7}, Lgnu/expr/Declaration;->getValue()Lgnu/expr/Expression;

    move-result-object v7

    instance-of v7, v7, Lgnu/expr/ReferenceExp;

    if-eqz v7, :cond_3

    .line 260
    move-object v7, v2

    invoke-virtual {v7}, Lgnu/expr/Declaration;->getValue()Lgnu/expr/Expression;

    move-result-object v7

    check-cast v7, Lgnu/expr/ReferenceExp;

    invoke-virtual {v7}, Lgnu/expr/ReferenceExp;->contextDecl()Lgnu/expr/Declaration;

    move-result-object v7

    move-object v6, v7

    .line 262
    .local v6, "context":Lgnu/expr/Declaration;
    move-object v7, v6

    if-eqz v7, :cond_2

    .line 263
    move-object v7, v1

    move-object v8, v6

    iput-object v8, v7, Lkawa/lang/Translator;->macroContext:Lgnu/expr/Declaration;

    .line 266
    .line 269
    .end local v6    # "context":Lgnu/expr/Declaration;
    :cond_0
    :goto_0
    move-object v7, v5

    move-object v8, v1

    iget-object v8, v8, Lkawa/lang/Translator;->env:Lgnu/mapping/Environment;

    invoke-virtual {v7, v8}, Lgnu/expr/Expression;->eval(Lgnu/mapping/Environment;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    move-object v4, v7

    .line 275
    .line 282
    .end local v4    # "obj":Ljava/lang/Object;
    :cond_1
    :goto_1
    move-object v7, v4

    instance-of v7, v7, Lkawa/lang/Syntax;

    if-eqz v7, :cond_5

    move-object v7, v4

    check-cast v7, Lkawa/lang/Syntax;

    :goto_2
    move-object v1, v7

    .end local v1    # "this":Lkawa/lang/Translator;
    return-object v1

    .line 264
    .restart local v1    # "this":Lkawa/lang/Translator;
    .restart local v4    # "obj":Ljava/lang/Object;
    .restart local v6    # "context":Lgnu/expr/Declaration;
    :cond_2
    move-object v7, v1

    :try_start_1
    iget-object v7, v7, Lkawa/lang/Translator;->current_scope:Lgnu/expr/ScopeExp;

    instance-of v7, v7, Lkawa/lang/TemplateScope;

    if-eqz v7, :cond_0

    .line 265
    move-object v7, v1

    move-object v8, v1

    iget-object v8, v8, Lkawa/lang/Translator;->current_scope:Lgnu/expr/ScopeExp;

    check-cast v8, Lkawa/lang/TemplateScope;

    iget-object v8, v8, Lkawa/lang/TemplateScope;->macroContext:Lgnu/expr/Declaration;

    iput-object v8, v7, Lkawa/lang/Translator;->macroContext:Lgnu/expr/Declaration;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 271
    .end local v6    # "context":Lgnu/expr/Declaration;
    :catch_0
    move-exception v7

    move-object v6, v7

    .line 273
    .local v6, "ex":Ljava/lang/Throwable;
    move-object v7, v6

    invoke-virtual {v7}, Ljava/lang/Throwable;->printStackTrace()V

    .line 274
    move-object v7, v1

    const/16 v8, 0x65

    new-instance v9, Ljava/lang/StringBuilder;

    move-object v11, v9

    move-object v9, v11

    move-object v10, v11

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "unable to evaluate macro for "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object v10, v2

    invoke-virtual {v10}, Lgnu/expr/Declaration;->getSymbol()Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Lkawa/lang/Translator;->error(CLjava/lang/String;)V

    .line 275
    goto :goto_1

    .line 267
    .end local v6    # "ex":Ljava/lang/Throwable;
    :cond_3
    move-object v7, v1

    :try_start_2
    iget-object v7, v7, Lkawa/lang/Translator;->current_scope:Lgnu/expr/ScopeExp;

    instance-of v7, v7, Lkawa/lang/TemplateScope;

    if-eqz v7, :cond_0

    .line 268
    move-object v7, v1

    move-object v8, v1

    iget-object v8, v8, Lkawa/lang/Translator;->current_scope:Lgnu/expr/ScopeExp;

    check-cast v8, Lkawa/lang/TemplateScope;

    iget-object v8, v8, Lkawa/lang/TemplateScope;->macroContext:Lgnu/expr/Declaration;

    iput-object v8, v7, Lkawa/lang/Translator;->macroContext:Lgnu/expr/Declaration;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 277
    :cond_4
    move-object v7, v2

    const-wide/32 v8, 0x8000

    invoke-virtual {v7, v8, v9}, Lgnu/expr/Declaration;->getFlag(J)Z

    move-result v7

    if-eqz v7, :cond_1

    move-object v7, v2

    invoke-virtual {v7}, Lgnu/expr/Declaration;->needsContext()Z

    move-result v7

    if-nez v7, :cond_1

    .line 279
    move-object v7, v2

    invoke-static {v7}, Lgnu/kawa/reflect/StaticFieldLocation;->make(Lgnu/expr/Declaration;)Lgnu/kawa/reflect/StaticFieldLocation;

    move-result-object v7

    move-object v6, v7

    .line 280
    .local v6, "loc":Lgnu/kawa/reflect/StaticFieldLocation;
    move-object v7, v6

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lgnu/kawa/reflect/StaticFieldLocation;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    move-object v4, v7

    goto :goto_1

    .line 282
    .end local v4    # "obj":Ljava/lang/Object;
    .end local v6    # "loc":Lgnu/kawa/reflect/StaticFieldLocation;
    :cond_5
    const/4 v7, 0x0

    goto :goto_2
.end method

.method public define(Ljava/lang/Object;Lkawa/lang/SyntaxForm;Lgnu/expr/ScopeExp;)Lgnu/expr/Declaration;
    .locals 13

    .prologue
    .line 1487
    move-object v0, p0

    .local v0, "this":Lkawa/lang/Translator;
    move-object v1, p1

    .local v1, "name":Ljava/lang/Object;
    move-object v2, p2

    .local v2, "nameSyntax":Lkawa/lang/SyntaxForm;
    move-object/from16 v3, p3

    .local v3, "defs":Lgnu/expr/ScopeExp;
    move-object v8, v2

    if-eqz v8, :cond_1

    move-object v8, v2

    invoke-interface {v8}, Lkawa/lang/SyntaxForm;->getScope()Lkawa/lang/TemplateScope;

    move-result-object v8

    move-object v9, v0

    invoke-virtual {v9}, Lkawa/lang/Translator;->currentScope()Lgnu/expr/ScopeExp;

    move-result-object v9

    if-eq v8, v9, :cond_1

    const/4 v8, 0x1

    :goto_0
    move v4, v8

    .line 1488
    .local v4, "aliasNeeded":Z
    move v8, v4

    if-eqz v8, :cond_2

    new-instance v8, Ljava/lang/String;

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    move-object v10, v1

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_1
    move-object v5, v8

    .line 1489
    .local v5, "declName":Ljava/lang/Object;
    move-object v8, v3

    move-object v9, v5

    const/16 v10, 0x77

    move-object v11, v0

    invoke-virtual {v8, v9, v10, v11}, Lgnu/expr/ScopeExp;->getDefine(Ljava/lang/Object;CLgnu/expr/Compilation;)Lgnu/expr/Declaration;

    move-result-object v8

    move-object v6, v8

    .line 1490
    .local v6, "decl":Lgnu/expr/Declaration;
    move v8, v4

    if-eqz v8, :cond_0

    .line 1492
    move-object v8, v0

    move-object v9, v1

    move-object v10, v6

    move-object v11, v2

    invoke-interface {v11}, Lkawa/lang/SyntaxForm;->getScope()Lkawa/lang/TemplateScope;

    move-result-object v11

    invoke-virtual {v8, v9, v10, v11}, Lkawa/lang/Translator;->makeRenamedAlias(Ljava/lang/Object;Lgnu/expr/Declaration;Lgnu/expr/ScopeExp;)Lgnu/expr/Declaration;

    move-result-object v8

    move-object v7, v8

    .line 1493
    .local v7, "alias":Lgnu/expr/Declaration;
    move-object v8, v2

    invoke-interface {v8}, Lkawa/lang/SyntaxForm;->getScope()Lkawa/lang/TemplateScope;

    move-result-object v8

    move-object v9, v7

    invoke-virtual {v8, v9}, Lkawa/lang/TemplateScope;->addDeclaration(Lgnu/expr/Declaration;)V

    .line 1495
    .end local v7    # "alias":Lgnu/expr/Declaration;
    :cond_0
    move-object v8, v0

    move-object v9, v6

    invoke-virtual {v8, v9}, Lkawa/lang/Translator;->push(Lgnu/expr/Declaration;)V

    .line 1496
    move-object v8, v6

    move-object v0, v8

    .end local v0    # "this":Lkawa/lang/Translator;
    return-object v0

    .line 1487
    .end local v4    # "aliasNeeded":Z
    .end local v5    # "declName":Ljava/lang/Object;
    .end local v6    # "decl":Lgnu/expr/Declaration;
    .restart local v0    # "this":Lkawa/lang/Translator;
    :cond_1
    const/4 v8, 0x0

    goto :goto_0

    .line 1488
    .restart local v4    # "aliasNeeded":Z
    :cond_2
    move-object v8, v1

    goto :goto_1
.end method

.method public exp2Type(Lgnu/lists/Pair;)Lgnu/bytecode/Type;
    .locals 12

    .prologue
    .line 874
    move-object v0, p0

    .local v0, "this":Lkawa/lang/Translator;
    move-object v1, p1

    .local v1, "typeSpecPair":Lgnu/lists/Pair;
    move-object v7, v0

    move-object v8, v1

    invoke-virtual {v7, v8}, Lkawa/lang/Translator;->pushPositionOf(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    move-object v2, v7

    .line 877
    .local v2, "saved":Ljava/lang/Object;
    move-object v7, v0

    move-object v8, v1

    const/4 v9, 0x0

    :try_start_0
    invoke-virtual {v7, v8, v9}, Lkawa/lang/Translator;->rewrite_car(Lgnu/lists/Pair;Z)Lgnu/expr/Expression;

    move-result-object v7

    move-object v3, v7

    .line 878
    .local v3, "texp":Lgnu/expr/Expression;
    move-object v7, v3

    move-object v8, v0

    invoke-static {v7, v8}, Lgnu/expr/InlineCalls;->inlineCalls(Lgnu/expr/Expression;Lgnu/expr/Compilation;)Lgnu/expr/Expression;

    move-result-object v7

    move-object v3, v7

    .line 879
    move-object v7, v3

    instance-of v7, v7, Lgnu/expr/ErrorExp;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v7, :cond_0

    .line 880
    const/4 v7, 0x0

    move-object v4, v7

    .line 910
    move-object v7, v0

    move-object v8, v2

    invoke-virtual {v7, v8}, Lkawa/lang/Translator;->popPositionOf(Ljava/lang/Object;)V

    move-object v7, v4

    move-object v0, v7

    .end local v0    # "this":Lkawa/lang/Translator;
    :goto_0
    return-object v0

    .line 881
    .restart local v0    # "this":Lkawa/lang/Translator;
    :cond_0
    move-object v7, v0

    :try_start_1
    invoke-virtual {v7}, Lkawa/lang/Translator;->getLanguage()Lgnu/expr/Language;

    move-result-object v7

    move-object v8, v3

    invoke-virtual {v7, v8}, Lgnu/expr/Language;->getTypeFor(Lgnu/expr/Expression;)Lgnu/bytecode/Type;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v7

    move-object v4, v7

    .line 882
    .local v4, "type":Lgnu/bytecode/Type;
    move-object v7, v4

    if-nez v7, :cond_1

    .line 886
    move-object v7, v3

    move-object v8, v0

    :try_start_2
    iget-object v8, v8, Lkawa/lang/Translator;->env:Lgnu/mapping/Environment;

    invoke-virtual {v7, v8}, Lgnu/expr/Expression;->eval(Lgnu/mapping/Environment;)Ljava/lang/Object;

    move-result-object v7

    move-object v5, v7

    .line 887
    .local v5, "t":Ljava/lang/Object;
    move-object v7, v5

    instance-of v7, v7, Ljava/lang/Class;

    if-eqz v7, :cond_2

    .line 888
    move-object v7, v5

    check-cast v7, Ljava/lang/Class;

    invoke-static {v7}, Lgnu/bytecode/Type;->make(Ljava/lang/Class;)Lgnu/bytecode/Type;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v7

    move-object v4, v7

    .line 894
    .line 896
    .end local v5    # "t":Ljava/lang/Object;
    :cond_1
    :goto_1
    move-object v7, v4

    if-nez v7, :cond_4

    .line 898
    move-object v7, v3

    :try_start_3
    instance-of v7, v7, Lgnu/expr/ReferenceExp;

    if-eqz v7, :cond_3

    .line 899
    move-object v7, v0

    const/16 v8, 0x65

    new-instance v9, Ljava/lang/StringBuilder;

    move-object v11, v9

    move-object v9, v11

    move-object v10, v11

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "unknown type name \'"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object v10, v3

    check-cast v10, Lgnu/expr/ReferenceExp;

    invoke-virtual {v10}, Lgnu/expr/ReferenceExp;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const/16 v10, 0x27

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Lkawa/lang/Translator;->error(CLjava/lang/String;)V

    .line 904
    :goto_2
    sget-object v7, Lgnu/bytecode/Type;->pointer_type:Lgnu/bytecode/ClassType;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-object v5, v7

    .line 910
    move-object v7, v0

    move-object v8, v2

    invoke-virtual {v7, v8}, Lkawa/lang/Translator;->popPositionOf(Ljava/lang/Object;)V

    move-object v7, v5

    move-object v0, v7

    goto :goto_0

    .line 889
    .restart local v5    # "t":Ljava/lang/Object;
    :cond_2
    move-object v7, v5

    :try_start_4
    instance-of v7, v7, Lgnu/bytecode/Type;

    if-eqz v7, :cond_1

    .line 890
    move-object v7, v5

    check-cast v7, Lgnu/bytecode/Type;
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-object v4, v7

    goto :goto_1

    .line 892
    .end local v5    # "t":Ljava/lang/Object;
    :catch_0
    move-exception v7

    move-object v5, v7

    goto :goto_1

    .line 902
    :cond_3
    move-object v7, v0

    const/16 v8, 0x65

    :try_start_5
    const-string/jumbo v9, "invalid type spec (must be \"type\" or \'type or <type>)"

    invoke-virtual {v7, v8, v9}, Lkawa/lang/Translator;->error(CLjava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_2

    .line 910
    .end local v3    # "texp":Lgnu/expr/Expression;
    .end local v4    # "type":Lgnu/bytecode/Type;
    :catchall_0
    move-exception v7

    move-object v6, v7

    move-object v7, v0

    move-object v8, v2

    invoke-virtual {v7, v8}, Lkawa/lang/Translator;->popPositionOf(Ljava/lang/Object;)V

    move-object v7, v6

    throw v7

    .line 906
    .restart local v3    # "texp":Lgnu/expr/Expression;
    .restart local v4    # "type":Lgnu/bytecode/Type;
    :cond_4
    move-object v7, v4

    move-object v5, v7

    .line 910
    move-object v7, v0

    move-object v8, v2

    invoke-virtual {v7, v8}, Lkawa/lang/Translator;->popPositionOf(Ljava/lang/Object;)V

    move-object v7, v5

    move-object v0, v7

    goto/16 :goto_0
.end method

.method public finishModule(Lgnu/expr/ModuleExp;)V
    .locals 12

    .prologue
    .line 1303
    move-object v1, p0

    .local v1, "this":Lkawa/lang/Translator;
    move-object v2, p1

    .local v2, "mexp":Lgnu/expr/ModuleExp;
    move-object v7, v2

    invoke-virtual {v7}, Lgnu/expr/ModuleExp;->isStatic()Z

    move-result v7

    move v3, v7

    .line 1304
    .local v3, "moduleStatic":Z
    move-object v7, v2

    invoke-virtual {v7}, Lgnu/expr/ModuleExp;->firstDecl()Lgnu/expr/Declaration;

    move-result-object v7

    move-object v4, v7

    .line 1305
    .local v4, "decl":Lgnu/expr/Declaration;
    :goto_0
    move-object v7, v4

    if-eqz v7, :cond_b

    .line 1307
    move-object v7, v4

    const-wide/16 v8, 0x200

    invoke-virtual {v7, v8, v9}, Lgnu/expr/Declaration;->getFlag(J)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 1309
    const-string/jumbo v7, "\'"

    move-object v5, v7

    .line 1310
    .local v5, "msg1":Ljava/lang/String;
    move-object v7, v4

    const-wide/16 v8, 0x400

    invoke-virtual {v7, v8, v9}, Lgnu/expr/Declaration;->getFlag(J)Z

    move-result v7

    if-eqz v7, :cond_5

    const-string/jumbo v7, "\' exported but never defined"

    :goto_1
    move-object v6, v7

    .line 1316
    .local v6, "msg2":Ljava/lang/String;
    move-object v7, v1

    const/16 v8, 0x65

    move-object v9, v4

    move-object v10, v5

    move-object v11, v6

    invoke-virtual {v7, v8, v9, v10, v11}, Lkawa/lang/Translator;->error(CLgnu/expr/Declaration;Ljava/lang/String;Ljava/lang/String;)V

    .line 1318
    .end local v5    # "msg1":Ljava/lang/String;
    .end local v6    # "msg2":Ljava/lang/String;
    :cond_0
    move-object v7, v2

    const/16 v8, 0x4000

    invoke-virtual {v7, v8}, Lgnu/expr/ModuleExp;->getFlag(I)Z

    move-result v7

    if-nez v7, :cond_1

    move-object v7, v1

    iget-boolean v7, v7, Lkawa/lang/Translator;->generateMain:Z

    if-eqz v7, :cond_3

    move-object v7, v1

    iget-boolean v7, v7, Lkawa/lang/Translator;->immediate:Z

    if-nez v7, :cond_3

    .line 1321
    :cond_1
    move-object v7, v4

    const-wide/16 v8, 0x400

    invoke-virtual {v7, v8, v9}, Lgnu/expr/Declaration;->getFlag(J)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 1323
    move-object v7, v4

    invoke-virtual {v7}, Lgnu/expr/Declaration;->isPrivate()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 1325
    move-object v7, v4

    const-wide/32 v8, 0x1000000

    invoke-virtual {v7, v8, v9}, Lgnu/expr/Declaration;->getFlag(J)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 1326
    move-object v7, v1

    const/16 v8, 0x65

    move-object v9, v4

    const-string/jumbo v10, "\'"

    const-string/jumbo v11, "\' is declared both private and exported"

    invoke-virtual {v7, v8, v9, v10, v11}, Lkawa/lang/Translator;->error(CLgnu/expr/Declaration;Ljava/lang/String;Ljava/lang/String;)V

    .line 1328
    :cond_2
    move-object v7, v4

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lgnu/expr/Declaration;->setPrivate(Z)V

    .line 1334
    :cond_3
    :goto_2
    move v7, v3

    if-eqz v7, :cond_8

    .line 1335
    move-object v7, v4

    const-wide/16 v8, 0x800

    invoke-virtual {v7, v8, v9}, Lgnu/expr/Declaration;->setFlag(J)V

    .line 1305
    :cond_4
    :goto_3
    move-object v7, v4

    invoke-virtual {v7}, Lgnu/expr/Declaration;->nextDecl()Lgnu/expr/Declaration;

    move-result-object v7

    move-object v4, v7

    goto :goto_0

    .line 1310
    .restart local v5    # "msg1":Ljava/lang/String;
    :cond_5
    move-object v7, v4

    const-wide/16 v8, 0x800

    invoke-virtual {v7, v8, v9}, Lgnu/expr/Declaration;->getFlag(J)Z

    move-result v7

    if-eqz v7, :cond_6

    const-string/jumbo v7, "\' declared static but never defined"

    goto :goto_1

    :cond_6
    const-string/jumbo v7, "\' declared but never defined"

    goto :goto_1

    .line 1332
    .end local v5    # "msg1":Ljava/lang/String;
    :cond_7
    move-object v7, v4

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Lgnu/expr/Declaration;->setPrivate(Z)V

    goto :goto_2

    .line 1336
    :cond_8
    move-object v7, v2

    const/high16 v8, 0x10000

    invoke-virtual {v7, v8}, Lgnu/expr/ModuleExp;->getFlag(I)Z

    move-result v7

    if-eqz v7, :cond_9

    move-object v7, v4

    const-wide/16 v8, 0x800

    invoke-virtual {v7, v8, v9}, Lgnu/expr/Declaration;->getFlag(J)Z

    move-result v7

    if-eqz v7, :cond_a

    :cond_9
    sget v7, Lgnu/expr/Compilation;->moduleStatic:I

    if-ltz v7, :cond_a

    move-object v7, v2

    const/high16 v8, 0x20000

    invoke-virtual {v7, v8}, Lgnu/expr/ModuleExp;->getFlag(I)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 1340
    :cond_a
    move-object v7, v4

    const-wide/16 v8, 0x1000

    invoke-virtual {v7, v8, v9}, Lgnu/expr/Declaration;->setFlag(J)V

    goto :goto_3

    .line 1342
    :cond_b
    return-void
.end method

.method public getCurrentSyntax()Lkawa/lang/Syntax;
    .locals 2

    .prologue
    .line 112
    move-object v0, p0

    .local v0, "this":Lkawa/lang/Translator;
    move-object v1, v0

    iget-object v1, v1, Lkawa/lang/Translator;->currentSyntax:Lkawa/lang/Syntax;

    move-object v0, v1

    .end local v0    # "this":Lkawa/lang/Translator;
    return-object v0
.end method

.method public final getGlobalEnvironment()Lgnu/mapping/Environment;
    .locals 2

    .prologue
    .line 78
    move-object v0, p0

    .local v0, "this":Lkawa/lang/Translator;
    move-object v1, v0

    iget-object v1, v1, Lkawa/lang/Translator;->env:Lgnu/mapping/Environment;

    move-object v0, v1

    .end local v0    # "this":Lkawa/lang/Translator;
    return-object v0
.end method

.method public lookup(Ljava/lang/Object;I)Lgnu/expr/Declaration;
    .locals 8

    .prologue
    .line 219
    move-object v0, p0

    .local v0, "this":Lkawa/lang/Translator;
    move-object v1, p1

    .local v1, "name":Ljava/lang/Object;
    move v2, p2

    .local v2, "namespace":I
    move-object v4, v0

    iget-object v4, v4, Lkawa/lang/Translator;->lexical:Lgnu/expr/NameLookup;

    move-object v5, v1

    move v6, v2

    invoke-virtual {v4, v5, v6}, Lgnu/expr/NameLookup;->lookup(Ljava/lang/Object;I)Lgnu/expr/Declaration;

    move-result-object v4

    move-object v3, v4

    .line 220
    .local v3, "decl":Lgnu/expr/Declaration;
    move-object v4, v3

    if-eqz v4, :cond_0

    move-object v4, v0

    invoke-virtual {v4}, Lkawa/lang/Translator;->getLanguage()Lgnu/expr/Language;

    move-result-object v4

    move-object v5, v3

    move v6, v2

    invoke-virtual {v4, v5, v6}, Lgnu/expr/Language;->hasNamespace(Lgnu/expr/Declaration;I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 221
    move-object v4, v3

    move-object v0, v4

    .line 222
    .end local v0    # "this":Lkawa/lang/Translator;
    :goto_0
    return-object v0

    .restart local v0    # "this":Lkawa/lang/Translator;
    :cond_0
    move-object v4, v0

    invoke-virtual {v4}, Lkawa/lang/Translator;->currentModule()Lgnu/expr/ModuleExp;

    move-result-object v4

    move-object v5, v1

    move-object v6, v0

    invoke-virtual {v6}, Lkawa/lang/Translator;->getLanguage()Lgnu/expr/Language;

    move-result-object v6

    move v7, v2

    invoke-virtual {v4, v5, v6, v7}, Lgnu/expr/ModuleExp;->lookup(Ljava/lang/Object;Lgnu/expr/Language;I)Lgnu/expr/Declaration;

    move-result-object v4

    move-object v0, v4

    goto :goto_0
.end method

.method public lookupGlobal(Ljava/lang/Object;)Lgnu/expr/Declaration;
    .locals 5

    .prologue
    .line 228
    move-object v0, p0

    .local v0, "this":Lkawa/lang/Translator;
    move-object v1, p1

    .local v1, "name":Ljava/lang/Object;
    move-object v2, v0

    move-object v3, v1

    const/4 v4, -0x1

    invoke-virtual {v2, v3, v4}, Lkawa/lang/Translator;->lookupGlobal(Ljava/lang/Object;I)Lgnu/expr/Declaration;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Lkawa/lang/Translator;
    return-object v0
.end method

.method public lookupGlobal(Ljava/lang/Object;I)Lgnu/expr/Declaration;
    .locals 9

    .prologue
    .line 234
    move-object v0, p0

    .local v0, "this":Lkawa/lang/Translator;
    move-object v1, p1

    .local v1, "name":Ljava/lang/Object;
    move v2, p2

    .local v2, "namespace":I
    move-object v5, v0

    invoke-virtual {v5}, Lkawa/lang/Translator;->currentModule()Lgnu/expr/ModuleExp;

    move-result-object v5

    move-object v3, v5

    .line 235
    .local v3, "module":Lgnu/expr/ModuleExp;
    move-object v5, v3

    move-object v6, v1

    move-object v7, v0

    invoke-virtual {v7}, Lkawa/lang/Translator;->getLanguage()Lgnu/expr/Language;

    move-result-object v7

    move v8, v2

    invoke-virtual {v5, v6, v7, v8}, Lgnu/expr/ModuleExp;->lookup(Ljava/lang/Object;Lgnu/expr/Language;I)Lgnu/expr/Declaration;

    move-result-object v5

    move-object v4, v5

    .line 236
    .local v4, "decl":Lgnu/expr/Declaration;
    move-object v5, v4

    if-nez v5, :cond_0

    .line 238
    move-object v5, v3

    move-object v6, v1

    invoke-virtual {v5, v6}, Lgnu/expr/ModuleExp;->getNoDefine(Ljava/lang/Object;)Lgnu/expr/Declaration;

    move-result-object v5

    move-object v4, v5

    .line 239
    move-object v5, v4

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lgnu/expr/Declaration;->setIndirectBinding(Z)V

    .line 241
    :cond_0
    move-object v5, v4

    move-object v0, v5

    .end local v0    # "this":Lkawa/lang/Translator;
    return-object v0
.end method

.method public makeRenamedAlias(Lgnu/expr/Declaration;Lgnu/expr/ScopeExp;)Lgnu/expr/Declaration;
    .locals 7

    .prologue
    .line 1421
    move-object v0, p0

    .local v0, "this":Lkawa/lang/Translator;
    move-object v1, p1

    .local v1, "decl":Lgnu/expr/Declaration;
    move-object v2, p2

    .local v2, "templateScope":Lgnu/expr/ScopeExp;
    move-object v3, v2

    if-nez v3, :cond_0

    .line 1422
    move-object v3, v1

    move-object v0, v3

    .line 1423
    .end local v0    # "this":Lkawa/lang/Translator;
    :goto_0
    return-object v0

    .restart local v0    # "this":Lkawa/lang/Translator;
    :cond_0
    move-object v3, v0

    move-object v4, v1

    invoke-virtual {v4}, Lgnu/expr/Declaration;->getSymbol()Ljava/lang/Object;

    move-result-object v4

    move-object v5, v1

    move-object v6, v2

    invoke-virtual {v3, v4, v5, v6}, Lkawa/lang/Translator;->makeRenamedAlias(Ljava/lang/Object;Lgnu/expr/Declaration;Lgnu/expr/ScopeExp;)Lgnu/expr/Declaration;

    move-result-object v3

    move-object v0, v3

    goto :goto_0
.end method

.method public makeRenamedAlias(Ljava/lang/Object;Lgnu/expr/Declaration;Lgnu/expr/ScopeExp;)Lgnu/expr/Declaration;
    .locals 10

    .prologue
    .line 1430
    move-object v0, p0

    .local v0, "this":Lkawa/lang/Translator;
    move-object v1, p1

    .local v1, "name":Ljava/lang/Object;
    move-object v2, p2

    .local v2, "decl":Lgnu/expr/Declaration;
    move-object v3, p3

    .local v3, "templateScope":Lgnu/expr/ScopeExp;
    new-instance v6, Lgnu/expr/Declaration;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    move-object v8, v1

    invoke-direct {v7, v8}, Lgnu/expr/Declaration;-><init>(Ljava/lang/Object;)V

    move-object v4, v6

    .line 1431
    .local v4, "alias":Lgnu/expr/Declaration;
    move-object v6, v4

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Lgnu/expr/Declaration;->setAlias(Z)V

    .line 1432
    move-object v6, v4

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Lgnu/expr/Declaration;->setPrivate(Z)V

    .line 1433
    move-object v6, v4

    move-object v7, v3

    iput-object v7, v6, Lgnu/expr/Declaration;->context:Lgnu/expr/ScopeExp;

    .line 1434
    new-instance v6, Lgnu/expr/ReferenceExp;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    move-object v8, v2

    invoke-direct {v7, v8}, Lgnu/expr/ReferenceExp;-><init>(Lgnu/expr/Declaration;)V

    move-object v5, v6

    .line 1435
    .local v5, "ref":Lgnu/expr/ReferenceExp;
    move-object v6, v5

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Lgnu/expr/ReferenceExp;->setDontDereference(Z)V

    .line 1436
    move-object v6, v4

    move-object v7, v5

    invoke-virtual {v6, v7}, Lgnu/expr/Declaration;->noteValue(Lgnu/expr/Expression;)V

    .line 1437
    move-object v6, v4

    move-object v0, v6

    .end local v0    # "this":Lkawa/lang/Translator;
    return-object v0
.end method

.method public matchQuoted(Lgnu/lists/Pair;)Ljava/lang/Object;
    .locals 6

    .prologue
    .line 210
    move-object v0, p0

    .local v0, "this":Lkawa/lang/Translator;
    move-object v1, p1

    .local v1, "pair":Lgnu/lists/Pair;
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v3}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v3

    const-string/jumbo v4, "quote"

    invoke-virtual {v2, v3, v4}, Lkawa/lang/Translator;->matches(Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v2, v1

    invoke-virtual {v2}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Lgnu/lists/Pair;

    if-eqz v2, :cond_0

    move-object v2, v1

    invoke-virtual {v2}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lgnu/lists/Pair;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v1, v3

    invoke-virtual {v2}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v2

    sget-object v3, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    if-ne v2, v3, :cond_0

    .line 213
    move-object v2, v1

    invoke-virtual {v2}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    .line 214
    .end local v0    # "this":Lkawa/lang/Translator;
    :goto_0
    return-object v0

    .restart local v0    # "this":Lkawa/lang/Translator;
    :cond_0
    const/4 v2, 0x0

    move-object v0, v2

    goto :goto_0
.end method

.method public final matches(Ljava/lang/Object;Ljava/lang/String;)Z
    .locals 7

    .prologue
    .line 164
    move-object v0, p0

    .local v0, "this":Lkawa/lang/Translator;
    move-object v1, p1

    .local v1, "form":Ljava/lang/Object;
    move-object v2, p2

    .local v2, "literal":Ljava/lang/String;
    move-object v3, v0

    move-object v4, v1

    const/4 v5, 0x0

    move-object v6, v2

    invoke-virtual {v3, v4, v5, v6}, Lkawa/lang/Translator;->matches(Ljava/lang/Object;Lkawa/lang/SyntaxForm;Ljava/lang/String;)Z

    move-result v3

    move v0, v3

    .end local v0    # "this":Lkawa/lang/Translator;
    return v0
.end method

.method public matches(Ljava/lang/Object;Lkawa/lang/SyntaxForm;Lgnu/mapping/Symbol;)Z
    .locals 8

    .prologue
    .line 190
    move-object v0, p0

    .local v0, "this":Lkawa/lang/Translator;
    move-object v1, p1

    .local v1, "form":Ljava/lang/Object;
    move-object v2, p2

    .local v2, "syntax":Lkawa/lang/SyntaxForm;
    move-object v3, p3

    .local v3, "literal":Lgnu/mapping/Symbol;
    move-object v5, v2

    if-eqz v5, :cond_0

    .line 194
    :cond_0
    move-object v5, v1

    instance-of v5, v5, Lkawa/lang/SyntaxForm;

    if-eqz v5, :cond_1

    .line 197
    move-object v5, v1

    check-cast v5, Lkawa/lang/SyntaxForm;

    invoke-interface {v5}, Lkawa/lang/SyntaxForm;->getDatum()Ljava/lang/Object;

    move-result-object v5

    move-object v1, v5

    .line 199
    :cond_1
    move-object v5, v1

    instance-of v5, v5, Lgnu/mapping/SimpleSymbol;

    if-eqz v5, :cond_2

    move-object v5, v0

    move-object v6, v1

    invoke-virtual {v5, v6}, Lkawa/lang/Translator;->selfEvaluatingSymbol(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 201
    move-object v5, v0

    iget-object v5, v5, Lkawa/lang/Translator;->lexical:Lgnu/expr/NameLookup;

    move-object v6, v1

    const/4 v7, -0x1

    invoke-virtual {v5, v6, v7}, Lgnu/expr/NameLookup;->lookup(Ljava/lang/Object;I)Lgnu/expr/Declaration;

    move-result-object v5

    invoke-static {v5}, Lkawa/lang/Translator;->getOriginalRef(Lgnu/expr/Declaration;)Lgnu/expr/ReferenceExp;

    move-result-object v5

    move-object v4, v5

    .line 202
    .local v4, "rexp":Lgnu/expr/ReferenceExp;
    move-object v5, v4

    if-eqz v5, :cond_2

    .line 203
    move-object v5, v4

    invoke-virtual {v5}, Lgnu/expr/ReferenceExp;->getSymbol()Ljava/lang/Object;

    move-result-object v5

    move-object v1, v5

    .line 205
    .end local v4    # "rexp":Lgnu/expr/ReferenceExp;
    :cond_2
    move-object v5, v1

    move-object v6, v3

    if-ne v5, v6, :cond_3

    const/4 v5, 0x1

    :goto_0
    move v0, v5

    .end local v0    # "this":Lkawa/lang/Translator;
    return v0

    .restart local v0    # "this":Lkawa/lang/Translator;
    :cond_3
    const/4 v5, 0x0

    goto :goto_0
.end method

.method public matches(Ljava/lang/Object;Lkawa/lang/SyntaxForm;Ljava/lang/String;)Z
    .locals 8

    .prologue
    .line 169
    move-object v0, p0

    .local v0, "this":Lkawa/lang/Translator;
    move-object v1, p1

    .local v1, "form":Ljava/lang/Object;
    move-object v2, p2

    .local v2, "syntax":Lkawa/lang/SyntaxForm;
    move-object v3, p3

    .local v3, "literal":Ljava/lang/String;
    move-object v5, v2

    if-eqz v5, :cond_0

    .line 173
    :cond_0
    move-object v5, v1

    instance-of v5, v5, Lkawa/lang/SyntaxForm;

    if-eqz v5, :cond_1

    .line 176
    move-object v5, v1

    check-cast v5, Lkawa/lang/SyntaxForm;

    invoke-interface {v5}, Lkawa/lang/SyntaxForm;->getDatum()Ljava/lang/Object;

    move-result-object v5

    move-object v1, v5

    .line 178
    :cond_1
    move-object v5, v1

    instance-of v5, v5, Lgnu/mapping/SimpleSymbol;

    if-eqz v5, :cond_2

    move-object v5, v0

    move-object v6, v1

    invoke-virtual {v5, v6}, Lkawa/lang/Translator;->selfEvaluatingSymbol(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 180
    move-object v5, v0

    iget-object v5, v5, Lkawa/lang/Translator;->lexical:Lgnu/expr/NameLookup;

    move-object v6, v1

    const/4 v7, -0x1

    invoke-virtual {v5, v6, v7}, Lgnu/expr/NameLookup;->lookup(Ljava/lang/Object;I)Lgnu/expr/Declaration;

    move-result-object v5

    invoke-static {v5}, Lkawa/lang/Translator;->getOriginalRef(Lgnu/expr/Declaration;)Lgnu/expr/ReferenceExp;

    move-result-object v5

    move-object v4, v5

    .line 181
    .local v4, "rexp":Lgnu/expr/ReferenceExp;
    move-object v5, v4

    if-eqz v5, :cond_2

    .line 182
    move-object v5, v4

    invoke-virtual {v5}, Lgnu/expr/ReferenceExp;->getSymbol()Ljava/lang/Object;

    move-result-object v5

    move-object v1, v5

    .line 184
    .end local v4    # "rexp":Lgnu/expr/ReferenceExp;
    :cond_2
    move-object v5, v1

    instance-of v5, v5, Lgnu/mapping/SimpleSymbol;

    if-eqz v5, :cond_3

    move-object v5, v1

    check-cast v5, Lgnu/mapping/Symbol;

    invoke-virtual {v5}, Lgnu/mapping/Symbol;->getLocalPart()Ljava/lang/String;

    move-result-object v5

    move-object v6, v3

    if-ne v5, v6, :cond_3

    const/4 v5, 0x1

    :goto_0
    move v0, v5

    .end local v0    # "this":Lkawa/lang/Translator;
    return v0

    .restart local v0    # "this":Lkawa/lang/Translator;
    :cond_3
    const/4 v5, 0x0

    goto :goto_0
.end method

.method public namespaceResolve(Lgnu/expr/Expression;Lgnu/expr/Expression;)Lgnu/mapping/Symbol;
    .locals 6

    .prologue
    .line 463
    move-object v0, p0

    .local v0, "this":Lkawa/lang/Translator;
    move-object v1, p1

    .local v1, "context":Lgnu/expr/Expression;
    move-object v2, p2

    .local v2, "member":Lgnu/expr/Expression;
    move-object v3, v0

    move-object v4, v0

    move-object v5, v1

    invoke-virtual {v4, v5}, Lkawa/lang/Translator;->namespaceResolvePrefix(Lgnu/expr/Expression;)Lgnu/mapping/Namespace;

    move-result-object v4

    move-object v5, v2

    invoke-virtual {v3, v4, v5}, Lkawa/lang/Translator;->namespaceResolve(Lgnu/mapping/Namespace;Lgnu/expr/Expression;)Lgnu/mapping/Symbol;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Lkawa/lang/Translator;
    return-object v0
.end method

.method public namespaceResolve(Lgnu/mapping/Namespace;Lgnu/expr/Expression;)Lgnu/mapping/Symbol;
    .locals 6

    .prologue
    .line 453
    move-object v0, p0

    .local v0, "this":Lkawa/lang/Translator;
    move-object v1, p1

    .local v1, "ns":Lgnu/mapping/Namespace;
    move-object v2, p2

    .local v2, "member":Lgnu/expr/Expression;
    move-object v4, v1

    if-eqz v4, :cond_0

    move-object v4, v2

    instance-of v4, v4, Lgnu/expr/QuoteExp;

    if-eqz v4, :cond_0

    .line 455
    move-object v4, v2

    check-cast v4, Lgnu/expr/QuoteExp;

    invoke-virtual {v4}, Lgnu/expr/QuoteExp;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v4

    move-object v3, v4

    .line 456
    .local v3, "mem":Ljava/lang/String;
    move-object v4, v1

    move-object v5, v3

    invoke-virtual {v4, v5}, Lgnu/mapping/Namespace;->getSymbol(Ljava/lang/String;)Lgnu/mapping/Symbol;

    move-result-object v4

    move-object v0, v4

    .line 458
    .end local v0    # "this":Lkawa/lang/Translator;
    .end local v3    # "mem":Ljava/lang/String;
    :goto_0
    return-object v0

    .restart local v0    # "this":Lkawa/lang/Translator;
    :cond_0
    const/4 v4, 0x0

    move-object v0, v4

    goto :goto_0
.end method

.method public namespaceResolve(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11

    .prologue
    .line 566
    move-object v0, p0

    .local v0, "this":Lkawa/lang/Translator;
    move-object v1, p1

    .local v1, "name":Ljava/lang/Object;
    move-object v7, v1

    instance-of v7, v7, Lgnu/mapping/SimpleSymbol;

    if-nez v7, :cond_1

    .line 569
    move-object v7, v1

    instance-of v7, v7, Lgnu/lists/Pair;

    if-eqz v7, :cond_1

    move-object v7, v1

    check-cast v7, Lgnu/lists/Pair;

    move-object v10, v7

    move-object v7, v10

    move-object v8, v10

    move-object v2, v8

    .local v2, "p":Lgnu/lists/Pair;
    invoke-static {v7}, Lkawa/lang/Translator;->safeCar(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    sget-object v8, Lgnu/kawa/lispexpr/LispLanguage;->lookup_sym:Lgnu/mapping/Symbol;

    if-ne v7, v8, :cond_1

    move-object v7, v2

    invoke-virtual {v7}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v7

    instance-of v7, v7, Lgnu/lists/Pair;

    if-eqz v7, :cond_1

    move-object v7, v2

    invoke-virtual {v7}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lgnu/lists/Pair;

    move-object v10, v7

    move-object v7, v10

    move-object v8, v10

    move-object v2, v8

    invoke-virtual {v7}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v7

    instance-of v7, v7, Lgnu/lists/Pair;

    if-eqz v7, :cond_1

    .line 574
    move-object v7, v0

    move-object v8, v2

    invoke-virtual {v8}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v7, v8}, Lkawa/lang/Translator;->rewrite(Ljava/lang/Object;)Lgnu/expr/Expression;

    move-result-object v7

    move-object v3, v7

    .line 575
    .local v3, "part1":Lgnu/expr/Expression;
    move-object v7, v0

    move-object v8, v2

    invoke-virtual {v8}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lgnu/lists/Pair;

    invoke-virtual {v8}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v7, v8}, Lkawa/lang/Translator;->rewrite(Ljava/lang/Object;)Lgnu/expr/Expression;

    move-result-object v7

    move-object v4, v7

    .line 576
    .local v4, "part2":Lgnu/expr/Expression;
    move-object v7, v0

    move-object v8, v3

    move-object v9, v4

    invoke-virtual {v7, v8, v9}, Lkawa/lang/Translator;->namespaceResolve(Lgnu/expr/Expression;Lgnu/expr/Expression;)Lgnu/mapping/Symbol;

    move-result-object v7

    move-object v5, v7

    .line 577
    .local v5, "sym":Lgnu/mapping/Symbol;
    move-object v7, v5

    if-eqz v7, :cond_0

    .line 578
    move-object v7, v5

    move-object v0, v7

    .line 584
    .end local v0    # "this":Lkawa/lang/Translator;
    .end local v2    # "p":Lgnu/lists/Pair;
    .end local v3    # "part1":Lgnu/expr/Expression;
    .end local v4    # "part2":Lgnu/expr/Expression;
    .end local v5    # "sym":Lgnu/mapping/Symbol;
    :goto_0
    return-object v0

    .line 579
    .restart local v0    # "this":Lkawa/lang/Translator;
    .restart local v2    # "p":Lgnu/lists/Pair;
    .restart local v3    # "part1":Lgnu/expr/Expression;
    .restart local v4    # "part2":Lgnu/expr/Expression;
    .restart local v5    # "sym":Lgnu/mapping/Symbol;
    :cond_0
    move-object v7, v3

    move-object v8, v4

    invoke-static {v7, v8}, Lgnu/kawa/functions/CompileNamedPart;->combineName(Lgnu/expr/Expression;Lgnu/expr/Expression;)Ljava/lang/String;

    move-result-object v7

    move-object v6, v7

    .line 580
    .local v6, "combinedName":Ljava/lang/String;
    move-object v7, v6

    if-eqz v7, :cond_1

    .line 581
    sget-object v7, Lgnu/mapping/Namespace;->EmptyNamespace:Lgnu/mapping/Namespace;

    move-object v8, v6

    invoke-virtual {v7, v8}, Lgnu/mapping/Namespace;->getSymbol(Ljava/lang/String;)Lgnu/mapping/Symbol;

    move-result-object v7

    move-object v0, v7

    goto :goto_0

    .line 584
    .end local v2    # "p":Lgnu/lists/Pair;
    .end local v3    # "part1":Lgnu/expr/Expression;
    .end local v4    # "part2":Lgnu/expr/Expression;
    .end local v5    # "sym":Lgnu/mapping/Symbol;
    .end local v6    # "combinedName":Ljava/lang/String;
    :cond_1
    move-object v7, v1

    move-object v0, v7

    goto :goto_0
.end method

.method public namespaceResolvePrefix(Lgnu/expr/Expression;)Lgnu/mapping/Namespace;
    .locals 10

    .prologue
    .line 421
    move-object v0, p0

    .local v0, "this":Lkawa/lang/Translator;
    move-object v1, p1

    .local v1, "context":Lgnu/expr/Expression;
    move-object v7, v1

    instance-of v7, v7, Lgnu/expr/ReferenceExp;

    if-eqz v7, :cond_5

    .line 423
    move-object v7, v1

    check-cast v7, Lgnu/expr/ReferenceExp;

    move-object v2, v7

    .line 424
    .local v2, "rexp":Lgnu/expr/ReferenceExp;
    move-object v7, v2

    invoke-virtual {v7}, Lgnu/expr/ReferenceExp;->getBinding()Lgnu/expr/Declaration;

    move-result-object v7

    move-object v3, v7

    .line 426
    .local v3, "decl":Lgnu/expr/Declaration;
    move-object v7, v3

    if-eqz v7, :cond_0

    move-object v7, v3

    const-wide/32 v8, 0x10000

    invoke-virtual {v7, v8, v9}, Lgnu/expr/Declaration;->getFlag(J)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 428
    :cond_0
    move-object v7, v2

    invoke-virtual {v7}, Lgnu/expr/ReferenceExp;->getSymbol()Ljava/lang/Object;

    move-result-object v7

    move-object v5, v7

    .line 429
    .local v5, "rsym":Ljava/lang/Object;
    move-object v7, v5

    instance-of v7, v7, Lgnu/mapping/Symbol;

    if-eqz v7, :cond_1

    move-object v7, v5

    check-cast v7, Lgnu/mapping/Symbol;

    :goto_0
    move-object v6, v7

    .line 431
    .local v6, "sym":Lgnu/mapping/Symbol;
    move-object v7, v0

    iget-object v7, v7, Lkawa/lang/Translator;->env:Lgnu/mapping/Environment;

    move-object v8, v6

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Lgnu/mapping/Environment;->get(Lgnu/mapping/EnvironmentKey;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    move-object v4, v7

    .line 439
    .end local v5    # "rsym":Ljava/lang/Object;
    .end local v6    # "sym":Lgnu/mapping/Symbol;
    :goto_1
    move-object v7, v4

    instance-of v7, v7, Lgnu/mapping/Namespace;

    if-eqz v7, :cond_5

    .line 441
    move-object v7, v4

    check-cast v7, Lgnu/mapping/Namespace;

    move-object v5, v7

    .line 442
    .local v5, "ns":Lgnu/mapping/Namespace;
    move-object v7, v5

    invoke-virtual {v7}, Lgnu/mapping/Namespace;->getName()Ljava/lang/String;

    move-result-object v7

    move-object v6, v7

    .line 443
    .local v6, "uri":Ljava/lang/String;
    move-object v7, v6

    if-eqz v7, :cond_4

    move-object v7, v6

    const-string/jumbo v8, "class:"

    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 444
    const/4 v7, 0x0

    move-object v0, v7

    .line 448
    .end local v0    # "this":Lkawa/lang/Translator;
    .end local v2    # "rexp":Lgnu/expr/ReferenceExp;
    .end local v3    # "decl":Lgnu/expr/Declaration;
    .end local v5    # "ns":Lgnu/mapping/Namespace;
    .end local v6    # "uri":Ljava/lang/String;
    :goto_2
    return-object v0

    .line 429
    .restart local v0    # "this":Lkawa/lang/Translator;
    .restart local v2    # "rexp":Lgnu/expr/ReferenceExp;
    .restart local v3    # "decl":Lgnu/expr/Declaration;
    .local v5, "rsym":Ljava/lang/Object;
    :cond_1
    move-object v7, v0

    iget-object v7, v7, Lkawa/lang/Translator;->env:Lgnu/mapping/Environment;

    move-object v8, v5

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lgnu/mapping/Environment;->getSymbol(Ljava/lang/String;)Lgnu/mapping/Symbol;

    move-result-object v7

    goto :goto_0

    .line 433
    .end local v5    # "rsym":Ljava/lang/Object;
    :cond_2
    move-object v7, v3

    invoke-virtual {v7}, Lgnu/expr/Declaration;->isNamespaceDecl()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 435
    move-object v7, v3

    invoke-virtual {v7}, Lgnu/expr/Declaration;->getConstantValue()Ljava/lang/Object;

    move-result-object v7

    move-object v4, v7

    .local v4, "val":Ljava/lang/Object;
    goto :goto_1

    .line 438
    .end local v4    # "val":Ljava/lang/Object;
    :cond_3
    const/4 v7, 0x0

    move-object v4, v7

    .restart local v4    # "val":Ljava/lang/Object;
    goto :goto_1

    .line 445
    .end local v4    # "val":Ljava/lang/Object;
    .local v5, "ns":Lgnu/mapping/Namespace;
    .restart local v6    # "uri":Ljava/lang/String;
    :cond_4
    move-object v7, v5

    move-object v0, v7

    goto :goto_2

    .line 448
    .end local v2    # "rexp":Lgnu/expr/ReferenceExp;
    .end local v3    # "decl":Lgnu/expr/Declaration;
    .end local v5    # "ns":Lgnu/mapping/Namespace;
    .end local v6    # "uri":Ljava/lang/String;
    :cond_5
    const/4 v7, 0x0

    move-object v0, v7

    goto :goto_2
.end method

.method public noteAccess(Ljava/lang/Object;Lgnu/expr/ScopeExp;)V
    .locals 7

    .prologue
    .line 1266
    move-object v0, p0

    .local v0, "this":Lkawa/lang/Translator;
    move-object v1, p1

    .local v1, "name":Ljava/lang/Object;
    move-object v2, p2

    .local v2, "scope":Lgnu/expr/ScopeExp;
    move-object v3, v0

    iget-object v3, v3, Lkawa/lang/Translator;->notedAccess:Ljava/util/Vector;

    if-nez v3, :cond_0

    .line 1267
    move-object v3, v0

    new-instance v4, Ljava/util/Vector;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    invoke-direct {v5}, Ljava/util/Vector;-><init>()V

    iput-object v4, v3, Lkawa/lang/Translator;->notedAccess:Ljava/util/Vector;

    .line 1268
    :cond_0
    move-object v3, v0

    iget-object v3, v3, Lkawa/lang/Translator;->notedAccess:Ljava/util/Vector;

    move-object v4, v1

    invoke-virtual {v3, v4}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 1269
    move-object v3, v0

    iget-object v3, v3, Lkawa/lang/Translator;->notedAccess:Ljava/util/Vector;

    move-object v4, v2

    invoke-virtual {v3, v4}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 1270
    return-void
.end method

.method public parse(Ljava/lang/Object;)Lgnu/expr/Expression;
    .locals 4

    .prologue
    .line 82
    move-object v0, p0

    .local v0, "this":Lkawa/lang/Translator;
    move-object v1, p1

    .local v1, "input":Ljava/lang/Object;
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Lkawa/lang/Translator;->rewrite(Ljava/lang/Object;)Lgnu/expr/Expression;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Lkawa/lang/Translator;
    return-object v0
.end method

.method public popForms(I)Ljava/lang/Object;
    .locals 10

    .prologue
    .line 944
    move-object v0, p0

    .local v0, "this":Lkawa/lang/Translator;
    move v1, p1

    .local v1, "first":I
    move-object v6, v0

    iget-object v6, v6, Lkawa/lang/Translator;->formStack:Ljava/util/Stack;

    invoke-virtual {v6}, Ljava/util/Stack;->size()I

    move-result v6

    move v2, v6

    .line 945
    .local v2, "last":I
    move v6, v2

    move v7, v1

    if-ne v6, v7, :cond_0

    .line 946
    sget-object v6, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    move-object v0, v6

    .line 958
    .end local v0    # "this":Lkawa/lang/Translator;
    :goto_0
    return-object v0

    .line 948
    .restart local v0    # "this":Lkawa/lang/Translator;
    :cond_0
    move v6, v2

    move v7, v1

    const/4 v8, 0x1

    add-int/lit8 v7, v7, 0x1

    if-ne v6, v7, :cond_1

    .line 949
    move-object v6, v0

    iget-object v6, v6, Lkawa/lang/Translator;->formStack:Ljava/util/Stack;

    move v7, v1

    invoke-virtual {v6, v7}, Ljava/util/Stack;->elementAt(I)Ljava/lang/Object;

    move-result-object v6

    move-object v3, v6

    .line 957
    :goto_1
    move-object v6, v0

    iget-object v6, v6, Lkawa/lang/Translator;->formStack:Ljava/util/Stack;

    move v7, v1

    invoke-virtual {v6, v7}, Ljava/util/Stack;->setSize(I)V

    .line 958
    move-object v6, v3

    move-object v0, v6

    goto :goto_0

    .line 952
    :cond_1
    new-instance v6, Lgnu/mapping/Values;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    invoke-direct {v7}, Lgnu/mapping/Values;-><init>()V

    move-object v4, v6

    .line 953
    .local v4, "vals":Lgnu/mapping/Values;
    move v6, v1

    move v5, v6

    .local v5, "i":I
    :goto_2
    move v6, v5

    move v7, v2

    if-ge v6, v7, :cond_2

    .line 954
    move-object v6, v4

    move-object v7, v0

    iget-object v7, v7, Lkawa/lang/Translator;->formStack:Ljava/util/Stack;

    move v8, v5

    invoke-virtual {v7, v8}, Ljava/util/Stack;->elementAt(I)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v7}, Lgnu/mapping/Values;->writeObject(Ljava/lang/Object;)V

    .line 953
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 955
    :cond_2
    move-object v6, v4

    move-object v3, v6

    .local v3, "r":Lgnu/mapping/Values;
    goto :goto_1
.end method

.method public popPositionOf(Ljava/lang/Object;)V
    .locals 4

    .prologue
    .line 852
    move-object v0, p0

    .local v0, "this":Lkawa/lang/Translator;
    move-object v1, p1

    .local v1, "saved":Ljava/lang/Object;
    move-object v2, v1

    if-nez v2, :cond_0

    .line 853
    .line 858
    :goto_0
    return-void

    .line 854
    :cond_0
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Lkawa/lang/Translator;->setLine(Ljava/lang/Object;)V

    .line 855
    move-object v2, v0

    move-object v3, v1

    check-cast v3, Lgnu/lists/PairWithPosition;

    iput-object v3, v2, Lkawa/lang/Translator;->positionPair:Lgnu/lists/PairWithPosition;

    .line 856
    move-object v2, v0

    iget-object v2, v2, Lkawa/lang/Translator;->positionPair:Lgnu/lists/PairWithPosition;

    invoke-virtual {v2}, Lgnu/lists/PairWithPosition;->getCar()Ljava/lang/Object;

    move-result-object v2

    sget-object v3, Lgnu/expr/Special;->eof:Ljava/lang/Object;

    if-ne v2, v3, :cond_1

    .line 857
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Lkawa/lang/Translator;->positionPair:Lgnu/lists/PairWithPosition;

    invoke-virtual {v3}, Lgnu/lists/PairWithPosition;->getCdr()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lgnu/lists/PairWithPosition;

    iput-object v3, v2, Lkawa/lang/Translator;->positionPair:Lgnu/lists/PairWithPosition;

    .line 858
    :cond_1
    goto :goto_0
.end method

.method public popRenamedAlias(I)V
    .locals 8

    .prologue
    .line 1472
    move-object v0, p0

    .local v0, "this":Lkawa/lang/Translator;
    move v1, p1

    .local v1, "count":I
    :goto_0
    add-int/lit8 v1, v1, -0x1

    move v6, v1

    if-ltz v6, :cond_1

    .line 1474
    move-object v6, v0

    iget-object v6, v6, Lkawa/lang/Translator;->renamedAliasStack:Ljava/util/Stack;

    invoke-virtual {v6}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lgnu/expr/ScopeExp;

    move-object v2, v6

    .line 1475
    .local v2, "templateScope":Lgnu/expr/ScopeExp;
    move-object v6, v0

    iget-object v6, v6, Lkawa/lang/Translator;->renamedAliasStack:Ljava/util/Stack;

    invoke-virtual {v6}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lgnu/expr/Declaration;

    move-object v3, v6

    .line 1476
    .local v3, "alias":Lgnu/expr/Declaration;
    move-object v6, v3

    invoke-static {v6}, Lkawa/lang/Translator;->getOriginalRef(Lgnu/expr/Declaration;)Lgnu/expr/ReferenceExp;

    move-result-object v6

    invoke-virtual {v6}, Lgnu/expr/ReferenceExp;->getBinding()Lgnu/expr/Declaration;

    move-result-object v6

    move-object v4, v6

    .line 1477
    .local v4, "decl":Lgnu/expr/Declaration;
    move-object v6, v4

    move-object v7, v3

    invoke-virtual {v7}, Lgnu/expr/Declaration;->getSymbol()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v7}, Lgnu/expr/Declaration;->setSymbol(Ljava/lang/Object;)V

    .line 1478
    move-object v6, v2

    move-object v7, v3

    invoke-virtual {v6, v7}, Lgnu/expr/ScopeExp;->remove(Lgnu/expr/Declaration;)V

    .line 1479
    move-object v6, v0

    iget-object v6, v6, Lkawa/lang/Translator;->renamedAliasStack:Ljava/util/Stack;

    invoke-virtual {v6}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v6

    move-object v5, v6

    .line 1480
    .local v5, "old":Ljava/lang/Object;
    move-object v6, v5

    if-eqz v6, :cond_0

    .line 1481
    move-object v6, v2

    move-object v7, v5

    check-cast v7, Lgnu/expr/Declaration;

    invoke-virtual {v6, v7}, Lgnu/expr/ScopeExp;->addDeclaration(Lgnu/expr/Declaration;)V

    .line 1482
    :cond_0
    goto :goto_0

    .line 1483
    .end local v2    # "templateScope":Lgnu/expr/ScopeExp;
    .end local v3    # "alias":Lgnu/expr/Declaration;
    .end local v4    # "decl":Lgnu/expr/Declaration;
    .end local v5    # "old":Ljava/lang/Object;
    :cond_1
    return-void
.end method

.method public processAccesses()V
    .locals 10

    .prologue
    .line 1278
    move-object v0, p0

    .local v0, "this":Lkawa/lang/Translator;
    move-object v7, v0

    iget-object v7, v7, Lkawa/lang/Translator;->notedAccess:Ljava/util/Vector;

    if-nez v7, :cond_0

    .line 1279
    .line 1299
    :goto_0
    return-void

    .line 1280
    :cond_0
    move-object v7, v0

    iget-object v7, v7, Lkawa/lang/Translator;->notedAccess:Ljava/util/Vector;

    invoke-virtual {v7}, Ljava/util/Vector;->size()I

    move-result v7

    move v1, v7

    .line 1281
    .local v1, "sz":I
    move-object v7, v0

    iget-object v7, v7, Lkawa/lang/Translator;->current_scope:Lgnu/expr/ScopeExp;

    move-object v2, v7

    .line 1282
    .local v2, "saveScope":Lgnu/expr/ScopeExp;
    const/4 v7, 0x0

    move v3, v7

    .local v3, "i":I
    :goto_1
    move v7, v3

    move v8, v1

    if-ge v7, v8, :cond_3

    .line 1284
    move-object v7, v0

    iget-object v7, v7, Lkawa/lang/Translator;->notedAccess:Ljava/util/Vector;

    move v8, v3

    invoke-virtual {v7, v8}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v7

    move-object v4, v7

    .line 1285
    .local v4, "name":Ljava/lang/Object;
    move-object v7, v0

    iget-object v7, v7, Lkawa/lang/Translator;->notedAccess:Ljava/util/Vector;

    move v8, v3

    const/4 v9, 0x1

    add-int/lit8 v8, v8, 0x1

    invoke-virtual {v7, v8}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lgnu/expr/ScopeExp;

    move-object v5, v7

    .line 1286
    .local v5, "scope":Lgnu/expr/ScopeExp;
    move-object v7, v0

    iget-object v7, v7, Lkawa/lang/Translator;->current_scope:Lgnu/expr/ScopeExp;

    move-object v8, v5

    if-eq v7, v8, :cond_1

    .line 1287
    move-object v7, v0

    move-object v8, v5

    invoke-virtual {v7, v8}, Lkawa/lang/Translator;->setCurrentScope(Lgnu/expr/ScopeExp;)V

    .line 1288
    :cond_1
    move-object v7, v0

    iget-object v7, v7, Lkawa/lang/Translator;->lexical:Lgnu/expr/NameLookup;

    move-object v8, v4

    const/4 v9, -0x1

    invoke-virtual {v7, v8, v9}, Lgnu/expr/NameLookup;->lookup(Ljava/lang/Object;I)Lgnu/expr/Declaration;

    move-result-object v7

    move-object v6, v7

    .line 1289
    .local v6, "decl":Lgnu/expr/Declaration;
    move-object v7, v6

    if-eqz v7, :cond_2

    move-object v7, v6

    const-wide/32 v8, 0x10000

    invoke-virtual {v7, v8, v9}, Lgnu/expr/Declaration;->getFlag(J)Z

    move-result v7

    if-nez v7, :cond_2

    .line 1291
    move-object v7, v6

    invoke-virtual {v7}, Lgnu/expr/Declaration;->getContext()Lgnu/expr/ScopeExp;

    move-result-object v7

    invoke-virtual {v7}, Lgnu/expr/ScopeExp;->currentLambda()Lgnu/expr/LambdaExp;

    move-result-object v7

    move-object v8, v6

    invoke-virtual {v7, v8}, Lgnu/expr/LambdaExp;->capture(Lgnu/expr/Declaration;)V

    .line 1292
    move-object v7, v6

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Lgnu/expr/Declaration;->setCanRead(Z)V

    .line 1293
    move-object v7, v6

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lgnu/expr/Declaration;->setSimple(Z)V

    .line 1294
    move-object v7, v6

    const-wide/32 v8, 0x80000

    invoke-virtual {v7, v8, v9}, Lgnu/expr/Declaration;->setFlag(J)V

    .line 1282
    :cond_2
    add-int/lit8 v3, v3, 0x2

    goto :goto_1

    .line 1297
    .end local v4    # "name":Ljava/lang/Object;
    .end local v5    # "scope":Lgnu/expr/ScopeExp;
    .end local v6    # "decl":Lgnu/expr/Declaration;
    :cond_3
    move-object v7, v0

    iget-object v7, v7, Lkawa/lang/Translator;->current_scope:Lgnu/expr/ScopeExp;

    move-object v8, v2

    if-eq v7, v8, :cond_4

    .line 1298
    move-object v7, v0

    move-object v8, v2

    invoke-virtual {v7, v8}, Lkawa/lang/Translator;->setCurrentScope(Lgnu/expr/ScopeExp;)V

    .line 1299
    :cond_4
    goto :goto_0
.end method

.method public pushPositionOf(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    .prologue
    .line 827
    move-object v0, p0

    .local v0, "this":Lkawa/lang/Translator;
    move-object v1, p1

    .local v1, "pair":Ljava/lang/Object;
    move-object v4, v1

    instance-of v4, v4, Lkawa/lang/SyntaxForm;

    if-eqz v4, :cond_0

    .line 828
    move-object v4, v1

    check-cast v4, Lkawa/lang/SyntaxForm;

    invoke-interface {v4}, Lkawa/lang/SyntaxForm;->getDatum()Ljava/lang/Object;

    move-result-object v4

    move-object v1, v4

    .line 829
    :cond_0
    move-object v4, v1

    instance-of v4, v4, Lgnu/lists/PairWithPosition;

    if-nez v4, :cond_1

    .line 830
    const/4 v4, 0x0

    move-object v0, v4

    .line 844
    .end local v0    # "this":Lkawa/lang/Translator;
    :goto_0
    return-object v0

    .line 831
    .restart local v0    # "this":Lkawa/lang/Translator;
    :cond_1
    move-object v4, v1

    check-cast v4, Lgnu/lists/PairWithPosition;

    move-object v2, v4

    .line 833
    .local v2, "ppair":Lgnu/lists/PairWithPosition;
    move-object v4, v0

    iget-object v4, v4, Lkawa/lang/Translator;->positionPair:Lgnu/lists/PairWithPosition;

    if-eqz v4, :cond_2

    move-object v4, v0

    iget-object v4, v4, Lkawa/lang/Translator;->positionPair:Lgnu/lists/PairWithPosition;

    invoke-virtual {v4}, Lgnu/lists/PairWithPosition;->getFileName()Ljava/lang/String;

    move-result-object v4

    move-object v5, v0

    invoke-virtual {v5}, Lkawa/lang/Translator;->getFileName()Ljava/lang/String;

    move-result-object v5

    if-ne v4, v5, :cond_2

    move-object v4, v0

    iget-object v4, v4, Lkawa/lang/Translator;->positionPair:Lgnu/lists/PairWithPosition;

    invoke-virtual {v4}, Lgnu/lists/PairWithPosition;->getLineNumber()I

    move-result v4

    move-object v5, v0

    invoke-virtual {v5}, Lkawa/lang/Translator;->getLineNumber()I

    move-result v5

    if-ne v4, v5, :cond_2

    move-object v4, v0

    iget-object v4, v4, Lkawa/lang/Translator;->positionPair:Lgnu/lists/PairWithPosition;

    invoke-virtual {v4}, Lgnu/lists/PairWithPosition;->getColumnNumber()I

    move-result v4

    move-object v5, v0

    invoke-virtual {v5}, Lkawa/lang/Translator;->getColumnNumber()I

    move-result v5

    if-eq v4, v5, :cond_3

    .line 838
    :cond_2
    new-instance v4, Lgnu/lists/PairWithPosition;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    move-object v6, v0

    sget-object v7, Lgnu/expr/Special;->eof:Ljava/lang/Object;

    move-object v8, v0

    iget-object v8, v8, Lkawa/lang/Translator;->positionPair:Lgnu/lists/PairWithPosition;

    invoke-direct {v5, v6, v7, v8}, Lgnu/lists/PairWithPosition;-><init>(Lgnu/text/SourceLocator;Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v3, v4

    .line 842
    .local v3, "saved":Lgnu/lists/PairWithPosition;
    :goto_1
    move-object v4, v0

    move-object v5, v1

    invoke-virtual {v4, v5}, Lkawa/lang/Translator;->setLine(Ljava/lang/Object;)V

    .line 843
    move-object v4, v0

    move-object v5, v2

    iput-object v5, v4, Lkawa/lang/Translator;->positionPair:Lgnu/lists/PairWithPosition;

    .line 844
    move-object v4, v3

    move-object v0, v4

    goto :goto_0

    .line 841
    .end local v3    # "saved":Lgnu/lists/PairWithPosition;
    :cond_3
    move-object v4, v0

    iget-object v4, v4, Lkawa/lang/Translator;->positionPair:Lgnu/lists/PairWithPosition;

    move-object v3, v4

    .restart local v3    # "saved":Lgnu/lists/PairWithPosition;
    goto :goto_1
.end method

.method public pushRenamedAlias(Lgnu/expr/Declaration;)V
    .locals 9

    .prologue
    .line 1455
    move-object v0, p0

    .local v0, "this":Lkawa/lang/Translator;
    move-object v1, p1

    .local v1, "alias":Lgnu/expr/Declaration;
    move-object v5, v1

    invoke-static {v5}, Lkawa/lang/Translator;->getOriginalRef(Lgnu/expr/Declaration;)Lgnu/expr/ReferenceExp;

    move-result-object v5

    invoke-virtual {v5}, Lgnu/expr/ReferenceExp;->getBinding()Lgnu/expr/Declaration;

    move-result-object v5

    move-object v2, v5

    .line 1456
    .local v2, "decl":Lgnu/expr/Declaration;
    move-object v5, v1

    iget-object v5, v5, Lgnu/expr/Declaration;->context:Lgnu/expr/ScopeExp;

    move-object v3, v5

    .line 1457
    .local v3, "templateScope":Lgnu/expr/ScopeExp;
    move-object v5, v2

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lgnu/expr/Declaration;->setSymbol(Ljava/lang/Object;)V

    .line 1458
    move-object v5, v3

    move-object v6, v2

    invoke-virtual {v6}, Lgnu/expr/Declaration;->getSymbol()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Lgnu/expr/ScopeExp;->lookup(Ljava/lang/Object;)Lgnu/expr/Declaration;

    move-result-object v5

    move-object v4, v5

    .line 1459
    .local v4, "old":Lgnu/expr/Declaration;
    move-object v5, v4

    if-eqz v5, :cond_0

    .line 1460
    move-object v5, v3

    move-object v6, v4

    invoke-virtual {v5, v6}, Lgnu/expr/ScopeExp;->remove(Lgnu/expr/Declaration;)V

    .line 1461
    :cond_0
    move-object v5, v3

    move-object v6, v1

    invoke-virtual {v5, v6}, Lgnu/expr/ScopeExp;->addDeclaration(Lgnu/expr/Declaration;)V

    .line 1462
    move-object v5, v0

    iget-object v5, v5, Lkawa/lang/Translator;->renamedAliasStack:Ljava/util/Stack;

    if-nez v5, :cond_1

    .line 1463
    move-object v5, v0

    new-instance v6, Ljava/util/Stack;

    move-object v8, v6

    move-object v6, v8

    move-object v7, v8

    invoke-direct {v7}, Ljava/util/Stack;-><init>()V

    iput-object v6, v5, Lkawa/lang/Translator;->renamedAliasStack:Ljava/util/Stack;

    .line 1464
    :cond_1
    move-object v5, v0

    iget-object v5, v5, Lkawa/lang/Translator;->renamedAliasStack:Ljava/util/Stack;

    move-object v6, v4

    invoke-virtual {v5, v6}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 1465
    move-object v5, v0

    iget-object v5, v5, Lkawa/lang/Translator;->renamedAliasStack:Ljava/util/Stack;

    move-object v6, v1

    invoke-virtual {v5, v6}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 1466
    move-object v5, v0

    iget-object v5, v5, Lkawa/lang/Translator;->renamedAliasStack:Ljava/util/Stack;

    move-object v6, v3

    invoke-virtual {v5, v6}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 1467
    return-void
.end method

.method public resolveModule(Lgnu/expr/ModuleExp;)V
    .locals 22

    .prologue
    .line 1359
    move-object/from16 v1, p0

    .local v1, "this":Lkawa/lang/Translator;
    move-object/from16 v2, p1

    .local v2, "mexp":Lgnu/expr/ModuleExp;
    move-object v15, v1

    iget-object v15, v15, Lkawa/lang/Translator;->pendingImports:Ljava/util/Stack;

    if-nez v15, :cond_2

    const/4 v15, 0x0

    :goto_0
    move v3, v15

    .line 1360
    .local v3, "numPending":I
    const/4 v15, 0x0

    move v4, v15

    .local v4, "i":I
    :goto_1
    move v15, v4

    move/from16 v16, v3

    move/from16 v0, v16

    if-ge v15, v0, :cond_3

    .line 1362
    move-object v15, v1

    iget-object v15, v15, Lkawa/lang/Translator;->pendingImports:Ljava/util/Stack;

    move/from16 v16, v4

    add-int/lit8 v4, v4, 0x1

    invoke-virtual/range {v15 .. v16}, Ljava/util/Stack;->elementAt(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lgnu/expr/ModuleInfo;

    move-object v5, v15

    .line 1363
    .local v5, "info":Lgnu/expr/ModuleInfo;
    move-object v15, v1

    iget-object v15, v15, Lkawa/lang/Translator;->pendingImports:Ljava/util/Stack;

    move/from16 v16, v4

    add-int/lit8 v4, v4, 0x1

    invoke-virtual/range {v15 .. v16}, Ljava/util/Stack;->elementAt(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lgnu/expr/ScopeExp;

    move-object v6, v15

    .line 1364
    .local v6, "defs":Lgnu/expr/ScopeExp;
    move-object v15, v1

    iget-object v15, v15, Lkawa/lang/Translator;->pendingImports:Ljava/util/Stack;

    move/from16 v16, v4

    add-int/lit8 v4, v4, 0x1

    invoke-virtual/range {v15 .. v16}, Ljava/util/Stack;->elementAt(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lgnu/expr/Expression;

    move-object v7, v15

    .line 1365
    .local v7, "posExp":Lgnu/expr/Expression;
    move-object v15, v1

    iget-object v15, v15, Lkawa/lang/Translator;->pendingImports:Ljava/util/Stack;

    move/from16 v16, v4

    add-int/lit8 v4, v4, 0x1

    invoke-virtual/range {v15 .. v16}, Ljava/util/Stack;->elementAt(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Integer;

    move-object v8, v15

    .line 1366
    .local v8, "savedSize":Ljava/lang/Integer;
    move-object v15, v2

    move-object/from16 v16, v6

    move-object/from16 v0, v16

    if-ne v15, v0, :cond_1

    .line 1369
    new-instance v15, Lgnu/expr/ReferenceExp;

    move-object/from16 v21, v15

    move-object/from16 v15, v21

    move-object/from16 v16, v21

    const/16 v17, 0x0

    check-cast v17, Ljava/lang/Object;

    invoke-direct/range {v16 .. v17}, Lgnu/expr/ReferenceExp;-><init>(Ljava/lang/Object;)V

    move-object v9, v15

    .line 1370
    .local v9, "savePos":Lgnu/expr/Expression;
    move-object v15, v9

    move-object/from16 v16, v1

    invoke-virtual/range {v15 .. v16}, Lgnu/expr/Expression;->setLine(Lgnu/expr/Compilation;)V

    .line 1371
    move-object v15, v1

    move-object/from16 v16, v7

    invoke-virtual/range {v15 .. v16}, Lkawa/lang/Translator;->setLine(Lgnu/expr/Expression;)V

    .line 1372
    move-object v15, v1

    iget-object v15, v15, Lkawa/lang/Translator;->formStack:Ljava/util/Stack;

    invoke-virtual {v15}, Ljava/util/Stack;->size()I

    move-result v15

    move v10, v15

    .line 1373
    .local v10, "beforeSize":I
    const/4 v15, 0x0

    move-object/from16 v16, v5

    const/16 v17, 0x0

    move-object/from16 v18, v1

    move-object/from16 v0, v18

    iget-object v0, v0, Lkawa/lang/Translator;->formStack:Ljava/util/Stack;

    move-object/from16 v18, v0

    move-object/from16 v19, v6

    move-object/from16 v20, v1

    invoke-static/range {v15 .. v20}, Lkawa/standard/require;->importDefinitions(Ljava/lang/String;Lgnu/expr/ModuleInfo;Lgnu/mapping/Procedure;Ljava/util/Vector;Lgnu/expr/ScopeExp;Lgnu/expr/Compilation;)Z

    move-result v15

    .line 1375
    move-object v15, v8

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v15

    move v11, v15

    .line 1376
    .local v11, "desiredPosition":I
    move-object v15, v8

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v15

    move/from16 v16, v10

    move/from16 v0, v16

    if-eq v15, v0, :cond_0

    .line 1379
    move-object v15, v1

    iget-object v15, v15, Lkawa/lang/Translator;->formStack:Ljava/util/Stack;

    invoke-virtual {v15}, Ljava/util/Stack;->size()I

    move-result v15

    move v12, v15

    .line 1380
    .local v12, "curSize":I
    move v15, v12

    move/from16 v16, v11

    sub-int v15, v15, v16

    move v13, v15

    .line 1382
    .local v13, "count":I
    move-object v15, v1

    iget-object v15, v15, Lkawa/lang/Translator;->formStack:Ljava/util/Stack;

    move/from16 v16, v11

    move/from16 v17, v10

    move/from16 v18, v11

    sub-int v17, v17, v18

    invoke-static/range {v15 .. v17}, Lkawa/lang/Translator;->vectorReverse(Ljava/util/Vector;II)V

    .line 1383
    move-object v15, v1

    iget-object v15, v15, Lkawa/lang/Translator;->formStack:Ljava/util/Stack;

    move/from16 v16, v10

    move/from16 v17, v12

    move/from16 v18, v10

    sub-int v17, v17, v18

    invoke-static/range {v15 .. v17}, Lkawa/lang/Translator;->vectorReverse(Ljava/util/Vector;II)V

    .line 1384
    move-object v15, v1

    iget-object v15, v15, Lkawa/lang/Translator;->formStack:Ljava/util/Stack;

    move/from16 v16, v11

    move/from16 v17, v13

    invoke-static/range {v15 .. v17}, Lkawa/lang/Translator;->vectorReverse(Ljava/util/Vector;II)V

    .line 1386
    .end local v12    # "curSize":I
    .end local v13    # "count":I
    :cond_0
    move-object v15, v1

    move-object/from16 v16, v9

    invoke-virtual/range {v15 .. v16}, Lkawa/lang/Translator;->setLine(Lgnu/expr/Expression;)V

    .line 1388
    .end local v9    # "savePos":Lgnu/expr/Expression;
    .end local v10    # "beforeSize":I
    .end local v11    # "desiredPosition":I
    :cond_1
    goto/16 :goto_1

    .line 1359
    .end local v3    # "numPending":I
    .end local v4    # "i":I
    .end local v5    # "info":Lgnu/expr/ModuleInfo;
    .end local v6    # "defs":Lgnu/expr/ScopeExp;
    .end local v7    # "posExp":Lgnu/expr/Expression;
    .end local v8    # "savedSize":Ljava/lang/Integer;
    :cond_2
    move-object v15, v1

    iget-object v15, v15, Lkawa/lang/Translator;->pendingImports:Ljava/util/Stack;

    invoke-virtual {v15}, Ljava/util/Stack;->size()I

    move-result v15

    goto/16 :goto_0

    .line 1389
    .restart local v3    # "numPending":I
    .restart local v4    # "i":I
    :cond_3
    move-object v15, v1

    const/16 v16, 0x0

    move-object/from16 v0, v16

    iput-object v0, v15, Lkawa/lang/Translator;->pendingImports:Ljava/util/Stack;

    .line 1391
    move-object v15, v1

    invoke-virtual {v15}, Lkawa/lang/Translator;->processAccesses()V

    .line 1393
    move-object v15, v1

    move-object/from16 v16, v2

    invoke-virtual/range {v15 .. v16}, Lkawa/lang/Translator;->setModule(Lgnu/expr/ModuleExp;)V

    .line 1394
    move-object v15, v1

    invoke-static {v15}, Lgnu/expr/Compilation;->setSaveCurrent(Lgnu/expr/Compilation;)Lgnu/expr/Compilation;

    move-result-object v15

    move-object v4, v15

    .line 1397
    .local v4, "save_comp":Lgnu/expr/Compilation;
    move-object v15, v1

    move-object/from16 v16, v1

    move-object/from16 v17, v1

    :try_start_0
    move-object/from16 v0, v17

    iget v0, v0, Lkawa/lang/Translator;->firstForm:I

    move/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Lkawa/lang/Translator;->popForms(I)Ljava/lang/Object;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Lkawa/lang/Translator;->rewriteInBody(Ljava/lang/Object;)V

    .line 1398
    move-object v15, v2

    move-object/from16 v16, v1

    move-object/from16 v17, v1

    move-object/from16 v0, v17

    iget v0, v0, Lkawa/lang/Translator;->firstForm:I

    move/from16 v17, v0

    move-object/from16 v18, v2

    invoke-direct/range {v16 .. v18}, Lkawa/lang/Translator;->makeBody(ILgnu/expr/ScopeExp;)Lgnu/expr/Expression;

    move-result-object v16

    move-object/from16 v0, v16

    iput-object v0, v15, Lgnu/expr/ModuleExp;->body:Lgnu/expr/Expression;

    .line 1400
    move-object v15, v1

    iget-boolean v15, v15, Lkawa/lang/Translator;->immediate:Z

    if-nez v15, :cond_4

    .line 1401
    move-object v15, v1

    iget-object v15, v15, Lkawa/lang/Translator;->lexical:Lgnu/expr/NameLookup;

    move-object/from16 v16, v2

    invoke-virtual/range {v15 .. v16}, Lgnu/expr/NameLookup;->pop(Lgnu/expr/ScopeExp;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1405
    :cond_4
    move-object v15, v4

    invoke-static {v15}, Lgnu/expr/Compilation;->restoreCurrent(Lgnu/expr/Compilation;)V

    .line 1406
    .line 1416
    return-void

    .line 1405
    :catchall_0
    move-exception v15

    move-object v14, v15

    move-object v15, v4

    invoke-static {v15}, Lgnu/expr/Compilation;->restoreCurrent(Lgnu/expr/Compilation;)V

    move-object v15, v14

    throw v15
.end method

.method public rewrite(Ljava/lang/Object;)Lgnu/expr/Expression;
    .locals 5

    .prologue
    .line 561
    move-object v0, p0

    .local v0, "this":Lkawa/lang/Translator;
    move-object v1, p1

    .local v1, "exp":Ljava/lang/Object;
    move-object v2, v0

    move-object v3, v1

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lkawa/lang/Translator;->rewrite(Ljava/lang/Object;Z)Lgnu/expr/Expression;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Lkawa/lang/Translator;
    return-object v0
.end method

.method public rewrite(Ljava/lang/Object;Z)Lgnu/expr/Expression;
    .locals 23

    .prologue
    .line 592
    move-object/from16 v2, p0

    .local v2, "this":Lkawa/lang/Translator;
    move-object/from16 v3, p1

    .local v3, "exp":Ljava/lang/Object;
    move/from16 v4, p2

    .local v4, "function":Z
    move-object/from16 v17, v3

    move-object/from16 v0, v17

    instance-of v0, v0, Lkawa/lang/SyntaxForm;

    move/from16 v17, v0

    if-eqz v17, :cond_0

    .line 594
    move-object/from16 v17, v3

    check-cast v17, Lkawa/lang/SyntaxForm;

    move-object/from16 v5, v17

    .line 595
    .local v5, "sf":Lkawa/lang/SyntaxForm;
    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget-object v0, v0, Lkawa/lang/Translator;->current_scope:Lgnu/expr/ScopeExp;

    move-object/from16 v17, v0

    move-object/from16 v6, v17

    .line 598
    .local v6, "save_scope":Lgnu/expr/ScopeExp;
    move-object/from16 v17, v2

    move-object/from16 v18, v5

    :try_start_0
    invoke-interface/range {v18 .. v18}, Lkawa/lang/SyntaxForm;->getScope()Lkawa/lang/TemplateScope;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Lkawa/lang/Translator;->setCurrentScope(Lgnu/expr/ScopeExp;)V

    .line 599
    move-object/from16 v17, v2

    move-object/from16 v18, v5

    invoke-interface/range {v18 .. v18}, Lkawa/lang/SyntaxForm;->getDatum()Ljava/lang/Object;

    move-result-object v18

    move/from16 v19, v4

    invoke-virtual/range {v17 .. v19}, Lkawa/lang/Translator;->rewrite(Ljava/lang/Object;Z)Lgnu/expr/Expression;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v17

    move-object/from16 v7, v17

    .line 600
    .local v7, "s":Lgnu/expr/Expression;
    move-object/from16 v17, v7

    move-object/from16 v8, v17

    .line 604
    move-object/from16 v17, v2

    move-object/from16 v18, v6

    invoke-virtual/range {v17 .. v18}, Lkawa/lang/Translator;->setCurrentScope(Lgnu/expr/ScopeExp;)V

    move-object/from16 v17, v8

    move-object/from16 v2, v17

    .line 805
    .end local v2    # "this":Lkawa/lang/Translator;
    .end local v3    # "exp":Ljava/lang/Object;
    .end local v5    # "sf":Lkawa/lang/SyntaxForm;
    .end local v6    # "save_scope":Lgnu/expr/ScopeExp;
    .end local v7    # "s":Lgnu/expr/Expression;
    :goto_0
    return-object v2

    .line 604
    .restart local v2    # "this":Lkawa/lang/Translator;
    .restart local v3    # "exp":Ljava/lang/Object;
    .restart local v5    # "sf":Lkawa/lang/SyntaxForm;
    .restart local v6    # "save_scope":Lgnu/expr/ScopeExp;
    :catchall_0
    move-exception v17

    move-object/from16 v9, v17

    move-object/from16 v17, v2

    move-object/from16 v18, v6

    invoke-virtual/range {v17 .. v18}, Lkawa/lang/Translator;->setCurrentScope(Lgnu/expr/ScopeExp;)V

    move-object/from16 v17, v9

    throw v17

    .line 607
    .end local v5    # "sf":Lkawa/lang/SyntaxForm;
    .end local v6    # "save_scope":Lgnu/expr/ScopeExp;
    :cond_0
    move-object/from16 v17, v3

    move-object/from16 v0, v17

    instance-of v0, v0, Lgnu/lists/PairWithPosition;

    move/from16 v17, v0

    if-eqz v17, :cond_1

    .line 608
    move-object/from16 v17, v2

    move-object/from16 v18, v3

    move/from16 v19, v4

    move-object/from16 v20, v3

    check-cast v20, Lgnu/lists/PairWithPosition;

    invoke-virtual/range {v17 .. v20}, Lkawa/lang/Translator;->rewrite_with_position(Ljava/lang/Object;ZLgnu/lists/PairWithPosition;)Lgnu/expr/Expression;

    move-result-object v17

    move-object/from16 v2, v17

    goto :goto_0

    .line 609
    :cond_1
    move-object/from16 v17, v3

    move-object/from16 v0, v17

    instance-of v0, v0, Lgnu/lists/Pair;

    move/from16 v17, v0

    if-eqz v17, :cond_2

    .line 610
    move-object/from16 v17, v2

    move-object/from16 v18, v3

    check-cast v18, Lgnu/lists/Pair;

    move/from16 v19, v4

    invoke-virtual/range {v17 .. v19}, Lkawa/lang/Translator;->rewrite_pair(Lgnu/lists/Pair;Z)Lgnu/expr/Expression;

    move-result-object v17

    move-object/from16 v2, v17

    goto :goto_0

    .line 611
    :cond_2
    move-object/from16 v17, v3

    move-object/from16 v0, v17

    instance-of v0, v0, Lgnu/mapping/Symbol;

    move/from16 v17, v0

    if-eqz v17, :cond_22

    move-object/from16 v17, v2

    move-object/from16 v18, v3

    invoke-virtual/range {v17 .. v18}, Lkawa/lang/Translator;->selfEvaluatingSymbol(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_22

    .line 613
    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget-object v0, v0, Lkawa/lang/Translator;->lexical:Lgnu/expr/NameLookup;

    move-object/from16 v17, v0

    move-object/from16 v18, v3

    move/from16 v19, v4

    invoke-virtual/range {v17 .. v19}, Lgnu/expr/NameLookup;->lookup(Ljava/lang/Object;Z)Lgnu/expr/Declaration;

    move-result-object v17

    move-object/from16 v5, v17

    .line 614
    .local v5, "decl":Lgnu/expr/Declaration;
    const/16 v17, 0x0

    move-object/from16 v6, v17

    .line 619
    .local v6, "cdecl":Lgnu/expr/Declaration;
    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget-object v0, v0, Lkawa/lang/Translator;->current_scope:Lgnu/expr/ScopeExp;

    move-object/from16 v17, v0

    move-object/from16 v7, v17

    .line 620
    .local v7, "scope":Lgnu/expr/ScopeExp;
    move-object/from16 v17, v5

    if-nez v17, :cond_6

    const/16 v17, -0x1

    :goto_1
    move/from16 v8, v17

    .line 622
    .local v8, "decl_nesting":I
    move-object/from16 v17, v3

    move-object/from16 v0, v17

    instance-of v0, v0, Lgnu/mapping/Symbol;

    move/from16 v17, v0

    if-eqz v17, :cond_7

    move-object/from16 v17, v3

    check-cast v17, Lgnu/mapping/Symbol;

    invoke-virtual/range {v17 .. v17}, Lgnu/mapping/Symbol;->hasEmptyNamespace()Z

    move-result v17

    if-eqz v17, :cond_7

    .line 623
    move-object/from16 v17, v3

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v9, v17

    .line 629
    .local v9, "dname":Ljava/lang/String;
    :goto_2
    move-object/from16 v17, v7

    if-eqz v17, :cond_3

    .line 631
    move-object/from16 v17, v7

    move-object/from16 v0, v17

    instance-of v0, v0, Lgnu/expr/LambdaExp;

    move/from16 v17, v0

    if-eqz v17, :cond_a

    move-object/from16 v17, v7

    move-object/from16 v0, v17

    iget-object v0, v0, Lgnu/expr/ScopeExp;->outer:Lgnu/expr/ScopeExp;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    instance-of v0, v0, Lgnu/expr/ClassExp;

    move/from16 v17, v0

    if-eqz v17, :cond_a

    move-object/from16 v17, v7

    check-cast v17, Lgnu/expr/LambdaExp;

    invoke-virtual/range {v17 .. v17}, Lgnu/expr/LambdaExp;->isClassMethod()Z

    move-result v17

    if-eqz v17, :cond_a

    .line 635
    move/from16 v17, v8

    move-object/from16 v18, v7

    move-object/from16 v0, v18

    iget-object v0, v0, Lgnu/expr/ScopeExp;->outer:Lgnu/expr/ScopeExp;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lgnu/expr/ScopeExp;->nesting(Lgnu/expr/ScopeExp;)I

    move-result v18

    move/from16 v0, v17

    move/from16 v1, v18

    if-lt v0, v1, :cond_8

    .line 636
    .line 666
    :cond_3
    move-object/from16 v17, v5

    if-eqz v17, :cond_f

    .line 668
    move-object/from16 v17, v5

    invoke-virtual/range {v17 .. v17}, Lgnu/expr/Declaration;->getSymbol()Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v10, v17

    .line 669
    .local v10, "nameToLookup":Ljava/lang/Object;
    const/16 v17, 0x0

    move-object/from16 v3, v17

    .line 670
    move-object/from16 v17, v5

    invoke-static/range {v17 .. v17}, Lkawa/lang/Translator;->getOriginalRef(Lgnu/expr/Declaration;)Lgnu/expr/ReferenceExp;

    move-result-object v17

    move-object/from16 v11, v17

    .line 671
    .local v11, "rexp":Lgnu/expr/ReferenceExp;
    move-object/from16 v17, v11

    if-eqz v17, :cond_4

    .line 673
    move-object/from16 v17, v11

    invoke-virtual/range {v17 .. v17}, Lgnu/expr/ReferenceExp;->getBinding()Lgnu/expr/Declaration;

    move-result-object v17

    move-object/from16 v5, v17

    .line 674
    move-object/from16 v17, v5

    if-nez v17, :cond_4

    .line 676
    move-object/from16 v17, v11

    invoke-virtual/range {v17 .. v17}, Lgnu/expr/ReferenceExp;->getSymbol()Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v3, v17

    .line 677
    move-object/from16 v17, v3

    move-object/from16 v10, v17

    .line 680
    .line 685
    .end local v3    # "exp":Ljava/lang/Object;
    .end local v11    # "rexp":Lgnu/expr/ReferenceExp;
    :cond_4
    :goto_3
    move-object/from16 v17, v3

    check-cast v17, Lgnu/mapping/Symbol;

    move-object/from16 v11, v17

    .line 686
    .local v11, "symbol":Lgnu/mapping/Symbol;
    move-object/from16 v17, v2

    invoke-virtual/range {v17 .. v17}, Lkawa/lang/Translator;->getLanguage()Lgnu/expr/Language;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lgnu/expr/Language;->hasSeparateFunctionNamespace()Z

    move-result v17

    move/from16 v12, v17

    .line 687
    .local v12, "separate":Z
    move-object/from16 v17, v5

    if-eqz v17, :cond_13

    .line 689
    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget-object v0, v0, Lkawa/lang/Translator;->current_scope:Lgnu/expr/ScopeExp;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    instance-of v0, v0, Lkawa/lang/TemplateScope;

    move/from16 v17, v0

    if-eqz v17, :cond_10

    move-object/from16 v17, v5

    invoke-virtual/range {v17 .. v17}, Lgnu/expr/Declaration;->needsContext()Z

    move-result v17

    if-eqz v17, :cond_10

    .line 690
    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget-object v0, v0, Lkawa/lang/Translator;->current_scope:Lgnu/expr/ScopeExp;

    move-object/from16 v17, v0

    check-cast v17, Lkawa/lang/TemplateScope;

    move-object/from16 v0, v17

    iget-object v0, v0, Lkawa/lang/TemplateScope;->macroContext:Lgnu/expr/Declaration;

    move-object/from16 v17, v0

    move-object/from16 v6, v17

    .line 778
    :cond_5
    :goto_4
    move-object/from16 v17, v5

    if-eqz v17, :cond_20

    .line 783
    move/from16 v17, v4

    if-nez v17, :cond_1f

    move-object/from16 v17, v5

    invoke-virtual/range {v17 .. v17}, Lgnu/expr/Declaration;->getConstantValue()Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v0, v17

    instance-of v0, v0, Lkawa/standard/object;

    move/from16 v17, v0

    if-eqz v17, :cond_1f

    .line 785
    const-class v17, Ljava/lang/Object;

    invoke-static/range {v17 .. v17}, Lgnu/expr/QuoteExp;->getInstance(Ljava/lang/Object;)Lgnu/expr/QuoteExp;

    move-result-object v17

    move-object/from16 v2, v17

    goto/16 :goto_0

    .line 620
    .end local v8    # "decl_nesting":I
    .end local v9    # "dname":Ljava/lang/String;
    .end local v10    # "nameToLookup":Ljava/lang/Object;
    .end local v11    # "symbol":Lgnu/mapping/Symbol;
    .end local v12    # "separate":Z
    .restart local v3    # "exp":Ljava/lang/Object;
    :cond_6
    move-object/from16 v17, v5

    move-object/from16 v0, v17

    iget-object v0, v0, Lgnu/expr/Declaration;->context:Lgnu/expr/ScopeExp;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lgnu/expr/ScopeExp;->nesting(Lgnu/expr/ScopeExp;)I

    move-result v17

    goto/16 :goto_1

    .line 626
    .restart local v8    # "decl_nesting":I
    :cond_7
    const/16 v17, 0x0

    move-object/from16 v9, v17

    .line 627
    .restart local v9    # "dname":Ljava/lang/String;
    const/16 v17, 0x0

    move-object/from16 v7, v17

    goto/16 :goto_2

    .line 637
    :cond_8
    move-object/from16 v17, v7

    check-cast v17, Lgnu/expr/LambdaExp;

    move-object/from16 v10, v17

    .line 638
    .local v10, "caller":Lgnu/expr/LambdaExp;
    move-object/from16 v17, v7

    move-object/from16 v0, v17

    iget-object v0, v0, Lgnu/expr/ScopeExp;->outer:Lgnu/expr/ScopeExp;

    move-object/from16 v17, v0

    check-cast v17, Lgnu/expr/ClassExp;

    move-object/from16 v11, v17

    .line 639
    .local v11, "cexp":Lgnu/expr/ClassExp;
    move-object/from16 v17, v11

    invoke-virtual/range {v17 .. v17}, Lgnu/expr/ClassExp;->getClassType()Lgnu/bytecode/ClassType;

    move-result-object v17

    move-object/from16 v12, v17

    .line 640
    .local v12, "ctype":Lgnu/bytecode/ClassType;
    move-object/from16 v17, v12

    move-object/from16 v18, v9

    move-object/from16 v19, v12

    invoke-static/range {v17 .. v19}, Lgnu/kawa/reflect/SlotGet;->lookupMember(Lgnu/bytecode/ObjectType;Ljava/lang/String;Lgnu/bytecode/ClassType;)Lgnu/bytecode/Member;

    move-result-object v17

    move-object/from16 v13, v17

    .line 641
    .local v13, "part":Lgnu/bytecode/Member;
    move-object/from16 v17, v10

    move-object/from16 v18, v11

    move-object/from16 v0, v18

    iget-object v0, v0, Lgnu/expr/ClassExp;->clinitMethod:Lgnu/expr/LambdaExp;

    move-object/from16 v18, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    if-eq v0, v1, :cond_9

    move-object/from16 v17, v10

    move-object/from16 v18, v11

    move-object/from16 v0, v18

    iget-object v0, v0, Lgnu/expr/ClassExp;->initMethod:Lgnu/expr/LambdaExp;

    move-object/from16 v18, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    if-eq v0, v1, :cond_b

    move-object/from16 v17, v10

    move-object/from16 v0, v17

    iget-object v0, v0, Lgnu/expr/LambdaExp;->nameDecl:Lgnu/expr/Declaration;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lgnu/expr/Declaration;->isStatic()Z

    move-result v17

    if-eqz v17, :cond_b

    :cond_9
    const/16 v17, 0x1

    :goto_5
    move/from16 v14, v17

    .line 645
    .local v14, "contextStatic":Z
    move-object/from16 v17, v13

    if-nez v17, :cond_d

    .line 647
    move/from16 v17, v14

    if-eqz v17, :cond_c

    const/16 v17, 0x53

    :goto_6
    move/from16 v15, v17

    .line 648
    .local v15, "mode":C
    move-object/from16 v17, v12

    move-object/from16 v18, v9

    move/from16 v19, v15

    move-object/from16 v20, v12

    move-object/from16 v21, v2

    move-object/from16 v0, v21

    iget-object v0, v0, Lkawa/lang/Translator;->language:Lgnu/expr/Language;

    move-object/from16 v21, v0

    invoke-static/range {v17 .. v21}, Lgnu/kawa/reflect/ClassMethods;->getMethods(Lgnu/bytecode/ObjectType;Ljava/lang/String;CLgnu/bytecode/ClassType;Lgnu/expr/Language;)[Lgnu/expr/PrimProcedure;

    move-result-object v17

    move-object/from16 v16, v17

    .line 651
    .local v16, "methods":[Lgnu/expr/PrimProcedure;
    move-object/from16 v17, v16

    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v17, v0

    if-nez v17, :cond_d

    .line 652
    .line 629
    .end local v10    # "caller":Lgnu/expr/LambdaExp;
    .end local v11    # "cexp":Lgnu/expr/ClassExp;
    .end local v12    # "ctype":Lgnu/bytecode/ClassType;
    .end local v13    # "part":Lgnu/bytecode/Member;
    .end local v14    # "contextStatic":Z
    .end local v15    # "mode":C
    .end local v16    # "methods":[Lgnu/expr/PrimProcedure;
    :cond_a
    move-object/from16 v17, v7

    move-object/from16 v0, v17

    iget-object v0, v0, Lgnu/expr/ScopeExp;->outer:Lgnu/expr/ScopeExp;

    move-object/from16 v17, v0

    move-object/from16 v7, v17

    goto/16 :goto_2

    .line 641
    .restart local v10    # "caller":Lgnu/expr/LambdaExp;
    .restart local v11    # "cexp":Lgnu/expr/ClassExp;
    .restart local v12    # "ctype":Lgnu/bytecode/ClassType;
    .restart local v13    # "part":Lgnu/bytecode/Member;
    :cond_b
    const/16 v17, 0x0

    goto :goto_5

    .line 647
    .restart local v14    # "contextStatic":Z
    :cond_c
    const/16 v17, 0x56

    goto :goto_6

    .line 656
    :cond_d
    move/from16 v17, v14

    if-eqz v17, :cond_e

    .line 657
    new-instance v17, Lgnu/expr/ReferenceExp;

    move-object/from16 v22, v17

    move-object/from16 v17, v22

    move-object/from16 v18, v22

    move-object/from16 v19, v10

    move-object/from16 v0, v19

    iget-object v0, v0, Lgnu/expr/LambdaExp;->outer:Lgnu/expr/ScopeExp;

    move-object/from16 v19, v0

    check-cast v19, Lgnu/expr/ClassExp;

    move-object/from16 v0, v19

    iget-object v0, v0, Lgnu/expr/ClassExp;->nameDecl:Lgnu/expr/Declaration;

    move-object/from16 v19, v0

    invoke-direct/range {v18 .. v19}, Lgnu/expr/ReferenceExp;-><init>(Lgnu/expr/Declaration;)V

    move-object/from16 v15, v17

    .line 660
    .local v15, "part1":Lgnu/expr/Expression;
    :goto_7
    move-object/from16 v17, v15

    move-object/from16 v18, v9

    invoke-static/range {v18 .. v18}, Lgnu/expr/QuoteExp;->getInstance(Ljava/lang/Object;)Lgnu/expr/QuoteExp;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lgnu/kawa/functions/CompileNamedPart;->makeExp(Lgnu/expr/Expression;Lgnu/expr/Expression;)Lgnu/expr/Expression;

    move-result-object v17

    move-object/from16 v2, v17

    goto/16 :goto_0

    .line 659
    .end local v15    # "part1":Lgnu/expr/Expression;
    :cond_e
    new-instance v17, Lgnu/expr/ThisExp;

    move-object/from16 v22, v17

    move-object/from16 v17, v22

    move-object/from16 v18, v22

    move-object/from16 v19, v10

    invoke-virtual/range {v19 .. v19}, Lgnu/expr/LambdaExp;->firstDecl()Lgnu/expr/Declaration;

    move-result-object v19

    invoke-direct/range {v18 .. v19}, Lgnu/expr/ThisExp;-><init>(Lgnu/expr/Declaration;)V

    move-object/from16 v15, v17

    .restart local v15    # "part1":Lgnu/expr/Expression;
    goto :goto_7

    .line 683
    .end local v10    # "caller":Lgnu/expr/LambdaExp;
    .end local v11    # "cexp":Lgnu/expr/ClassExp;
    .end local v12    # "ctype":Lgnu/bytecode/ClassType;
    .end local v13    # "part":Lgnu/bytecode/Member;
    .end local v14    # "contextStatic":Z
    .end local v15    # "part1":Lgnu/expr/Expression;
    :cond_f
    move-object/from16 v17, v3

    move-object/from16 v10, v17

    .local v10, "nameToLookup":Ljava/lang/Object;
    goto/16 :goto_3

    .line 691
    .end local v3    # "exp":Ljava/lang/Object;
    .local v11, "symbol":Lgnu/mapping/Symbol;
    .local v12, "separate":Z
    :cond_10
    move-object/from16 v17, v5

    const-wide/32 v18, 0x100000

    invoke-virtual/range {v17 .. v19}, Lgnu/expr/Declaration;->getFlag(J)Z

    move-result v17

    if-eqz v17, :cond_5

    move-object/from16 v17, v5

    invoke-virtual/range {v17 .. v17}, Lgnu/expr/Declaration;->isStatic()Z

    move-result v17

    if-nez v17, :cond_5

    .line 694
    move-object/from16 v17, v2

    invoke-virtual/range {v17 .. v17}, Lkawa/lang/Translator;->currentScope()Lgnu/expr/ScopeExp;

    move-result-object v17

    move-object/from16 v7, v17

    .line 697
    :goto_8
    move-object/from16 v17, v7

    if-nez v17, :cond_11

    .line 698
    new-instance v17, Ljava/lang/Error;

    move-object/from16 v22, v17

    move-object/from16 v17, v22

    move-object/from16 v18, v22

    new-instance v19, Ljava/lang/StringBuilder;

    move-object/from16 v22, v19

    move-object/from16 v19, v22

    move-object/from16 v20, v22

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "internal error: missing "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v20, v5

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-direct/range {v18 .. v19}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v17

    .line 699
    :cond_11
    move-object/from16 v17, v7

    move-object/from16 v0, v17

    iget-object v0, v0, Lgnu/expr/ScopeExp;->outer:Lgnu/expr/ScopeExp;

    move-object/from16 v17, v0

    move-object/from16 v18, v5

    move-object/from16 v0, v18

    iget-object v0, v0, Lgnu/expr/Declaration;->context:Lgnu/expr/ScopeExp;

    move-object/from16 v18, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    if-ne v0, v1, :cond_12

    .line 700
    .line 703
    move-object/from16 v17, v7

    invoke-virtual/range {v17 .. v17}, Lgnu/expr/ScopeExp;->firstDecl()Lgnu/expr/Declaration;

    move-result-object v17

    move-object/from16 v6, v17

    goto/16 :goto_4

    .line 701
    :cond_12
    move-object/from16 v17, v7

    move-object/from16 v0, v17

    iget-object v0, v0, Lgnu/expr/ScopeExp;->outer:Lgnu/expr/ScopeExp;

    move-object/from16 v17, v0

    move-object/from16 v7, v17

    goto :goto_8

    .line 708
    :cond_13
    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget-object v0, v0, Lkawa/lang/Translator;->env:Lgnu/mapping/Environment;

    move-object/from16 v17, v0

    move-object/from16 v18, v11

    move/from16 v19, v4

    if-eqz v19, :cond_17

    move/from16 v19, v12

    if-eqz v19, :cond_17

    sget-object v19, Lgnu/mapping/EnvironmentKey;->FUNCTION:Ljava/lang/Object;

    :goto_9
    invoke-virtual/range {v17 .. v19}, Lgnu/mapping/Environment;->lookup(Lgnu/mapping/Symbol;Ljava/lang/Object;)Lgnu/mapping/Location;

    move-result-object v17

    move-object/from16 v13, v17

    .line 712
    .local v13, "loc":Lgnu/mapping/Location;
    move-object/from16 v17, v13

    if-eqz v17, :cond_14

    .line 713
    move-object/from16 v17, v13

    invoke-virtual/range {v17 .. v17}, Lgnu/mapping/Location;->getBase()Lgnu/mapping/Location;

    move-result-object v17

    move-object/from16 v13, v17

    .line 714
    :cond_14
    move-object/from16 v17, v13

    move-object/from16 v0, v17

    instance-of v0, v0, Lgnu/kawa/reflect/FieldLocation;

    move/from16 v17, v0

    if-eqz v17, :cond_1d

    .line 716
    move-object/from16 v17, v13

    check-cast v17, Lgnu/kawa/reflect/FieldLocation;

    move-object/from16 v14, v17

    .line 719
    .local v14, "floc":Lgnu/kawa/reflect/FieldLocation;
    move-object/from16 v17, v14

    :try_start_1
    invoke-virtual/range {v17 .. v17}, Lgnu/kawa/reflect/FieldLocation;->getDeclaration()Lgnu/expr/Declaration;

    move-result-object v17

    move-object/from16 v5, v17

    .line 720
    move-object/from16 v17, v2

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Lkawa/lang/Translator;->inlineOk(Lgnu/expr/Expression;)Z

    move-result v17

    if-nez v17, :cond_18

    move-object/from16 v17, v5

    sget-object v18, Lkawa/lang/Translator;->getNamedPartDecl:Lgnu/expr/Declaration;

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    if-eq v0, v1, :cond_18

    const-string/jumbo v17, "objectSyntax"

    move-object/from16 v18, v14

    invoke-virtual/range {v18 .. v18}, Lgnu/kawa/reflect/FieldLocation;->getMemberName()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_15

    const-string/jumbo v17, "kawa.standard.object"

    move-object/from16 v18, v14

    invoke-virtual/range {v18 .. v18}, Lgnu/kawa/reflect/FieldLocation;->getDeclaringClass()Lgnu/bytecode/ClassType;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lgnu/bytecode/ClassType;->getName()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_18

    .line 728
    :cond_15
    const/16 v17, 0x0

    move-object/from16 v5, v17

    .line 759
    .line 760
    :cond_16
    :goto_a
    goto/16 :goto_4

    .line 708
    .end local v13    # "loc":Lgnu/mapping/Location;
    .end local v14    # "floc":Lgnu/kawa/reflect/FieldLocation;
    :cond_17
    const/16 v19, 0x0

    goto :goto_9

    .line 729
    .restart local v13    # "loc":Lgnu/mapping/Location;
    .restart local v14    # "floc":Lgnu/kawa/reflect/FieldLocation;
    :cond_18
    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget-boolean v0, v0, Lkawa/lang/Translator;->immediate:Z

    move/from16 v17, v0

    if-eqz v17, :cond_19

    .line 731
    move-object/from16 v17, v5

    invoke-virtual/range {v17 .. v17}, Lgnu/expr/Declaration;->isStatic()Z

    move-result v17

    if-nez v17, :cond_16

    .line 733
    new-instance v17, Lgnu/expr/Declaration;

    move-object/from16 v22, v17

    move-object/from16 v17, v22

    move-object/from16 v18, v22

    const-string/jumbo v19, "(module-instance)"

    invoke-direct/range {v18 .. v19}, Lgnu/expr/Declaration;-><init>(Ljava/lang/Object;)V

    move-object/from16 v6, v17

    .line 734
    move-object/from16 v17, v6

    new-instance v18, Lgnu/expr/QuoteExp;

    move-object/from16 v22, v18

    move-object/from16 v18, v22

    move-object/from16 v19, v22

    move-object/from16 v20, v14

    invoke-virtual/range {v20 .. v20}, Lgnu/kawa/reflect/FieldLocation;->getInstance()Ljava/lang/Object;

    move-result-object v20

    invoke-direct/range {v19 .. v20}, Lgnu/expr/QuoteExp;-><init>(Ljava/lang/Object;)V

    invoke-virtual/range {v17 .. v18}, Lgnu/expr/Declaration;->setValue(Lgnu/expr/Expression;)V

    goto :goto_a

    .line 737
    :cond_19
    move-object/from16 v17, v5

    invoke-virtual/range {v17 .. v17}, Lgnu/expr/Declaration;->isStatic()Z

    move-result v17

    if-eqz v17, :cond_1c

    .line 742
    move-object/from16 v17, v14

    invoke-virtual/range {v17 .. v17}, Lgnu/kawa/reflect/FieldLocation;->getRClass()Ljava/lang/Class;

    move-result-object v17

    move-object/from16 v15, v17

    .line 744
    .local v15, "fclass":Ljava/lang/Class;
    move-object/from16 v17, v15

    if-eqz v17, :cond_1a

    move-object/from16 v17, v15

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v17

    move-object/from16 v22, v17

    move-object/from16 v17, v22

    move-object/from16 v18, v22

    move-object/from16 v16, v18

    .local v16, "floader":Ljava/lang/ClassLoader;
    move-object/from16 v0, v17

    instance-of v0, v0, Lgnu/bytecode/ZipLoader;

    move/from16 v17, v0

    if-nez v17, :cond_1a

    move-object/from16 v17, v16

    move-object/from16 v0, v17

    instance-of v0, v0, Lgnu/bytecode/ArrayClassLoader;

    move/from16 v17, v0
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    if-eqz v17, :cond_1b

    .line 748
    .end local v16    # "floader":Ljava/lang/ClassLoader;
    :cond_1a
    const/16 v17, 0x0

    move-object/from16 v5, v17

    .line 749
    :cond_1b
    goto :goto_a

    .line 751
    .end local v15    # "fclass":Ljava/lang/Class;
    :cond_1c
    const/16 v17, 0x0

    move-object/from16 v5, v17

    goto :goto_a

    .line 753
    :catch_0
    move-exception v17

    move-object/from16 v15, v17

    .line 755
    .local v15, "ex":Ljava/lang/Throwable;
    move-object/from16 v17, v2

    const/16 v18, 0x65

    new-instance v19, Ljava/lang/StringBuilder;

    move-object/from16 v22, v19

    move-object/from16 v19, v22

    move-object/from16 v20, v22

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "exception loading \'"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v20, v3

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string/jumbo v20, "\' - "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v20, v15

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v17 .. v19}, Lkawa/lang/Translator;->error(CLjava/lang/String;)V

    .line 758
    const/16 v17, 0x0

    move-object/from16 v5, v17

    goto/16 :goto_a

    .line 761
    .end local v14    # "floc":Lgnu/kawa/reflect/FieldLocation;
    .end local v15    # "ex":Ljava/lang/Throwable;
    :cond_1d
    move-object/from16 v17, v13

    if-eqz v17, :cond_1e

    move-object/from16 v17, v13

    invoke-virtual/range {v17 .. v17}, Lgnu/mapping/Location;->isBound()Z

    move-result v17

    if-nez v17, :cond_5

    .line 763
    :cond_1e
    move-object/from16 v17, v2

    invoke-virtual/range {v17 .. v17}, Lkawa/lang/Translator;->getLanguage()Lgnu/expr/Language;

    move-result-object v17

    check-cast v17, Lgnu/kawa/lispexpr/LispLanguage;

    move-object/from16 v18, v11

    move-object/from16 v19, v2

    invoke-virtual/range {v17 .. v19}, Lgnu/kawa/lispexpr/LispLanguage;->checkDefaultBinding(Lgnu/mapping/Symbol;Lkawa/lang/Translator;)Lgnu/expr/Expression;

    move-result-object v17

    move-object/from16 v14, v17

    .line 765
    .local v14, "e":Lgnu/expr/Expression;
    move-object/from16 v17, v14

    if-eqz v17, :cond_5

    .line 766
    move-object/from16 v17, v14

    move-object/from16 v2, v17

    goto/16 :goto_0

    .line 787
    .end local v13    # "loc":Lgnu/mapping/Location;
    .end local v14    # "e":Lgnu/expr/Expression;
    :cond_1f
    move-object/from16 v17, v5

    invoke-virtual/range {v17 .. v17}, Lgnu/expr/Declaration;->getContext()Lgnu/expr/ScopeExp;

    move-result-object v17

    move-object/from16 v0, v17

    instance-of v0, v0, Lkawa/lang/PatternScope;

    move/from16 v17, v0

    if-eqz v17, :cond_20

    .line 788
    move-object/from16 v17, v2

    new-instance v18, Ljava/lang/StringBuilder;

    move-object/from16 v22, v18

    move-object/from16 v18, v22

    move-object/from16 v19, v22

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "reference to pattern variable "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v19, v5

    invoke-virtual/range {v19 .. v19}, Lgnu/expr/Declaration;->getName()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string/jumbo v19, " outside syntax template"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Lkawa/lang/Translator;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v17

    move-object/from16 v2, v17

    goto/16 :goto_0

    .line 791
    :cond_20
    new-instance v17, Lgnu/expr/ReferenceExp;

    move-object/from16 v22, v17

    move-object/from16 v17, v22

    move-object/from16 v18, v22

    move-object/from16 v19, v10

    move-object/from16 v20, v5

    invoke-direct/range {v18 .. v20}, Lgnu/expr/ReferenceExp;-><init>(Ljava/lang/Object;Lgnu/expr/Declaration;)V

    move-object/from16 v13, v17

    .line 792
    .local v13, "rexp":Lgnu/expr/ReferenceExp;
    move-object/from16 v17, v13

    move-object/from16 v18, v6

    invoke-virtual/range {v17 .. v18}, Lgnu/expr/ReferenceExp;->setContextDecl(Lgnu/expr/Declaration;)V

    .line 793
    move-object/from16 v17, v13

    move-object/from16 v18, v2

    invoke-virtual/range {v17 .. v18}, Lgnu/expr/ReferenceExp;->setLine(Lgnu/expr/Compilation;)V

    .line 794
    move/from16 v17, v4

    if-eqz v17, :cond_21

    move/from16 v17, v12

    if-eqz v17, :cond_21

    .line 795
    move-object/from16 v17, v13

    const/16 v18, 0x8

    invoke-virtual/range {v17 .. v18}, Lgnu/expr/ReferenceExp;->setFlag(I)V

    .line 796
    :cond_21
    move-object/from16 v17, v13

    move-object/from16 v2, v17

    goto/16 :goto_0

    .line 798
    .end local v5    # "decl":Lgnu/expr/Declaration;
    .end local v6    # "cdecl":Lgnu/expr/Declaration;
    .end local v7    # "scope":Lgnu/expr/ScopeExp;
    .end local v8    # "decl_nesting":I
    .end local v9    # "dname":Ljava/lang/String;
    .end local v10    # "nameToLookup":Ljava/lang/Object;
    .end local v11    # "symbol":Lgnu/mapping/Symbol;
    .end local v12    # "separate":Z
    .end local v13    # "rexp":Lgnu/expr/ReferenceExp;
    .restart local v3    # "exp":Ljava/lang/Object;
    :cond_22
    move-object/from16 v17, v3

    move-object/from16 v0, v17

    instance-of v0, v0, Lgnu/expr/LangExp;

    move/from16 v17, v0

    if-eqz v17, :cond_23

    .line 799
    move-object/from16 v17, v2

    move-object/from16 v18, v3

    check-cast v18, Lgnu/expr/LangExp;

    invoke-virtual/range {v18 .. v18}, Lgnu/expr/LangExp;->getLangValue()Ljava/lang/Object;

    move-result-object v18

    move/from16 v19, v4

    invoke-virtual/range {v17 .. v19}, Lkawa/lang/Translator;->rewrite(Ljava/lang/Object;Z)Lgnu/expr/Expression;

    move-result-object v17

    move-object/from16 v2, v17

    goto/16 :goto_0

    .line 800
    :cond_23
    move-object/from16 v17, v3

    move-object/from16 v0, v17

    instance-of v0, v0, Lgnu/expr/Expression;

    move/from16 v17, v0

    if-eqz v17, :cond_24

    .line 801
    move-object/from16 v17, v3

    check-cast v17, Lgnu/expr/Expression;

    move-object/from16 v2, v17

    goto/16 :goto_0

    .line 802
    :cond_24
    move-object/from16 v17, v3

    sget-object v18, Lgnu/expr/Special;->abstractSpecial:Lgnu/expr/Special;

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    if-ne v0, v1, :cond_25

    .line 803
    sget-object v17, Lgnu/expr/QuoteExp;->abstractExp:Lgnu/expr/QuoteExp;

    move-object/from16 v2, v17

    goto/16 :goto_0

    .line 805
    :cond_25
    move-object/from16 v17, v3

    move-object/from16 v18, v2

    invoke-static/range {v17 .. v18}, Lkawa/lang/Quote;->quote(Ljava/lang/Object;Lkawa/lang/Translator;)Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v18, v2

    invoke-static/range {v17 .. v18}, Lgnu/expr/QuoteExp;->getInstance(Ljava/lang/Object;Lgnu/text/SourceLocator;)Lgnu/expr/QuoteExp;

    move-result-object v17

    move-object/from16 v2, v17

    goto/16 :goto_0
.end method

.method public rewriteInBody(Ljava/lang/Object;)V
    .locals 9

    .prologue
    .line 532
    move-object v0, p0

    .local v0, "this":Lkawa/lang/Translator;
    move-object v1, p1

    .local v1, "exp":Ljava/lang/Object;
    move-object v5, v1

    instance-of v5, v5, Lkawa/lang/SyntaxForm;

    if-eqz v5, :cond_0

    .line 534
    move-object v5, v1

    check-cast v5, Lkawa/lang/SyntaxForm;

    move-object v2, v5

    .line 535
    .local v2, "sf":Lkawa/lang/SyntaxForm;
    move-object v5, v0

    iget-object v5, v5, Lkawa/lang/Translator;->current_scope:Lgnu/expr/ScopeExp;

    move-object v3, v5

    .line 538
    .local v3, "save_scope":Lgnu/expr/ScopeExp;
    move-object v5, v0

    move-object v6, v2

    :try_start_0
    invoke-interface {v6}, Lkawa/lang/SyntaxForm;->getScope()Lkawa/lang/TemplateScope;

    move-result-object v6

    invoke-virtual {v5, v6}, Lkawa/lang/Translator;->setCurrentScope(Lgnu/expr/ScopeExp;)V

    .line 539
    move-object v5, v0

    move-object v6, v2

    invoke-interface {v6}, Lkawa/lang/SyntaxForm;->getDatum()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Lkawa/lang/Translator;->rewriteInBody(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 543
    move-object v5, v0

    move-object v6, v3

    invoke-virtual {v5, v6}, Lkawa/lang/Translator;->setCurrentScope(Lgnu/expr/ScopeExp;)V

    .line 544
    .line 545
    .line 554
    .end local v2    # "sf":Lkawa/lang/SyntaxForm;
    .end local v3    # "save_scope":Lgnu/expr/ScopeExp;
    :goto_0
    return-void

    .line 543
    .restart local v2    # "sf":Lkawa/lang/SyntaxForm;
    .restart local v3    # "save_scope":Lgnu/expr/ScopeExp;
    :catchall_0
    move-exception v5

    move-object v4, v5

    move-object v5, v0

    move-object v6, v3

    invoke-virtual {v5, v6}, Lkawa/lang/Translator;->setCurrentScope(Lgnu/expr/ScopeExp;)V

    move-object v5, v4

    throw v5

    .line 546
    .end local v2    # "sf":Lkawa/lang/SyntaxForm;
    .end local v3    # "save_scope":Lgnu/expr/ScopeExp;
    :cond_0
    move-object v5, v1

    instance-of v5, v5, Lgnu/mapping/Values;

    if-eqz v5, :cond_2

    .line 548
    move-object v5, v1

    check-cast v5, Lgnu/mapping/Values;

    invoke-virtual {v5}, Lgnu/mapping/Values;->getValues()[Ljava/lang/Object;

    move-result-object v5

    move-object v2, v5

    .line 549
    .local v2, "vals":[Ljava/lang/Object;
    const/4 v5, 0x0

    move v3, v5

    .local v3, "i":I
    :goto_1
    move v5, v3

    move-object v6, v2

    array-length v6, v6

    if-ge v5, v6, :cond_1

    .line 550
    move-object v5, v0

    move-object v6, v2

    move v7, v3

    aget-object v6, v6, v7

    invoke-virtual {v5, v6}, Lkawa/lang/Translator;->rewriteInBody(Ljava/lang/Object;)V

    .line 549
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 551
    :cond_1
    goto :goto_0

    .line 553
    .end local v2    # "vals":[Ljava/lang/Object;
    .end local v3    # "i":I
    :cond_2
    move-object v5, v0

    iget-object v5, v5, Lkawa/lang/Translator;->formStack:Ljava/util/Stack;

    move-object v6, v0

    move-object v7, v1

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Lkawa/lang/Translator;->rewrite(Ljava/lang/Object;Z)Lgnu/expr/Expression;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/Stack;->add(Ljava/lang/Object;)Z

    move-result v5

    goto :goto_0
.end method

.method public rewrite_body(Ljava/lang/Object;)Lgnu/expr/Expression;
    .locals 15

    .prologue
    .line 1182
    move-object v0, p0

    .local v0, "this":Lkawa/lang/Translator;
    move-object/from16 v1, p1

    .local v1, "exp":Ljava/lang/Object;
    move-object v10, v0

    move-object v11, v1

    invoke-virtual {v10, v11}, Lkawa/lang/Translator;->pushPositionOf(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    move-object v2, v10

    .line 1183
    .local v2, "saved":Ljava/lang/Object;
    new-instance v10, Lgnu/expr/LetExp;

    move-object v14, v10

    move-object v10, v14

    move-object v11, v14

    const/4 v12, 0x0

    invoke-direct {v11, v12}, Lgnu/expr/LetExp;-><init>([Lgnu/expr/Expression;)V

    move-object v3, v10

    .line 1184
    .local v3, "defs":Lgnu/expr/LetExp;
    move-object v10, v0

    iget-object v10, v10, Lkawa/lang/Translator;->formStack:Ljava/util/Stack;

    invoke-virtual {v10}, Ljava/util/Stack;->size()I

    move-result v10

    move v4, v10

    .line 1185
    .local v4, "first":I
    move-object v10, v3

    move-object v11, v0

    iget-object v11, v11, Lkawa/lang/Translator;->current_scope:Lgnu/expr/ScopeExp;

    iput-object v11, v10, Lgnu/expr/LetExp;->outer:Lgnu/expr/ScopeExp;

    .line 1186
    move-object v10, v0

    move-object v11, v3

    iput-object v11, v10, Lkawa/lang/Translator;->current_scope:Lgnu/expr/ScopeExp;

    .line 1189
    move-object v10, v0

    move-object v11, v1

    move-object v12, v3

    const/4 v13, 0x1

    :try_start_0
    invoke-virtual {v10, v11, v12, v13}, Lkawa/lang/Translator;->scanBody(Ljava/lang/Object;Lgnu/expr/ScopeExp;Z)Lgnu/lists/LList;

    move-result-object v10

    move-object v5, v10

    .line 1190
    .local v5, "list":Lgnu/lists/LList;
    move-object v10, v5

    invoke-virtual {v10}, Lgnu/lists/LList;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_0

    .line 1191
    move-object v10, v0

    iget-object v10, v10, Lkawa/lang/Translator;->formStack:Ljava/util/Stack;

    move-object v11, v0

    const-string/jumbo v12, "body with no expressions"

    invoke-virtual {v11, v12}, Lkawa/lang/Translator;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/util/Stack;->add(Ljava/lang/Object;)Z

    move-result v10

    .line 1192
    :cond_0
    move-object v10, v3

    invoke-virtual {v10}, Lgnu/expr/LetExp;->countNonDynamicDecls()I

    move-result v10

    move v6, v10

    .line 1193
    .local v6, "ndecls":I
    move v10, v6

    if-eqz v10, :cond_2

    .line 1195
    move v10, v6

    new-array v10, v10, [Lgnu/expr/Expression;

    move-object v7, v10

    .line 1196
    .local v7, "inits":[Lgnu/expr/Expression;
    move v10, v6

    move v8, v10

    .local v8, "i":I
    :goto_0
    add-int/lit8 v8, v8, -0x1

    move v10, v8

    if-ltz v10, :cond_1

    .line 1197
    move-object v10, v7

    move v11, v8

    sget-object v12, Lgnu/expr/QuoteExp;->undefined_exp:Lgnu/expr/QuoteExp;

    aput-object v12, v10, v11

    goto :goto_0

    .line 1198
    :cond_1
    move-object v10, v3

    move-object v11, v7

    iput-object v11, v10, Lgnu/expr/LetExp;->inits:[Lgnu/expr/Expression;

    .line 1200
    .end local v7    # "inits":[Lgnu/expr/Expression;
    .end local v8    # "i":I
    :cond_2
    move-object v10, v0

    move-object v11, v5

    invoke-direct {v10, v11}, Lkawa/lang/Translator;->rewriteBody(Lgnu/lists/LList;)V

    .line 1201
    move-object v10, v0

    move v11, v4

    const/4 v12, 0x0

    invoke-direct {v10, v11, v12}, Lkawa/lang/Translator;->makeBody(ILgnu/expr/ScopeExp;)Lgnu/expr/Expression;

    move-result-object v10

    move-object v7, v10

    .line 1202
    .local v7, "body":Lgnu/expr/Expression;
    move-object v10, v0

    move-object v11, v7

    invoke-virtual {v10, v11}, Lkawa/lang/Translator;->setLineOf(Lgnu/expr/Expression;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1203
    move v10, v6

    if-nez v10, :cond_3

    .line 1204
    move-object v10, v7

    move-object v8, v10

    .line 1211
    move-object v10, v0

    move-object v11, v3

    invoke-virtual {v10, v11}, Lkawa/lang/Translator;->pop(Lgnu/expr/ScopeExp;)V

    .line 1212
    move-object v10, v0

    move-object v11, v2

    invoke-virtual {v10, v11}, Lkawa/lang/Translator;->popPositionOf(Ljava/lang/Object;)V

    move-object v10, v8

    move-object v0, v10

    .end local v0    # "this":Lkawa/lang/Translator;
    :goto_1
    return-object v0

    .line 1205
    .restart local v0    # "this":Lkawa/lang/Translator;
    :cond_3
    move-object v10, v3

    move-object v11, v7

    :try_start_1
    iput-object v11, v10, Lgnu/expr/LetExp;->body:Lgnu/expr/Expression;

    .line 1206
    move-object v10, v0

    move-object v11, v3

    invoke-virtual {v10, v11}, Lkawa/lang/Translator;->setLineOf(Lgnu/expr/Expression;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1207
    move-object v10, v3

    move-object v8, v10

    .line 1211
    move-object v10, v0

    move-object v11, v3

    invoke-virtual {v10, v11}, Lkawa/lang/Translator;->pop(Lgnu/expr/ScopeExp;)V

    .line 1212
    move-object v10, v0

    move-object v11, v2

    invoke-virtual {v10, v11}, Lkawa/lang/Translator;->popPositionOf(Ljava/lang/Object;)V

    move-object v10, v8

    move-object v0, v10

    goto :goto_1

    .line 1211
    .end local v5    # "list":Lgnu/lists/LList;
    .end local v6    # "ndecls":I
    .end local v7    # "body":Lgnu/expr/Expression;
    :catchall_0
    move-exception v10

    move-object v9, v10

    move-object v10, v0

    move-object v11, v3

    invoke-virtual {v10, v11}, Lkawa/lang/Translator;->pop(Lgnu/expr/ScopeExp;)V

    .line 1212
    move-object v10, v0

    move-object v11, v2

    invoke-virtual {v10, v11}, Lkawa/lang/Translator;->popPositionOf(Ljava/lang/Object;)V

    move-object v10, v9

    throw v10
.end method

.method public final rewrite_car(Lgnu/lists/Pair;Lkawa/lang/SyntaxForm;)Lgnu/expr/Expression;
    .locals 9

    .prologue
    .line 87
    move-object v0, p0

    .local v0, "this":Lkawa/lang/Translator;
    move-object v1, p1

    .local v1, "pair":Lgnu/lists/Pair;
    move-object v2, p2

    .local v2, "syntax":Lkawa/lang/SyntaxForm;
    move-object v6, v2

    if-eqz v6, :cond_0

    move-object v6, v2

    invoke-interface {v6}, Lkawa/lang/SyntaxForm;->getScope()Lkawa/lang/TemplateScope;

    move-result-object v6

    move-object v7, v0

    iget-object v7, v7, Lkawa/lang/Translator;->current_scope:Lgnu/expr/ScopeExp;

    if-eq v6, v7, :cond_0

    move-object v6, v1

    invoke-virtual {v6}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v6

    instance-of v6, v6, Lkawa/lang/SyntaxForm;

    if-eqz v6, :cond_1

    .line 89
    :cond_0
    move-object v6, v0

    move-object v7, v1

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Lkawa/lang/Translator;->rewrite_car(Lgnu/lists/Pair;Z)Lgnu/expr/Expression;

    move-result-object v6

    move-object v0, v6

    .line 98
    .end local v0    # "this":Lkawa/lang/Translator;
    :goto_0
    return-object v0

    .line 90
    .restart local v0    # "this":Lkawa/lang/Translator;
    :cond_1
    move-object v6, v0

    iget-object v6, v6, Lkawa/lang/Translator;->current_scope:Lgnu/expr/ScopeExp;

    move-object v3, v6

    .line 93
    .local v3, "save_scope":Lgnu/expr/ScopeExp;
    move-object v6, v0

    move-object v7, v2

    :try_start_0
    invoke-interface {v7}, Lkawa/lang/SyntaxForm;->getScope()Lkawa/lang/TemplateScope;

    move-result-object v7

    invoke-virtual {v6, v7}, Lkawa/lang/Translator;->setCurrentScope(Lgnu/expr/ScopeExp;)V

    .line 94
    move-object v6, v0

    move-object v7, v1

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Lkawa/lang/Translator;->rewrite_car(Lgnu/lists/Pair;Z)Lgnu/expr/Expression;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v6

    move-object v4, v6

    .line 98
    move-object v6, v0

    move-object v7, v3

    invoke-virtual {v6, v7}, Lkawa/lang/Translator;->setCurrentScope(Lgnu/expr/ScopeExp;)V

    move-object v6, v4

    move-object v0, v6

    goto :goto_0

    :catchall_0
    move-exception v6

    move-object v5, v6

    move-object v6, v0

    move-object v7, v3

    invoke-virtual {v6, v7}, Lkawa/lang/Translator;->setCurrentScope(Lgnu/expr/ScopeExp;)V

    move-object v6, v5

    throw v6
.end method

.method public final rewrite_car(Lgnu/lists/Pair;Z)Lgnu/expr/Expression;
    .locals 8

    .prologue
    .line 104
    move-object v0, p0

    .local v0, "this":Lkawa/lang/Translator;
    move-object v1, p1

    .local v1, "pair":Lgnu/lists/Pair;
    move v2, p2

    .local v2, "function":Z
    move-object v4, v1

    invoke-virtual {v4}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v4

    move-object v3, v4

    .line 105
    .local v3, "car":Ljava/lang/Object;
    move-object v4, v1

    instance-of v4, v4, Lgnu/lists/PairWithPosition;

    if-eqz v4, :cond_0

    .line 106
    move-object v4, v0

    move-object v5, v3

    move v6, v2

    move-object v7, v1

    check-cast v7, Lgnu/lists/PairWithPosition;

    invoke-virtual {v4, v5, v6, v7}, Lkawa/lang/Translator;->rewrite_with_position(Ljava/lang/Object;ZLgnu/lists/PairWithPosition;)Lgnu/expr/Expression;

    move-result-object v4

    move-object v0, v4

    .line 108
    .end local v0    # "this":Lkawa/lang/Translator;
    :goto_0
    return-object v0

    .restart local v0    # "this":Lkawa/lang/Translator;
    :cond_0
    move-object v4, v0

    move-object v5, v3

    move v6, v2

    invoke-virtual {v4, v5, v6}, Lkawa/lang/Translator;->rewrite(Ljava/lang/Object;Z)Lgnu/expr/Expression;

    move-result-object v4

    move-object v0, v4

    goto :goto_0
.end method

.method public rewrite_pair(Lgnu/lists/Pair;Z)Lgnu/expr/Expression;
    .locals 22

    .prologue
    .line 287
    move-object/from16 v2, p0

    .local v2, "this":Lkawa/lang/Translator;
    move-object/from16 v3, p1

    .local v3, "p":Lgnu/lists/Pair;
    move/from16 v4, p2

    .local v4, "function":Z
    move-object/from16 v17, v2

    move-object/from16 v18, v3

    const/16 v19, 0x1

    invoke-virtual/range {v17 .. v19}, Lkawa/lang/Translator;->rewrite_car(Lgnu/lists/Pair;Z)Lgnu/expr/Expression;

    move-result-object v17

    move-object/from16 v5, v17

    .line 288
    .local v5, "func":Lgnu/expr/Expression;
    const/16 v17, 0x0

    move-object/from16 v6, v17

    .line 289
    .local v6, "proc":Ljava/lang/Object;
    move-object/from16 v17, v5

    move-object/from16 v0, v17

    instance-of v0, v0, Lgnu/expr/QuoteExp;

    move/from16 v17, v0

    if-eqz v17, :cond_0

    .line 291
    move-object/from16 v17, v5

    invoke-virtual/range {v17 .. v17}, Lgnu/expr/Expression;->valueIfConstant()Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v6, v17

    .line 292
    move-object/from16 v17, v6

    move-object/from16 v0, v17

    instance-of v0, v0, Lkawa/lang/Syntax;

    move/from16 v17, v0

    if-eqz v17, :cond_0

    .line 293
    move-object/from16 v17, v2

    move-object/from16 v18, v6

    check-cast v18, Lkawa/lang/Syntax;

    move-object/from16 v19, v3

    invoke-virtual/range {v17 .. v19}, Lkawa/lang/Translator;->apply_rewrite(Lkawa/lang/Syntax;Lgnu/lists/Pair;)Lgnu/expr/Expression;

    move-result-object v17

    move-object/from16 v2, v17

    .line 416
    .end local v2    # "this":Lkawa/lang/Translator;
    .end local v6    # "proc":Ljava/lang/Object;
    :goto_0
    return-object v2

    .line 295
    .restart local v2    # "this":Lkawa/lang/Translator;
    :cond_0
    const/16 v17, 0x0

    move-object/from16 v7, v17

    .line 296
    .local v7, "ref":Lgnu/expr/ReferenceExp;
    move-object/from16 v17, v5

    move-object/from16 v0, v17

    instance-of v0, v0, Lgnu/expr/ReferenceExp;

    move/from16 v17, v0

    if-eqz v17, :cond_5

    .line 298
    move-object/from16 v17, v5

    check-cast v17, Lgnu/expr/ReferenceExp;

    move-object/from16 v7, v17

    .line 299
    move-object/from16 v17, v7

    invoke-virtual/range {v17 .. v17}, Lgnu/expr/ReferenceExp;->getBinding()Lgnu/expr/Declaration;

    move-result-object v17

    move-object/from16 v8, v17

    .line 300
    .local v8, "decl":Lgnu/expr/Declaration;
    move-object/from16 v17, v8

    if-nez v17, :cond_6

    .line 302
    move-object/from16 v17, v7

    invoke-virtual/range {v17 .. v17}, Lgnu/expr/ReferenceExp;->getSymbol()Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v9, v17

    .line 305
    .local v9, "sym":Ljava/lang/Object;
    move-object/from16 v17, v9

    move-object/from16 v0, v17

    instance-of v0, v0, Lgnu/mapping/Symbol;

    move/from16 v17, v0

    if-eqz v17, :cond_1

    move-object/from16 v17, v2

    move-object/from16 v18, v9

    invoke-virtual/range {v17 .. v18}, Lkawa/lang/Translator;->selfEvaluatingSymbol(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_1

    .line 307
    move-object/from16 v17, v9

    check-cast v17, Lgnu/mapping/Symbol;

    move-object/from16 v10, v17

    .line 308
    .local v10, "symbol":Lgnu/mapping/Symbol;
    move-object/from16 v17, v10

    invoke-virtual/range {v17 .. v17}, Lgnu/mapping/Symbol;->getName()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v11, v17

    .line 315
    .local v11, "name":Ljava/lang/String;
    :goto_1
    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget-object v0, v0, Lkawa/lang/Translator;->env:Lgnu/mapping/Environment;

    move-object/from16 v17, v0

    move-object/from16 v18, v10

    move-object/from16 v19, v2

    invoke-virtual/range {v19 .. v19}, Lkawa/lang/Translator;->getLanguage()Lgnu/expr/Language;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lgnu/expr/Language;->hasSeparateFunctionNamespace()Z

    move-result v19

    if-eqz v19, :cond_2

    sget-object v19, Lgnu/mapping/EnvironmentKey;->FUNCTION:Ljava/lang/Object;

    :goto_2
    const/16 v20, 0x0

    invoke-virtual/range {v17 .. v20}, Lgnu/mapping/Environment;->get(Lgnu/mapping/Symbol;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v6, v17

    .line 320
    .restart local v6    # "proc":Ljava/lang/Object;
    move-object/from16 v17, v6

    move-object/from16 v0, v17

    instance-of v0, v0, Lkawa/lang/Syntax;

    move/from16 v17, v0

    if-eqz v17, :cond_3

    .line 321
    move-object/from16 v17, v2

    move-object/from16 v18, v6

    check-cast v18, Lkawa/lang/Syntax;

    move-object/from16 v19, v3

    invoke-virtual/range {v17 .. v19}, Lkawa/lang/Translator;->apply_rewrite(Lkawa/lang/Syntax;Lgnu/lists/Pair;)Lgnu/expr/Expression;

    move-result-object v17

    move-object/from16 v2, v17

    goto/16 :goto_0

    .line 312
    .end local v6    # "proc":Ljava/lang/Object;
    .end local v10    # "symbol":Lgnu/mapping/Symbol;
    .end local v11    # "name":Ljava/lang/String;
    :cond_1
    move-object/from16 v17, v9

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v11, v17

    .line 313
    .restart local v11    # "name":Ljava/lang/String;
    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget-object v0, v0, Lkawa/lang/Translator;->env:Lgnu/mapping/Environment;

    move-object/from16 v17, v0

    move-object/from16 v18, v11

    invoke-virtual/range {v17 .. v18}, Lgnu/mapping/Environment;->getSymbol(Ljava/lang/String;)Lgnu/mapping/Symbol;

    move-result-object v17

    move-object/from16 v10, v17

    .restart local v10    # "symbol":Lgnu/mapping/Symbol;
    goto :goto_1

    .line 315
    :cond_2
    const/16 v19, 0x0

    goto :goto_2

    .line 322
    .restart local v6    # "proc":Ljava/lang/Object;
    :cond_3
    move-object/from16 v17, v6

    move-object/from16 v0, v17

    instance-of v0, v0, Lkawa/lang/AutoloadProcedure;

    move/from16 v17, v0

    if-eqz v17, :cond_4

    .line 326
    move-object/from16 v17, v6

    :try_start_0
    check-cast v17, Lkawa/lang/AutoloadProcedure;

    invoke-virtual/range {v17 .. v17}, Lkawa/lang/AutoloadProcedure;->getLoaded()Lgnu/mapping/Procedure;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v17

    move-object/from16 v6, v17

    .line 331
    .line 333
    .line 346
    .end local v6    # "proc":Ljava/lang/Object;
    .end local v9    # "sym":Ljava/lang/Object;
    .end local v10    # "symbol":Lgnu/mapping/Symbol;
    .end local v11    # "name":Ljava/lang/String;
    :cond_4
    :goto_3
    move-object/from16 v17, v7

    const/16 v18, 0x1

    invoke-virtual/range {v17 .. v18}, Lgnu/expr/ReferenceExp;->setProcedureName(Z)V

    .line 347
    move-object/from16 v17, v2

    invoke-virtual/range {v17 .. v17}, Lkawa/lang/Translator;->getLanguage()Lgnu/expr/Language;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lgnu/expr/Language;->hasSeparateFunctionNamespace()Z

    move-result v17

    if-eqz v17, :cond_5

    .line 348
    move-object/from16 v17, v5

    const/16 v18, 0x8

    invoke-virtual/range {v17 .. v18}, Lgnu/expr/Expression;->setFlag(I)V

    .line 351
    .end local v8    # "decl":Lgnu/expr/Declaration;
    :cond_5
    move-object/from16 v17, v3

    invoke-virtual/range {v17 .. v17}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v8, v17

    .line 352
    .local v8, "cdr":Ljava/lang/Object;
    move-object/from16 v17, v8

    invoke-static/range {v17 .. v17}, Lkawa/lang/Translator;->listLength(Ljava/lang/Object;)I

    move-result v17

    move/from16 v9, v17

    .line 354
    .local v9, "cdr_length":I
    move/from16 v17, v9

    const/16 v18, -0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_7

    .line 355
    move-object/from16 v17, v2

    new-instance v18, Ljava/lang/StringBuilder;

    move-object/from16 v21, v18

    move-object/from16 v18, v21

    move-object/from16 v19, v21

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "circular list is not allowed after "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v19, v3

    invoke-virtual/range {v19 .. v19}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Lkawa/lang/Translator;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v17

    move-object/from16 v2, v17

    goto/16 :goto_0

    .line 328
    .restart local v6    # "proc":Ljava/lang/Object;
    .local v8, "decl":Lgnu/expr/Declaration;
    .local v9, "sym":Ljava/lang/Object;
    .restart local v10    # "symbol":Lgnu/mapping/Symbol;
    .restart local v11    # "name":Ljava/lang/String;
    :catch_0
    move-exception v17

    move-object/from16 v12, v17

    .line 330
    .local v12, "ex":Ljava/lang/RuntimeException;
    const/16 v17, 0x0

    move-object/from16 v6, v17

    goto :goto_3

    .line 336
    .end local v6    # "proc":Ljava/lang/Object;
    .end local v9    # "sym":Ljava/lang/Object;
    .end local v10    # "symbol":Lgnu/mapping/Symbol;
    .end local v11    # "name":Ljava/lang/String;
    .end local v12    # "ex":Ljava/lang/RuntimeException;
    :cond_6
    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget-object v0, v0, Lkawa/lang/Translator;->macroContext:Lgnu/expr/Declaration;

    move-object/from16 v17, v0

    move-object/from16 v9, v17

    .line 337
    .local v9, "saveContext":Lgnu/expr/Declaration;
    move-object/from16 v17, v2

    move-object/from16 v18, v8

    invoke-virtual/range {v17 .. v18}, Lkawa/lang/Translator;->check_if_Syntax(Lgnu/expr/Declaration;)Lkawa/lang/Syntax;

    move-result-object v17

    move-object/from16 v10, v17

    .line 338
    .local v10, "syntax":Lkawa/lang/Syntax;
    move-object/from16 v17, v10

    if-eqz v17, :cond_4

    .line 340
    move-object/from16 v17, v2

    move-object/from16 v18, v10

    move-object/from16 v19, v3

    invoke-virtual/range {v17 .. v19}, Lkawa/lang/Translator;->apply_rewrite(Lkawa/lang/Syntax;Lgnu/lists/Pair;)Lgnu/expr/Expression;

    move-result-object v17

    move-object/from16 v11, v17

    .line 341
    .local v11, "e":Lgnu/expr/Expression;
    move-object/from16 v17, v2

    move-object/from16 v18, v9

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    iput-object v0, v1, Lkawa/lang/Translator;->macroContext:Lgnu/expr/Declaration;

    .line 342
    move-object/from16 v17, v11

    move-object/from16 v2, v17

    goto/16 :goto_0

    .line 356
    .end local v10    # "syntax":Lkawa/lang/Syntax;
    .end local v11    # "e":Lgnu/expr/Expression;
    .local v8, "cdr":Ljava/lang/Object;
    .local v9, "cdr_length":I
    :cond_7
    move/from16 v17, v9

    if-gez v17, :cond_8

    .line 357
    move-object/from16 v17, v2

    new-instance v18, Ljava/lang/StringBuilder;

    move-object/from16 v21, v18

    move-object/from16 v18, v21

    move-object/from16 v19, v21

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "dotted list ["

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v19, v8

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string/jumbo v19, "] is not allowed after "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v19, v3

    invoke-virtual/range {v19 .. v19}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Lkawa/lang/Translator;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v17

    move-object/from16 v2, v17

    goto/16 :goto_0

    .line 359
    :cond_8
    const/16 v17, 0x0

    move/from16 v10, v17

    .line 360
    .local v10, "mapKeywordsToAttributes":Z
    new-instance v17, Ljava/util/Stack;

    move-object/from16 v21, v17

    move-object/from16 v17, v21

    move-object/from16 v18, v21

    invoke-direct/range {v18 .. v18}, Ljava/util/Stack;-><init>()V

    move-object/from16 v11, v17

    .line 362
    .local v11, "vec":Ljava/util/Stack;
    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget-object v0, v0, Lkawa/lang/Translator;->current_scope:Lgnu/expr/ScopeExp;

    move-object/from16 v17, v0

    move-object/from16 v12, v17

    .line 363
    .local v12, "save_scope":Lgnu/expr/ScopeExp;
    const/16 v17, 0x0

    move/from16 v13, v17

    .local v13, "i":I
    :goto_4
    move/from16 v17, v13

    move/from16 v18, v9

    move/from16 v0, v17

    move/from16 v1, v18

    if-ge v0, v1, :cond_d

    .line 365
    move-object/from16 v17, v8

    move-object/from16 v0, v17

    instance-of v0, v0, Lkawa/lang/SyntaxForm;

    move/from16 v17, v0

    if-eqz v17, :cond_9

    .line 367
    move-object/from16 v17, v8

    check-cast v17, Lkawa/lang/SyntaxForm;

    move-object/from16 v14, v17

    .line 368
    .local v14, "sf":Lkawa/lang/SyntaxForm;
    move-object/from16 v17, v14

    invoke-interface/range {v17 .. v17}, Lkawa/lang/SyntaxForm;->getDatum()Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v8, v17

    .line 369
    move-object/from16 v17, v2

    move-object/from16 v18, v14

    invoke-interface/range {v18 .. v18}, Lkawa/lang/SyntaxForm;->getScope()Lkawa/lang/TemplateScope;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Lkawa/lang/Translator;->setCurrentScope(Lgnu/expr/ScopeExp;)V

    .line 371
    .end local v14    # "sf":Lkawa/lang/SyntaxForm;
    :cond_9
    move-object/from16 v17, v8

    check-cast v17, Lgnu/lists/Pair;

    move-object/from16 v14, v17

    .line 372
    .local v14, "cdr_pair":Lgnu/lists/Pair;
    move-object/from16 v17, v2

    move-object/from16 v18, v14

    const/16 v19, 0x0

    invoke-virtual/range {v17 .. v19}, Lkawa/lang/Translator;->rewrite_car(Lgnu/lists/Pair;Z)Lgnu/expr/Expression;

    move-result-object v17

    move-object/from16 v15, v17

    .line 373
    .local v15, "arg":Lgnu/expr/Expression;
    add-int/lit8 v13, v13, 0x1

    .line 375
    move/from16 v17, v10

    if-eqz v17, :cond_a

    .line 377
    move/from16 v17, v13

    const/16 v18, 0x1

    and-int/lit8 v17, v17, 0x1

    if-nez v17, :cond_b

    .line 379
    const/16 v17, 0x2

    move/from16 v0, v17

    new-array v0, v0, [Lgnu/expr/Expression;

    move-object/from16 v17, v0

    move-object/from16 v16, v17

    .line 380
    .local v16, "aargs":[Lgnu/expr/Expression;
    move-object/from16 v17, v16

    const/16 v18, 0x0

    move-object/from16 v19, v11

    invoke-virtual/range {v19 .. v19}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lgnu/expr/Expression;

    aput-object v19, v17, v18

    .line 381
    move-object/from16 v17, v16

    const/16 v18, 0x1

    move-object/from16 v19, v15

    aput-object v19, v17, v18

    .line 382
    new-instance v17, Lgnu/expr/ApplyExp;

    move-object/from16 v21, v17

    move-object/from16 v17, v21

    move-object/from16 v18, v21

    sget-object v19, Lgnu/kawa/xml/MakeAttribute;->makeAttribute:Lgnu/kawa/xml/MakeAttribute;

    move-object/from16 v20, v16

    invoke-direct/range {v18 .. v20}, Lgnu/expr/ApplyExp;-><init>(Lgnu/mapping/Procedure;[Lgnu/expr/Expression;)V

    move-object/from16 v15, v17

    .line 396
    .end local v16    # "aargs":[Lgnu/expr/Expression;
    :cond_a
    :goto_5
    move-object/from16 v17, v11

    move-object/from16 v18, v15

    invoke-virtual/range {v17 .. v18}, Ljava/util/Stack;->addElement(Ljava/lang/Object;)V

    .line 397
    move-object/from16 v17, v14

    invoke-virtual/range {v17 .. v17}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v8, v17

    .line 398
    goto/16 :goto_4

    .line 387
    :cond_b
    move-object/from16 v17, v15

    move-object/from16 v0, v17

    instance-of v0, v0, Lgnu/expr/QuoteExp;

    move/from16 v17, v0

    if-eqz v17, :cond_c

    move-object/from16 v17, v15

    check-cast v17, Lgnu/expr/QuoteExp;

    invoke-virtual/range {v17 .. v17}, Lgnu/expr/QuoteExp;->getValue()Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v21, v17

    move-object/from16 v17, v21

    move-object/from16 v18, v21

    move-object/from16 v16, v18

    .local v16, "value":Ljava/lang/Object;
    move-object/from16 v0, v17

    instance-of v0, v0, Lgnu/expr/Keyword;

    move/from16 v17, v0

    if-eqz v17, :cond_c

    move/from16 v17, v13

    move/from16 v18, v9

    move/from16 v0, v17

    move/from16 v1, v18

    if-ge v0, v1, :cond_c

    .line 390
    new-instance v17, Lgnu/expr/QuoteExp;

    move-object/from16 v21, v17

    move-object/from16 v17, v21

    move-object/from16 v18, v21

    move-object/from16 v19, v16

    check-cast v19, Lgnu/expr/Keyword;

    invoke-virtual/range {v19 .. v19}, Lgnu/expr/Keyword;->asSymbol()Lgnu/mapping/Symbol;

    move-result-object v19

    invoke-direct/range {v18 .. v19}, Lgnu/expr/QuoteExp;-><init>(Ljava/lang/Object;)V

    move-object/from16 v15, v17

    goto :goto_5

    .line 392
    .end local v16    # "value":Ljava/lang/Object;
    :cond_c
    const/16 v17, 0x0

    move/from16 v10, v17

    goto :goto_5

    .line 399
    .end local v14    # "cdr_pair":Lgnu/lists/Pair;
    .end local v15    # "arg":Lgnu/expr/Expression;
    :cond_d
    move-object/from16 v17, v11

    invoke-virtual/range {v17 .. v17}, Ljava/util/Stack;->size()I

    move-result v17

    move/from16 v0, v17

    new-array v0, v0, [Lgnu/expr/Expression;

    move-object/from16 v17, v0

    move-object/from16 v13, v17

    .line 400
    .local v13, "args":[Lgnu/expr/Expression;
    move-object/from16 v17, v11

    move-object/from16 v18, v13

    invoke-virtual/range {v17 .. v18}, Ljava/util/Stack;->copyInto([Ljava/lang/Object;)V

    .line 402
    move-object/from16 v17, v12

    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget-object v0, v0, Lkawa/lang/Translator;->current_scope:Lgnu/expr/ScopeExp;

    move-object/from16 v18, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    if-eq v0, v1, :cond_e

    .line 403
    move-object/from16 v17, v2

    move-object/from16 v18, v12

    invoke-virtual/range {v17 .. v18}, Lkawa/lang/Translator;->setCurrentScope(Lgnu/expr/ScopeExp;)V

    .line 405
    :cond_e
    move-object/from16 v17, v5

    move-object/from16 v0, v17

    instance-of v0, v0, Lgnu/expr/ReferenceExp;

    move/from16 v17, v0

    if-eqz v17, :cond_10

    move-object/from16 v17, v5

    check-cast v17, Lgnu/expr/ReferenceExp;

    invoke-virtual/range {v17 .. v17}, Lgnu/expr/ReferenceExp;->getBinding()Lgnu/expr/Declaration;

    move-result-object v17

    sget-object v18, Lkawa/lang/Translator;->getNamedPartDecl:Lgnu/expr/Declaration;

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    if-ne v0, v1, :cond_10

    .line 408
    move-object/from16 v17, v13

    const/16 v18, 0x0

    aget-object v17, v17, v18

    move-object/from16 v14, v17

    .line 409
    .local v14, "part1":Lgnu/expr/Expression;
    move-object/from16 v17, v13

    const/16 v18, 0x1

    aget-object v17, v17, v18

    move-object/from16 v15, v17

    .line 410
    .local v15, "part2":Lgnu/expr/Expression;
    move-object/from16 v17, v2

    move-object/from16 v18, v14

    move-object/from16 v19, v15

    invoke-virtual/range {v17 .. v19}, Lkawa/lang/Translator;->namespaceResolve(Lgnu/expr/Expression;Lgnu/expr/Expression;)Lgnu/mapping/Symbol;

    move-result-object v17

    move-object/from16 v16, v17

    .line 411
    .local v16, "sym":Lgnu/mapping/Symbol;
    move-object/from16 v17, v16

    if-eqz v17, :cond_f

    .line 412
    move-object/from16 v17, v2

    move-object/from16 v18, v16

    move/from16 v19, v4

    invoke-virtual/range {v17 .. v19}, Lkawa/lang/Translator;->rewrite(Ljava/lang/Object;Z)Lgnu/expr/Expression;

    move-result-object v17

    move-object/from16 v2, v17

    goto/16 :goto_0

    .line 414
    :cond_f
    move-object/from16 v17, v14

    move-object/from16 v18, v15

    invoke-static/range {v17 .. v18}, Lgnu/kawa/functions/CompileNamedPart;->makeExp(Lgnu/expr/Expression;Lgnu/expr/Expression;)Lgnu/expr/Expression;

    move-result-object v17

    move-object/from16 v2, v17

    goto/16 :goto_0

    .line 416
    .end local v14    # "part1":Lgnu/expr/Expression;
    .end local v15    # "part2":Lgnu/expr/Expression;
    .end local v16    # "sym":Lgnu/mapping/Symbol;
    :cond_10
    move-object/from16 v17, v2

    invoke-virtual/range {v17 .. v17}, Lkawa/lang/Translator;->getLanguage()Lgnu/expr/Language;

    move-result-object v17

    check-cast v17, Lgnu/kawa/lispexpr/LispLanguage;

    move-object/from16 v18, v5

    move-object/from16 v19, v13

    invoke-virtual/range {v17 .. v19}, Lgnu/kawa/lispexpr/LispLanguage;->makeApply(Lgnu/expr/Expression;[Lgnu/expr/Expression;)Lgnu/expr/Expression;

    move-result-object v17

    move-object/from16 v2, v17

    goto/16 :goto_0
.end method

.method public rewrite_with_position(Ljava/lang/Object;ZLgnu/lists/PairWithPosition;)Lgnu/expr/Expression;
    .locals 10

    .prologue
    .line 917
    move-object v0, p0

    .local v0, "this":Lkawa/lang/Translator;
    move-object v1, p1

    .local v1, "exp":Ljava/lang/Object;
    move v2, p2

    .local v2, "function":Z
    move-object v3, p3

    .local v3, "pair":Lgnu/lists/PairWithPosition;
    move-object v7, v0

    move-object v8, v3

    invoke-virtual {v7, v8}, Lkawa/lang/Translator;->pushPositionOf(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    move-object v4, v7

    .line 921
    .local v4, "saved":Ljava/lang/Object;
    move-object v7, v1

    move-object v8, v3

    if-ne v7, v8, :cond_0

    .line 922
    move-object v7, v0

    move-object v8, v3

    move v9, v2

    :try_start_0
    invoke-virtual {v7, v8, v9}, Lkawa/lang/Translator;->rewrite_pair(Lgnu/lists/Pair;Z)Lgnu/expr/Expression;

    move-result-object v7

    move-object v5, v7

    .line 925
    .local v5, "result":Lgnu/expr/Expression;
    :goto_0
    move-object v7, v0

    move-object v8, v5

    invoke-virtual {v7, v8}, Lkawa/lang/Translator;->setLineOf(Lgnu/expr/Expression;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 929
    move-object v7, v0

    move-object v8, v4

    invoke-virtual {v7, v8}, Lkawa/lang/Translator;->popPositionOf(Ljava/lang/Object;)V

    .line 930
    .line 931
    move-object v7, v5

    move-object v0, v7

    .end local v0    # "this":Lkawa/lang/Translator;
    return-object v0

    .line 924
    .end local v5    # "result":Lgnu/expr/Expression;
    .restart local v0    # "this":Lkawa/lang/Translator;
    :cond_0
    move-object v7, v0

    move-object v8, v1

    move v9, v2

    :try_start_1
    invoke-virtual {v7, v8, v9}, Lkawa/lang/Translator;->rewrite(Ljava/lang/Object;Z)Lgnu/expr/Expression;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v7

    move-object v5, v7

    .restart local v5    # "result":Lgnu/expr/Expression;
    goto :goto_0

    .line 929
    .end local v5    # "result":Lgnu/expr/Expression;
    :catchall_0
    move-exception v7

    move-object v6, v7

    move-object v7, v0

    move-object v8, v4

    invoke-virtual {v7, v8}, Lkawa/lang/Translator;->popPositionOf(Ljava/lang/Object;)V

    move-object v7, v6

    throw v7
.end method

.method public scanBody(Ljava/lang/Object;Lgnu/expr/ScopeExp;Z)Lgnu/lists/LList;
    .locals 18

    .prologue
    .line 1097
    move-object/from16 v0, p0

    .local v0, "this":Lkawa/lang/Translator;
    move-object/from16 v1, p1

    .local v1, "body":Ljava/lang/Object;
    move-object/from16 v2, p2

    .local v2, "defs":Lgnu/expr/ScopeExp;
    move/from16 v3, p3

    .local v3, "makeList":Z
    move v12, v3

    if-eqz v12, :cond_0

    sget-object v12, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    :goto_0
    move-object v4, v12

    .line 1098
    .local v4, "list":Lgnu/lists/LList;
    const/4 v12, 0x0

    move-object v5, v12

    .line 1099
    .local v5, "lastPair":Lgnu/lists/Pair;
    :goto_1
    move-object v12, v1

    sget-object v13, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    if-eq v12, v13, :cond_a

    .line 1101
    move-object v12, v1

    instance-of v12, v12, Lkawa/lang/SyntaxForm;

    if-eqz v12, :cond_3

    .line 1103
    move-object v12, v1

    check-cast v12, Lkawa/lang/SyntaxForm;

    move-object v6, v12

    .line 1104
    .local v6, "sf":Lkawa/lang/SyntaxForm;
    move-object v12, v0

    iget-object v12, v12, Lkawa/lang/Translator;->current_scope:Lgnu/expr/ScopeExp;

    move-object v7, v12

    .line 1107
    .local v7, "save_scope":Lgnu/expr/ScopeExp;
    move-object v12, v0

    move-object v13, v6

    :try_start_0
    invoke-interface {v13}, Lkawa/lang/SyntaxForm;->getScope()Lkawa/lang/TemplateScope;

    move-result-object v13

    invoke-virtual {v12, v13}, Lkawa/lang/Translator;->setCurrentScope(Lgnu/expr/ScopeExp;)V

    .line 1108
    move-object v12, v0

    iget-object v12, v12, Lkawa/lang/Translator;->formStack:Ljava/util/Stack;

    invoke-virtual {v12}, Ljava/util/Stack;->size()I

    move-result v12

    move v8, v12

    .line 1109
    .local v8, "first":I
    move-object v12, v0

    move-object v13, v6

    invoke-interface {v13}, Lkawa/lang/SyntaxForm;->getDatum()Ljava/lang/Object;

    move-result-object v13

    move-object v14, v2

    move v15, v3

    invoke-virtual {v12, v13, v14, v15}, Lkawa/lang/Translator;->scanBody(Ljava/lang/Object;Lgnu/expr/ScopeExp;Z)Lgnu/lists/LList;

    move-result-object v12

    move-object v9, v12

    .line 1110
    .local v9, "f":Lgnu/lists/LList;
    move v12, v3

    if-eqz v12, :cond_2

    .line 1112
    move-object v12, v9

    move-object v13, v6

    invoke-static {v12, v13}, Lkawa/lang/SyntaxForms;->fromDatumIfNeeded(Ljava/lang/Object;Lkawa/lang/SyntaxForm;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lgnu/lists/LList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v9, v12

    .line 1113
    move-object v12, v5

    if-nez v12, :cond_1

    .line 1114
    move-object v12, v9

    move-object v10, v12

    .line 1123
    move-object v12, v0

    move-object v13, v7

    invoke-virtual {v12, v13}, Lkawa/lang/Translator;->setCurrentScope(Lgnu/expr/ScopeExp;)V

    move-object v12, v10

    move-object v0, v12

    .line 1164
    .end local v0    # "this":Lkawa/lang/Translator;
    .end local v6    # "sf":Lkawa/lang/SyntaxForm;
    .end local v7    # "save_scope":Lgnu/expr/ScopeExp;
    .end local v8    # "first":I
    .end local v9    # "f":Lgnu/lists/LList;
    :goto_2
    return-object v0

    .line 1097
    .end local v4    # "list":Lgnu/lists/LList;
    .end local v5    # "lastPair":Lgnu/lists/Pair;
    .restart local v0    # "this":Lkawa/lang/Translator;
    :cond_0
    const/4 v12, 0x0

    goto :goto_0

    .line 1115
    .restart local v4    # "list":Lgnu/lists/LList;
    .restart local v5    # "lastPair":Lgnu/lists/Pair;
    .restart local v6    # "sf":Lkawa/lang/SyntaxForm;
    .restart local v7    # "save_scope":Lgnu/expr/ScopeExp;
    .restart local v8    # "first":I
    .restart local v9    # "f":Lgnu/lists/LList;
    :cond_1
    move-object v12, v5

    move-object v13, v9

    :try_start_1
    invoke-virtual {v12, v13}, Lgnu/lists/Pair;->setCdrBackdoor(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1116
    move-object v12, v4

    move-object v10, v12

    .line 1123
    move-object v12, v0

    move-object v13, v7

    invoke-virtual {v12, v13}, Lkawa/lang/Translator;->setCurrentScope(Lgnu/expr/ScopeExp;)V

    move-object v12, v10

    move-object v0, v12

    goto :goto_2

    .line 1118
    :cond_2
    move-object v12, v0

    :try_start_2
    iget-object v12, v12, Lkawa/lang/Translator;->formStack:Ljava/util/Stack;

    move-object v13, v0

    move v14, v8

    invoke-virtual {v13, v14}, Lkawa/lang/Translator;->popForms(I)Ljava/lang/Object;

    move-result-object v13

    move-object v14, v6

    invoke-static {v13, v14}, Lkawa/lang/Translator;->wrapSyntax(Ljava/lang/Object;Lkawa/lang/SyntaxForm;)Ljava/lang/Object;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/util/Stack;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v12

    .line 1119
    const/4 v12, 0x0

    move-object v10, v12

    .line 1123
    move-object v12, v0

    move-object v13, v7

    invoke-virtual {v12, v13}, Lkawa/lang/Translator;->setCurrentScope(Lgnu/expr/ScopeExp;)V

    move-object v12, v10

    move-object v0, v12

    goto :goto_2

    .end local v8    # "first":I
    .end local v9    # "f":Lgnu/lists/LList;
    :catchall_0
    move-exception v12

    move-object v11, v12

    move-object v12, v0

    move-object v13, v7

    invoke-virtual {v12, v13}, Lkawa/lang/Translator;->setCurrentScope(Lgnu/expr/ScopeExp;)V

    move-object v12, v11

    throw v12

    .line 1126
    .end local v6    # "sf":Lkawa/lang/SyntaxForm;
    .end local v7    # "save_scope":Lgnu/expr/ScopeExp;
    :cond_3
    move-object v12, v1

    instance-of v12, v12, Lgnu/lists/Pair;

    if-eqz v12, :cond_9

    .line 1128
    move-object v12, v1

    check-cast v12, Lgnu/lists/Pair;

    move-object v6, v12

    .line 1129
    .local v6, "pair":Lgnu/lists/Pair;
    move-object v12, v0

    iget-object v12, v12, Lkawa/lang/Translator;->formStack:Ljava/util/Stack;

    invoke-virtual {v12}, Ljava/util/Stack;->size()I

    move-result v12

    move v7, v12

    .line 1130
    .local v7, "first":I
    move-object v12, v0

    move-object v13, v6

    invoke-virtual {v13}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v13

    move-object v14, v2

    invoke-virtual {v12, v13, v14}, Lkawa/lang/Translator;->scanForm(Ljava/lang/Object;Lgnu/expr/ScopeExp;)V

    .line 1131
    move-object v12, v0

    invoke-virtual {v12}, Lkawa/lang/Translator;->getState()I

    move-result v12

    const/4 v13, 0x2

    if-ne v12, v13, :cond_5

    .line 1136
    move-object v12, v6

    invoke-virtual {v12}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v12

    move-object v13, v0

    iget-object v13, v13, Lkawa/lang/Translator;->pendingForm:Ljava/lang/Object;

    if-eq v12, v13, :cond_4

    .line 1137
    move-object v12, v6

    move-object v13, v0

    iget-object v13, v13, Lkawa/lang/Translator;->pendingForm:Ljava/lang/Object;

    move-object v14, v6

    invoke-virtual {v14}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v14

    invoke-static {v12, v13, v14}, Lkawa/lang/Translator;->makePair(Lgnu/lists/Pair;Ljava/lang/Object;Ljava/lang/Object;)Lgnu/lists/Pair;

    move-result-object v12

    move-object v6, v12

    .line 1138
    :cond_4
    move-object v12, v0

    new-instance v13, Lgnu/lists/Pair;

    move-object/from16 v17, v13

    move-object/from16 v13, v17

    move-object/from16 v14, v17

    sget-object v15, Lkawa/standard/begin;->begin:Lkawa/standard/begin;

    move-object/from16 v16, v6

    invoke-direct/range {v14 .. v16}, Lgnu/lists/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v13, v12, Lkawa/lang/Translator;->pendingForm:Ljava/lang/Object;

    .line 1139
    sget-object v12, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    move-object v0, v12

    goto/16 :goto_2

    .line 1141
    :cond_5
    move-object v12, v0

    iget-object v12, v12, Lkawa/lang/Translator;->formStack:Ljava/util/Stack;

    invoke-virtual {v12}, Ljava/util/Stack;->size()I

    move-result v12

    move v8, v12

    .line 1142
    .local v8, "fsize":I
    move v12, v3

    if-eqz v12, :cond_8

    .line 1144
    move v12, v7

    move v9, v12

    .local v9, "i":I
    :goto_3
    move v12, v9

    move v13, v8

    if-ge v12, v13, :cond_7

    .line 1146
    move-object v12, v6

    move-object v13, v0

    iget-object v13, v13, Lkawa/lang/Translator;->formStack:Ljava/util/Stack;

    move v14, v9

    invoke-virtual {v13, v14}, Ljava/util/Stack;->elementAt(I)Ljava/lang/Object;

    move-result-object v13

    sget-object v14, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    invoke-static {v12, v13, v14}, Lkawa/lang/Translator;->makePair(Lgnu/lists/Pair;Ljava/lang/Object;Ljava/lang/Object;)Lgnu/lists/Pair;

    move-result-object v12

    move-object v10, v12

    .line 1148
    .local v10, "npair":Lgnu/lists/Pair;
    move-object v12, v5

    if-nez v12, :cond_6

    .line 1149
    move-object v12, v10

    move-object v4, v12

    .line 1152
    :goto_4
    move-object v12, v10

    move-object v5, v12

    .line 1144
    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    .line 1151
    :cond_6
    move-object v12, v5

    move-object v13, v10

    invoke-virtual {v12, v13}, Lgnu/lists/Pair;->setCdrBackdoor(Ljava/lang/Object;)V

    goto :goto_4

    .line 1154
    .end local v10    # "npair":Lgnu/lists/Pair;
    :cond_7
    move-object v12, v0

    iget-object v12, v12, Lkawa/lang/Translator;->formStack:Ljava/util/Stack;

    move v13, v7

    invoke-virtual {v12, v13}, Ljava/util/Stack;->setSize(I)V

    .line 1156
    .end local v9    # "i":I
    :cond_8
    move-object v12, v6

    invoke-virtual {v12}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v12

    move-object v1, v12

    .line 1157
    goto/16 :goto_1

    .line 1160
    .end local v6    # "pair":Lgnu/lists/Pair;
    .end local v7    # "first":I
    .end local v8    # "fsize":I
    :cond_9
    move-object v12, v0

    iget-object v12, v12, Lkawa/lang/Translator;->formStack:Ljava/util/Stack;

    move-object v13, v0

    const-string/jumbo v14, "body is not a proper list"

    invoke-virtual {v13, v14}, Lkawa/lang/Translator;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/util/Stack;->add(Ljava/lang/Object;)Z

    move-result v12

    .line 1161
    .line 1164
    :cond_a
    move-object v12, v4

    move-object v0, v12

    goto/16 :goto_2
.end method

.method public scanForm(Ljava/lang/Object;Lgnu/expr/ScopeExp;)V
    .locals 24

    .prologue
    .line 963
    move-object/from16 v2, p0

    .local v2, "this":Lkawa/lang/Translator;
    move-object/from16 v3, p1

    .local v3, "st":Ljava/lang/Object;
    move-object/from16 v4, p2

    .local v4, "defs":Lgnu/expr/ScopeExp;
    move-object/from16 v19, v3

    move-object/from16 v0, v19

    instance-of v0, v0, Lkawa/lang/SyntaxForm;

    move/from16 v19, v0

    if-eqz v19, :cond_0

    .line 965
    move-object/from16 v19, v3

    check-cast v19, Lkawa/lang/SyntaxForm;

    move-object/from16 v5, v19

    .line 966
    .local v5, "sf":Lkawa/lang/SyntaxForm;
    move-object/from16 v19, v2

    invoke-virtual/range {v19 .. v19}, Lkawa/lang/Translator;->currentScope()Lgnu/expr/ScopeExp;

    move-result-object v19

    move-object/from16 v6, v19

    .line 969
    .local v6, "save_scope":Lgnu/expr/ScopeExp;
    move-object/from16 v19, v2

    move-object/from16 v20, v5

    :try_start_0
    invoke-interface/range {v20 .. v20}, Lkawa/lang/SyntaxForm;->getScope()Lkawa/lang/TemplateScope;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Lkawa/lang/Translator;->setCurrentScope(Lgnu/expr/ScopeExp;)V

    .line 970
    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget-object v0, v0, Lkawa/lang/Translator;->formStack:Ljava/util/Stack;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/util/Stack;->size()I

    move-result v19

    move/from16 v7, v19

    .line 971
    .local v7, "first":I
    move-object/from16 v19, v2

    move-object/from16 v20, v5

    invoke-interface/range {v20 .. v20}, Lkawa/lang/SyntaxForm;->getDatum()Ljava/lang/Object;

    move-result-object v20

    move-object/from16 v21, v4

    invoke-virtual/range {v19 .. v21}, Lkawa/lang/Translator;->scanForm(Ljava/lang/Object;Lgnu/expr/ScopeExp;)V

    .line 972
    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget-object v0, v0, Lkawa/lang/Translator;->formStack:Ljava/util/Stack;

    move-object/from16 v19, v0

    move-object/from16 v20, v2

    move/from16 v21, v7

    invoke-virtual/range {v20 .. v21}, Lkawa/lang/Translator;->popForms(I)Ljava/lang/Object;

    move-result-object v20

    move-object/from16 v21, v5

    invoke-static/range {v20 .. v21}, Lkawa/lang/Translator;->wrapSyntax(Ljava/lang/Object;Lkawa/lang/SyntaxForm;)Ljava/lang/Object;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/util/Stack;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v19

    .line 977
    move-object/from16 v19, v2

    move-object/from16 v20, v6

    invoke-virtual/range {v19 .. v20}, Lkawa/lang/Translator;->setCurrentScope(Lgnu/expr/ScopeExp;)V

    .line 1084
    .end local v3    # "st":Ljava/lang/Object;
    .end local v5    # "sf":Lkawa/lang/SyntaxForm;
    .end local v6    # "save_scope":Lgnu/expr/ScopeExp;
    .end local v7    # "first":I
    :goto_0
    return-void

    .line 977
    .restart local v3    # "st":Ljava/lang/Object;
    .restart local v5    # "sf":Lkawa/lang/SyntaxForm;
    .restart local v6    # "save_scope":Lgnu/expr/ScopeExp;
    :catchall_0
    move-exception v19

    move-object/from16 v8, v19

    move-object/from16 v19, v2

    move-object/from16 v20, v6

    invoke-virtual/range {v19 .. v20}, Lkawa/lang/Translator;->setCurrentScope(Lgnu/expr/ScopeExp;)V

    move-object/from16 v19, v8

    throw v19

    .line 980
    .end local v5    # "sf":Lkawa/lang/SyntaxForm;
    .end local v6    # "save_scope":Lgnu/expr/ScopeExp;
    :cond_0
    move-object/from16 v19, v3

    move-object/from16 v0, v19

    instance-of v0, v0, Lgnu/mapping/Values;

    move/from16 v19, v0

    if-eqz v19, :cond_1

    .line 982
    move-object/from16 v19, v3

    sget-object v20, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    if-ne v0, v1, :cond_7

    .line 983
    sget-object v19, Lgnu/expr/QuoteExp;->voidExp:Lgnu/expr/QuoteExp;

    move-object/from16 v3, v19

    .line 992
    .end local v3    # "st":Ljava/lang/Object;
    :cond_1
    move-object/from16 v19, v3

    move-object/from16 v0, v19

    instance-of v0, v0, Lgnu/lists/Pair;

    move/from16 v19, v0

    if-eqz v19, :cond_d

    .line 994
    move-object/from16 v19, v3

    check-cast v19, Lgnu/lists/Pair;

    move-object/from16 v5, v19

    .line 995
    .local v5, "st_pair":Lgnu/lists/Pair;
    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget-object v0, v0, Lkawa/lang/Translator;->macroContext:Lgnu/expr/Declaration;

    move-object/from16 v19, v0

    move-object/from16 v6, v19

    .line 996
    .local v6, "saveContext":Lgnu/expr/Declaration;
    const/16 v19, 0x0

    move-object/from16 v7, v19

    .line 997
    .local v7, "syntax":Lkawa/lang/Syntax;
    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget-object v0, v0, Lkawa/lang/Translator;->current_scope:Lgnu/expr/ScopeExp;

    move-object/from16 v19, v0

    move-object/from16 v8, v19

    .line 998
    .local v8, "savedScope":Lgnu/expr/ScopeExp;
    move-object/from16 v19, v2

    move-object/from16 v20, v3

    invoke-virtual/range {v19 .. v20}, Lkawa/lang/Translator;->pushPositionOf(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    move-object/from16 v9, v19

    .line 999
    .local v9, "savedPosition":Ljava/lang/Object;
    move-object/from16 v19, v3

    move-object/from16 v0, v19

    instance-of v0, v0, Lgnu/text/SourceLocator;

    move/from16 v19, v0

    if-eqz v19, :cond_2

    move-object/from16 v19, v4

    invoke-virtual/range {v19 .. v19}, Lgnu/expr/ScopeExp;->getLineNumber()I

    move-result v19

    if-gez v19, :cond_2

    .line 1000
    move-object/from16 v19, v4

    move-object/from16 v20, v3

    check-cast v20, Lgnu/text/SourceLocator;

    invoke-virtual/range {v19 .. v20}, Lgnu/expr/ScopeExp;->setLocation(Lgnu/text/SourceLocator;)V

    .line 1003
    :cond_2
    move-object/from16 v19, v5

    :try_start_1
    invoke-virtual/range {v19 .. v19}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v19

    move-object/from16 v10, v19

    .line 1004
    .local v10, "obj":Ljava/lang/Object;
    move-object/from16 v19, v10

    move-object/from16 v0, v19

    instance-of v0, v0, Lkawa/lang/SyntaxForm;

    move/from16 v19, v0

    if-eqz v19, :cond_3

    .line 1006
    move-object/from16 v19, v5

    invoke-virtual/range {v19 .. v19}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lkawa/lang/SyntaxForm;

    move-object/from16 v11, v19

    .line 1007
    .local v11, "sf":Lkawa/lang/SyntaxForm;
    move-object/from16 v19, v2

    move-object/from16 v20, v11

    invoke-interface/range {v20 .. v20}, Lkawa/lang/SyntaxForm;->getScope()Lkawa/lang/TemplateScope;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Lkawa/lang/Translator;->setCurrentScope(Lgnu/expr/ScopeExp;)V

    .line 1008
    move-object/from16 v19, v11

    invoke-interface/range {v19 .. v19}, Lkawa/lang/SyntaxForm;->getDatum()Ljava/lang/Object;

    move-result-object v19

    move-object/from16 v10, v19

    .line 1011
    .end local v11    # "sf":Lkawa/lang/SyntaxForm;
    :cond_3
    move-object/from16 v19, v10

    move-object/from16 v0, v19

    instance-of v0, v0, Lgnu/lists/Pair;

    move/from16 v19, v0

    if-eqz v19, :cond_4

    move-object/from16 v19, v10

    check-cast v19, Lgnu/lists/Pair;

    move-object/from16 v23, v19

    move-object/from16 v19, v23

    move-object/from16 v20, v23

    move-object/from16 v11, v20

    .local v11, "p":Lgnu/lists/Pair;
    invoke-virtual/range {v19 .. v19}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v19

    sget-object v20, Lgnu/kawa/lispexpr/LispLanguage;->lookup_sym:Lgnu/mapping/Symbol;

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    if-ne v0, v1, :cond_4

    move-object/from16 v19, v11

    invoke-virtual/range {v19 .. v19}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v19

    move-object/from16 v0, v19

    instance-of v0, v0, Lgnu/lists/Pair;

    move/from16 v19, v0

    if-eqz v19, :cond_4

    move-object/from16 v19, v11

    invoke-virtual/range {v19 .. v19}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lgnu/lists/Pair;

    move-object/from16 v23, v19

    move-object/from16 v19, v23

    move-object/from16 v20, v23

    move-object/from16 v11, v20

    invoke-virtual/range {v19 .. v19}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v19

    move-object/from16 v0, v19

    instance-of v0, v0, Lgnu/lists/Pair;

    move/from16 v19, v0

    if-eqz v19, :cond_4

    .line 1016
    move-object/from16 v19, v2

    move-object/from16 v20, v11

    invoke-virtual/range {v20 .. v20}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Lkawa/lang/Translator;->rewrite(Ljava/lang/Object;)Lgnu/expr/Expression;

    move-result-object v19

    move-object/from16 v12, v19

    .line 1017
    .local v12, "part1":Lgnu/expr/Expression;
    move-object/from16 v19, v2

    move-object/from16 v20, v11

    invoke-virtual/range {v20 .. v20}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lgnu/lists/Pair;

    invoke-virtual/range {v20 .. v20}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Lkawa/lang/Translator;->rewrite(Ljava/lang/Object;)Lgnu/expr/Expression;

    move-result-object v19

    move-object/from16 v13, v19

    .line 1018
    .local v13, "part2":Lgnu/expr/Expression;
    move-object/from16 v19, v12

    invoke-virtual/range {v19 .. v19}, Lgnu/expr/Expression;->valueIfConstant()Ljava/lang/Object;

    move-result-object v19

    move-object/from16 v14, v19

    .line 1019
    .local v14, "value1":Ljava/lang/Object;
    move-object/from16 v19, v13

    invoke-virtual/range {v19 .. v19}, Lgnu/expr/Expression;->valueIfConstant()Ljava/lang/Object;

    move-result-object v19

    move-object/from16 v15, v19

    .line 1020
    .local v15, "value2":Ljava/lang/Object;
    move-object/from16 v19, v14

    move-object/from16 v0, v19

    instance-of v0, v0, Ljava/lang/Class;

    move/from16 v19, v0

    if-eqz v19, :cond_9

    move-object/from16 v19, v15

    move-object/from16 v0, v19

    instance-of v0, v0, Lgnu/mapping/Symbol;

    move/from16 v19, v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v19, :cond_9

    .line 1024
    move-object/from16 v19, v14

    move-object/from16 v20, v15

    :try_start_2
    check-cast v20, Lgnu/mapping/Symbol;

    invoke-static/range {v19 .. v20}, Lgnu/kawa/functions/GetNamedPart;->getNamedPart(Ljava/lang/Object;Lgnu/mapping/Symbol;)Ljava/lang/Object;

    move-result-object v19

    move-object/from16 v10, v19

    .line 1025
    move-object/from16 v19, v10

    move-object/from16 v0, v19

    instance-of v0, v0, Lkawa/lang/Syntax;

    move/from16 v19, v0

    if-eqz v19, :cond_4

    .line 1026
    move-object/from16 v19, v10

    check-cast v19, Lkawa/lang/Syntax;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-object/from16 v7, v19

    .line 1031
    .line 1037
    .end local v10    # "obj":Ljava/lang/Object;
    .end local v11    # "p":Lgnu/lists/Pair;
    .end local v12    # "part1":Lgnu/expr/Expression;
    .end local v13    # "part2":Lgnu/expr/Expression;
    .end local v14    # "value1":Ljava/lang/Object;
    .end local v15    # "value2":Ljava/lang/Object;
    :cond_4
    :goto_1
    move-object/from16 v19, v10

    :try_start_3
    move-object/from16 v0, v19

    instance-of v0, v0, Lgnu/mapping/Symbol;

    move/from16 v19, v0

    if-eqz v19, :cond_b

    move-object/from16 v19, v2

    move-object/from16 v20, v10

    invoke-virtual/range {v19 .. v20}, Lkawa/lang/Translator;->selfEvaluatingSymbol(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_b

    .line 1039
    move-object/from16 v19, v2

    move-object/from16 v20, v10

    const/16 v21, 0x1

    invoke-virtual/range {v19 .. v21}, Lkawa/lang/Translator;->rewrite(Ljava/lang/Object;Z)Lgnu/expr/Expression;

    move-result-object v19

    move-object/from16 v12, v19

    .line 1040
    .local v12, "func":Lgnu/expr/Expression;
    move-object/from16 v19, v12

    move-object/from16 v0, v19

    instance-of v0, v0, Lgnu/expr/ReferenceExp;

    move/from16 v19, v0

    if-eqz v19, :cond_5

    .line 1042
    move-object/from16 v19, v12

    check-cast v19, Lgnu/expr/ReferenceExp;

    invoke-virtual/range {v19 .. v19}, Lgnu/expr/ReferenceExp;->getBinding()Lgnu/expr/Declaration;

    move-result-object v19

    move-object/from16 v13, v19

    .line 1043
    .local v13, "decl":Lgnu/expr/Declaration;
    move-object/from16 v19, v13

    if-eqz v19, :cond_a

    .line 1044
    move-object/from16 v19, v2

    move-object/from16 v20, v13

    invoke-virtual/range {v19 .. v20}, Lkawa/lang/Translator;->check_if_Syntax(Lgnu/expr/Declaration;)Lkawa/lang/Syntax;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result-object v19

    move-object/from16 v7, v19

    .line 1052
    .line 1061
    .end local v12    # "func":Lgnu/expr/Expression;
    .end local v13    # "decl":Lgnu/expr/Declaration;
    :cond_5
    :goto_2
    move-object/from16 v19, v8

    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget-object v0, v0, Lkawa/lang/Translator;->current_scope:Lgnu/expr/ScopeExp;

    move-object/from16 v20, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    if-eq v0, v1, :cond_6

    .line 1062
    move-object/from16 v19, v2

    move-object/from16 v20, v8

    invoke-virtual/range {v19 .. v20}, Lkawa/lang/Translator;->setCurrentScope(Lgnu/expr/ScopeExp;)V

    .line 1063
    :cond_6
    move-object/from16 v19, v2

    move-object/from16 v20, v9

    invoke-virtual/range {v19 .. v20}, Lkawa/lang/Translator;->popPositionOf(Ljava/lang/Object;)V

    .line 1064
    .line 1065
    move-object/from16 v19, v7

    if-eqz v19, :cond_d

    .line 1067
    move-object/from16 v19, v2

    invoke-virtual/range {v19 .. v19}, Lkawa/lang/Translator;->getFileName()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v10, v19

    .line 1068
    .local v10, "save_filename":Ljava/lang/String;
    move-object/from16 v19, v2

    invoke-virtual/range {v19 .. v19}, Lkawa/lang/Translator;->getLineNumber()I

    move-result v19

    move/from16 v11, v19

    .line 1069
    .local v11, "save_line":I
    move-object/from16 v19, v2

    invoke-virtual/range {v19 .. v19}, Lkawa/lang/Translator;->getColumnNumber()I

    move-result v19

    move/from16 v12, v19

    .line 1072
    .local v12, "save_column":I
    move-object/from16 v19, v2

    move-object/from16 v20, v5

    :try_start_4
    invoke-virtual/range {v19 .. v20}, Lkawa/lang/Translator;->setLine(Ljava/lang/Object;)V

    .line 1073
    move-object/from16 v19, v7

    move-object/from16 v20, v5

    move-object/from16 v21, v4

    move-object/from16 v22, v2

    invoke-virtual/range {v19 .. v22}, Lkawa/lang/Syntax;->scanForm(Lgnu/lists/Pair;Lgnu/expr/ScopeExp;Lkawa/lang/Translator;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 1078
    move-object/from16 v19, v2

    move-object/from16 v20, v6

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    iput-object v0, v1, Lkawa/lang/Translator;->macroContext:Lgnu/expr/Declaration;

    .line 1079
    move-object/from16 v19, v2

    move-object/from16 v20, v10

    move/from16 v21, v11

    move/from16 v22, v12

    invoke-virtual/range {v19 .. v22}, Lkawa/lang/Translator;->setLine(Ljava/lang/String;II)V

    goto/16 :goto_0

    .line 986
    .end local v5    # "st_pair":Lgnu/lists/Pair;
    .end local v6    # "saveContext":Lgnu/expr/Declaration;
    .end local v7    # "syntax":Lkawa/lang/Syntax;
    .end local v8    # "savedScope":Lgnu/expr/ScopeExp;
    .end local v9    # "savedPosition":Ljava/lang/Object;
    .end local v10    # "save_filename":Ljava/lang/String;
    .end local v11    # "save_line":I
    .end local v12    # "save_column":I
    .restart local v3    # "st":Ljava/lang/Object;
    :cond_7
    move-object/from16 v19, v3

    check-cast v19, Lgnu/mapping/Values;

    invoke-virtual/range {v19 .. v19}, Lgnu/mapping/Values;->getValues()[Ljava/lang/Object;

    move-result-object v19

    move-object/from16 v5, v19

    .line 987
    .local v5, "vals":[Ljava/lang/Object;
    const/16 v19, 0x0

    move/from16 v6, v19

    .local v6, "i":I
    :goto_3
    move/from16 v19, v6

    move-object/from16 v20, v5

    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v20, v0

    move/from16 v0, v19

    move/from16 v1, v20

    if-ge v0, v1, :cond_8

    .line 988
    move-object/from16 v19, v2

    move-object/from16 v20, v5

    move/from16 v21, v6

    aget-object v20, v20, v21

    move-object/from16 v21, v4

    invoke-virtual/range {v19 .. v21}, Lkawa/lang/Translator;->scanForm(Ljava/lang/Object;Lgnu/expr/ScopeExp;)V

    .line 987
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 989
    :cond_8
    goto/16 :goto_0

    .line 1028
    .end local v3    # "st":Ljava/lang/Object;
    .local v5, "st_pair":Lgnu/lists/Pair;
    .local v6, "saveContext":Lgnu/expr/Declaration;
    .restart local v7    # "syntax":Lkawa/lang/Syntax;
    .restart local v8    # "savedScope":Lgnu/expr/ScopeExp;
    .restart local v9    # "savedPosition":Ljava/lang/Object;
    .local v10, "obj":Ljava/lang/Object;
    .local v11, "p":Lgnu/lists/Pair;
    .local v12, "part1":Lgnu/expr/Expression;
    .local v13, "part2":Lgnu/expr/Expression;
    .restart local v14    # "value1":Ljava/lang/Object;
    .restart local v15    # "value2":Ljava/lang/Object;
    :catch_0
    move-exception v19

    move-object/from16 v16, v19

    .line 1030
    .local v16, "ex":Ljava/lang/Throwable;
    const/16 v19, 0x0

    move-object/from16 v10, v19

    .line 1031
    goto/16 :goto_1

    .line 1034
    .end local v16    # "ex":Ljava/lang/Throwable;
    :cond_9
    move-object/from16 v19, v2

    move-object/from16 v20, v12

    move-object/from16 v21, v13

    :try_start_5
    invoke-virtual/range {v19 .. v21}, Lkawa/lang/Translator;->namespaceResolve(Lgnu/expr/Expression;Lgnu/expr/Expression;)Lgnu/mapping/Symbol;

    move-result-object v19

    move-object/from16 v10, v19

    .local v10, "obj":Lgnu/mapping/Symbol;
    goto/16 :goto_1

    .line 1047
    .end local v10    # "obj":Lgnu/mapping/Symbol;
    .end local v11    # "p":Lgnu/lists/Pair;
    .end local v14    # "value1":Ljava/lang/Object;
    .end local v15    # "value2":Ljava/lang/Object;
    .local v12, "func":Lgnu/expr/Expression;
    .local v13, "decl":Lgnu/expr/Declaration;
    :cond_a
    move-object/from16 v19, v2

    move-object/from16 v20, v10

    const/16 v21, 0x1

    invoke-virtual/range {v19 .. v21}, Lkawa/lang/Translator;->resolve(Ljava/lang/Object;Z)Ljava/lang/Object;

    move-result-object v19

    move-object/from16 v10, v19

    .line 1048
    .local v10, "obj":Ljava/lang/Object;
    move-object/from16 v19, v10

    move-object/from16 v0, v19

    instance-of v0, v0, Lkawa/lang/Syntax;

    move/from16 v19, v0

    if-eqz v19, :cond_5

    .line 1049
    move-object/from16 v19, v10

    check-cast v19, Lkawa/lang/Syntax;

    move-object/from16 v7, v19

    goto/16 :goto_2

    .line 1056
    .end local v10    # "obj":Ljava/lang/Object;
    .end local v12    # "func":Lgnu/expr/Expression;
    .end local v13    # "decl":Lgnu/expr/Declaration;
    :cond_b
    move-object/from16 v19, v10

    sget-object v20, Lkawa/standard/begin;->begin:Lkawa/standard/begin;

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    if-ne v0, v1, :cond_5

    .line 1057
    move-object/from16 v19, v10

    check-cast v19, Lkawa/lang/Syntax;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    move-object/from16 v7, v19

    goto/16 :goto_2

    .line 1061
    :catchall_1
    move-exception v19

    move-object/from16 v17, v19

    move-object/from16 v19, v8

    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget-object v0, v0, Lkawa/lang/Translator;->current_scope:Lgnu/expr/ScopeExp;

    move-object/from16 v20, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    if-eq v0, v1, :cond_c

    .line 1062
    move-object/from16 v19, v2

    move-object/from16 v20, v8

    invoke-virtual/range {v19 .. v20}, Lkawa/lang/Translator;->setCurrentScope(Lgnu/expr/ScopeExp;)V

    .line 1063
    :cond_c
    move-object/from16 v19, v2

    move-object/from16 v20, v9

    invoke-virtual/range {v19 .. v20}, Lkawa/lang/Translator;->popPositionOf(Ljava/lang/Object;)V

    move-object/from16 v19, v17

    throw v19

    .line 1078
    .local v10, "save_filename":Ljava/lang/String;
    .local v11, "save_line":I
    .local v12, "save_column":I
    :catchall_2
    move-exception v19

    move-object/from16 v18, v19

    move-object/from16 v19, v2

    move-object/from16 v20, v6

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    iput-object v0, v1, Lkawa/lang/Translator;->macroContext:Lgnu/expr/Declaration;

    .line 1079
    move-object/from16 v19, v2

    move-object/from16 v20, v10

    move/from16 v21, v11

    move/from16 v22, v12

    invoke-virtual/range {v19 .. v22}, Lkawa/lang/Translator;->setLine(Ljava/lang/String;II)V

    move-object/from16 v19, v18

    throw v19

    .line 1083
    .end local v5    # "st_pair":Lgnu/lists/Pair;
    .end local v6    # "saveContext":Lgnu/expr/Declaration;
    .end local v7    # "syntax":Lkawa/lang/Syntax;
    .end local v8    # "savedScope":Lgnu/expr/ScopeExp;
    .end local v9    # "savedPosition":Ljava/lang/Object;
    .end local v10    # "save_filename":Ljava/lang/String;
    .end local v11    # "save_line":I
    .end local v12    # "save_column":I
    :cond_d
    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget-object v0, v0, Lkawa/lang/Translator;->formStack:Ljava/util/Stack;

    move-object/from16 v19, v0

    move-object/from16 v20, v3

    invoke-virtual/range {v19 .. v20}, Ljava/util/Stack;->add(Ljava/lang/Object;)Z

    move-result v19

    .line 1084
    goto/16 :goto_0
.end method

.method public final selfEvaluatingSymbol(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    .line 158
    move-object v0, p0

    .local v0, "this":Lkawa/lang/Translator;
    move-object v1, p1

    .local v1, "obj":Ljava/lang/Object;
    move-object v2, v0

    invoke-virtual {v2}, Lkawa/lang/Translator;->getLanguage()Lgnu/expr/Language;

    move-result-object v2

    check-cast v2, Lgnu/kawa/lispexpr/LispLanguage;

    move-object v3, v1

    invoke-virtual {v2, v3}, Lgnu/kawa/lispexpr/LispLanguage;->selfEvaluatingSymbol(Ljava/lang/Object;)Z

    move-result v2

    move v0, v2

    .end local v0    # "this":Lkawa/lang/Translator;
    return v0
.end method

.method public setLineOf(Lgnu/expr/Expression;)V
    .locals 4

    .prologue
    .line 866
    move-object v0, p0

    .local v0, "this":Lkawa/lang/Translator;
    move-object v1, p1

    .local v1, "exp":Lgnu/expr/Expression;
    move-object v2, v1

    instance-of v2, v2, Lgnu/expr/QuoteExp;

    if-eqz v2, :cond_0

    .line 867
    .line 869
    :goto_0
    return-void

    .line 868
    :cond_0
    move-object v2, v1

    move-object v3, v0

    invoke-virtual {v2, v3}, Lgnu/expr/Expression;->setLocation(Lgnu/text/SourceLocator;)V

    .line 869
    goto :goto_0
.end method
