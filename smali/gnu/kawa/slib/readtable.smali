.class public Lgnu/kawa/slib/readtable;
.super Lgnu/expr/ModuleBody;
.source "readtable.scm"


# static fields
.field public static final $instance:Lgnu/kawa/slib/readtable;

.field static final Lit0:Lgnu/mapping/SimpleSymbol;

.field static final Lit1:Lgnu/mapping/SimpleSymbol;

.field static final Lit2:Lgnu/mapping/SimpleSymbol;

.field static final Lit3:Lgnu/mapping/SimpleSymbol;

.field static final Lit4:Lgnu/mapping/SimpleSymbol;

.field static final Lit5:Lgnu/mapping/SimpleSymbol;

.field static final Lit6:Lgnu/mapping/SimpleSymbol;

.field public static final current$Mnreadtable:Lgnu/expr/ModuleMethod;

.field public static final define$Mnreader$Mnctor:Lgnu/expr/ModuleMethod;

.field public static final get$Mndispatch$Mnmacro$Mntable:Lgnu/expr/ModuleMethod;

.field public static final make$Mndispatch$Mnmacro$Mncharacter:Lgnu/expr/ModuleMethod;

.field public static final readtable$Qu:Lgnu/expr/ModuleMethod;

.field public static final set$Mndispatch$Mnmacro$Mncharacter:Lgnu/expr/ModuleMethod;

.field public static final set$Mnmacro$Mncharacter:Lgnu/expr/ModuleMethod;


# direct methods
.method public static constructor <clinit>()V
    .locals 8

    new-instance v1, Lgnu/mapping/SimpleSymbol;

    move-object v7, v1

    move-object v1, v7

    move-object v2, v7

    const-string/jumbo v3, "define-reader-ctor"

    invoke-direct {v2, v3}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgnu/mapping/SimpleSymbol;

    sput-object v1, Lgnu/kawa/slib/readtable;->Lit6:Lgnu/mapping/SimpleSymbol;

    new-instance v1, Lgnu/mapping/SimpleSymbol;

    move-object v7, v1

    move-object v1, v7

    move-object v2, v7

    const-string/jumbo v3, "get-dispatch-macro-table"

    invoke-direct {v2, v3}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgnu/mapping/SimpleSymbol;

    sput-object v1, Lgnu/kawa/slib/readtable;->Lit5:Lgnu/mapping/SimpleSymbol;

    new-instance v1, Lgnu/mapping/SimpleSymbol;

    move-object v7, v1

    move-object v1, v7

    move-object v2, v7

    const-string/jumbo v3, "set-dispatch-macro-character"

    invoke-direct {v2, v3}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgnu/mapping/SimpleSymbol;

    sput-object v1, Lgnu/kawa/slib/readtable;->Lit4:Lgnu/mapping/SimpleSymbol;

    new-instance v1, Lgnu/mapping/SimpleSymbol;

    move-object v7, v1

    move-object v1, v7

    move-object v2, v7

    const-string/jumbo v3, "make-dispatch-macro-character"

    invoke-direct {v2, v3}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgnu/mapping/SimpleSymbol;

    sput-object v1, Lgnu/kawa/slib/readtable;->Lit3:Lgnu/mapping/SimpleSymbol;

    new-instance v1, Lgnu/mapping/SimpleSymbol;

    move-object v7, v1

    move-object v1, v7

    move-object v2, v7

    const-string/jumbo v3, "set-macro-character"

    invoke-direct {v2, v3}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgnu/mapping/SimpleSymbol;

    sput-object v1, Lgnu/kawa/slib/readtable;->Lit2:Lgnu/mapping/SimpleSymbol;

    new-instance v1, Lgnu/mapping/SimpleSymbol;

    move-object v7, v1

    move-object v1, v7

    move-object v2, v7

    const-string/jumbo v3, "readtable?"

    invoke-direct {v2, v3}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgnu/mapping/SimpleSymbol;

    sput-object v1, Lgnu/kawa/slib/readtable;->Lit1:Lgnu/mapping/SimpleSymbol;

    new-instance v1, Lgnu/mapping/SimpleSymbol;

    move-object v7, v1

    move-object v1, v7

    move-object v2, v7

    const-string/jumbo v3, "current-readtable"

    invoke-direct {v2, v3}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgnu/mapping/SimpleSymbol;

    sput-object v1, Lgnu/kawa/slib/readtable;->Lit0:Lgnu/mapping/SimpleSymbol;

    new-instance v1, Lgnu/kawa/slib/readtable;

    move-object v7, v1

    move-object v1, v7

    move-object v2, v7

    invoke-direct {v2}, Lgnu/kawa/slib/readtable;-><init>()V

    sput-object v1, Lgnu/kawa/slib/readtable;->$instance:Lgnu/kawa/slib/readtable;

    new-instance v1, Lgnu/expr/ModuleMethod;

    move-object v7, v1

    move-object v1, v7

    move-object v2, v7

    sget-object v3, Lgnu/kawa/slib/readtable;->$instance:Lgnu/kawa/slib/readtable;

    move-object v0, v3

    move-object v3, v0

    const/4 v4, 0x1

    sget-object v5, Lgnu/kawa/slib/readtable;->Lit0:Lgnu/mapping/SimpleSymbol;

    const/4 v6, 0x0

    invoke-direct {v2, v3, v4, v5, v6}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v1, Lgnu/kawa/slib/readtable;->current$Mnreadtable:Lgnu/expr/ModuleMethod;

    new-instance v1, Lgnu/expr/ModuleMethod;

    move-object v7, v1

    move-object v1, v7

    move-object v2, v7

    move-object v3, v0

    const/4 v4, 0x2

    sget-object v5, Lgnu/kawa/slib/readtable;->Lit1:Lgnu/mapping/SimpleSymbol;

    const/16 v6, 0x1001

    invoke-direct {v2, v3, v4, v5, v6}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v1, Lgnu/kawa/slib/readtable;->readtable$Qu:Lgnu/expr/ModuleMethod;

    new-instance v1, Lgnu/expr/ModuleMethod;

    move-object v7, v1

    move-object v1, v7

    move-object v2, v7

    move-object v3, v0

    const/4 v4, 0x3

    sget-object v5, Lgnu/kawa/slib/readtable;->Lit2:Lgnu/mapping/SimpleSymbol;

    const/16 v6, 0x4002

    invoke-direct {v2, v3, v4, v5, v6}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v1, Lgnu/kawa/slib/readtable;->set$Mnmacro$Mncharacter:Lgnu/expr/ModuleMethod;

    new-instance v1, Lgnu/expr/ModuleMethod;

    move-object v7, v1

    move-object v1, v7

    move-object v2, v7

    move-object v3, v0

    const/4 v4, 0x6

    sget-object v5, Lgnu/kawa/slib/readtable;->Lit3:Lgnu/mapping/SimpleSymbol;

    const/16 v6, 0x3001

    invoke-direct {v2, v3, v4, v5, v6}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v1, Lgnu/kawa/slib/readtable;->make$Mndispatch$Mnmacro$Mncharacter:Lgnu/expr/ModuleMethod;

    new-instance v1, Lgnu/expr/ModuleMethod;

    move-object v7, v1

    move-object v1, v7

    move-object v2, v7

    move-object v3, v0

    const/16 v4, 0x9

    sget-object v5, Lgnu/kawa/slib/readtable;->Lit4:Lgnu/mapping/SimpleSymbol;

    const/16 v6, 0x4003

    invoke-direct {v2, v3, v4, v5, v6}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v1, Lgnu/kawa/slib/readtable;->set$Mndispatch$Mnmacro$Mncharacter:Lgnu/expr/ModuleMethod;

    new-instance v1, Lgnu/expr/ModuleMethod;

    move-object v7, v1

    move-object v1, v7

    move-object v2, v7

    move-object v3, v0

    const/16 v4, 0xb

    sget-object v5, Lgnu/kawa/slib/readtable;->Lit5:Lgnu/mapping/SimpleSymbol;

    const/16 v6, 0x3002

    invoke-direct {v2, v3, v4, v5, v6}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v1, Lgnu/kawa/slib/readtable;->get$Mndispatch$Mnmacro$Mntable:Lgnu/expr/ModuleMethod;

    new-instance v1, Lgnu/expr/ModuleMethod;

    move-object v7, v1

    move-object v1, v7

    move-object v2, v7

    move-object v3, v0

    const/16 v4, 0xd

    sget-object v5, Lgnu/kawa/slib/readtable;->Lit6:Lgnu/mapping/SimpleSymbol;

    const/16 v6, 0x3002

    invoke-direct {v2, v3, v4, v5, v6}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v1, Lgnu/kawa/slib/readtable;->define$Mnreader$Mnctor:Lgnu/expr/ModuleMethod;

    sget-object v1, Lgnu/kawa/slib/readtable;->$instance:Lgnu/kawa/slib/readtable;

    invoke-virtual {v1}, Lgnu/expr/ModuleBody;->run()V

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Lgnu/expr/ModuleBody;-><init>()V

    move-object v1, v0

    invoke-static {v1}, Lgnu/expr/ModuleInfo;->register(Ljava/lang/Object;)V

    return-void
.end method

.method public static currentReadtable()Lgnu/kawa/lispexpr/ReadTable;
    .locals 1

    .prologue
    .line 1
    invoke-static {}, Lgnu/kawa/lispexpr/ReadTable;->getCurrent()Lgnu/kawa/lispexpr/ReadTable;

    move-result-object v0

    return-object v0
.end method

.method public static defineReaderCtor(Lgnu/mapping/Symbol;Lgnu/mapping/Procedure;)V
    .locals 5

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-static {}, Lgnu/kawa/slib/readtable;->currentReadtable()Lgnu/kawa/lispexpr/ReadTable;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lgnu/kawa/slib/readtable;->defineReaderCtor(Lgnu/mapping/Symbol;Lgnu/mapping/Procedure;Lgnu/kawa/lispexpr/ReadTable;)V

    return-void
.end method

.method public static defineReaderCtor(Lgnu/mapping/Symbol;Lgnu/mapping/Procedure;Lgnu/kawa/lispexpr/ReadTable;)V
    .locals 7

    .prologue
    .line 82
    move-object v0, p0

    .local v0, "key":Lgnu/mapping/Symbol;
    move-object v1, p1

    .local v1, "proc":Lgnu/mapping/Procedure;
    move-object v2, p2

    .local v2, "readtable":Lgnu/kawa/lispexpr/ReadTable;
    move-object v3, v2

    move-object v4, v0

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    if-nez v5, :cond_0

    const/4 v4, 0x0

    :goto_0
    move-object v5, v1

    invoke-virtual {v3, v4, v5}, Lgnu/kawa/lispexpr/ReadTable;->putReaderCtor(Ljava/lang/String;Lgnu/mapping/Procedure;)V

    return-void

    :cond_0
    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0
.end method

.method public static getDispatchMacroTable(CC)Ljava/lang/Object;
    .locals 5

    move v0, p0

    move v1, p1

    move v2, v0

    move v3, v1

    invoke-static {}, Lgnu/kawa/slib/readtable;->currentReadtable()Lgnu/kawa/lispexpr/ReadTable;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lgnu/kawa/slib/readtable;->getDispatchMacroTable(CCLgnu/kawa/lispexpr/ReadTable;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    return-object v0
.end method

.method public static getDispatchMacroTable(CCLgnu/kawa/lispexpr/ReadTable;)Ljava/lang/Object;
    .locals 13

    .prologue
    .line 74
    move v0, p0

    .local v0, "disp$Mnchar":C
    move v1, p1

    .local v1, "sub$Mnchar":C
    move-object v2, p2

    .local v2, "readtable":Lgnu/kawa/lispexpr/ReadTable;
    move-object v5, v2

    move v6, v0

    invoke-virtual {v5, v6}, Lgnu/kawa/lispexpr/ReadTable;->lookup(I)Lgnu/kawa/lispexpr/ReadTableEntry;

    move-result-object v5

    move-object v11, v5

    move-object v5, v11

    move-object v6, v11

    move-object v4, v6

    :try_start_0
    check-cast v5, Lgnu/kawa/lispexpr/ReaderDispatch;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v3, v5

    .line 77
    .local v3, "disp$Mnentry":Lgnu/kawa/lispexpr/ReaderDispatch;
    move-object v5, v3

    move v6, v1

    invoke-virtual {v5, v6}, Lgnu/kawa/lispexpr/ReaderDispatch;->lookup(I)Lgnu/kawa/lispexpr/ReadTableEntry;

    move-result-object v5

    move-object v4, v5

    .line 80
    .local v4, "sub$Mnentry":Lgnu/kawa/lispexpr/ReadTableEntry;
    move-object v5, v4

    const/4 v6, 0x0

    if-ne v5, v6, :cond_0

    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :goto_0
    move-object v0, v5

    .end local v0    # "disp$Mnchar":C
    return-object v0

    .restart local v0    # "disp$Mnchar":C
    :cond_0
    move-object v5, v4

    goto :goto_0

    .line 78
    .end local v3    # "disp$Mnentry":Lgnu/kawa/lispexpr/ReaderDispatch;
    .end local v4    # "sub$Mnentry":Lgnu/kawa/lispexpr/ReadTableEntry;
    :catch_0
    move-exception v5

    new-instance v6, Lgnu/mapping/WrongType;

    move-object v11, v5

    move-object v12, v6

    move-object v5, v12

    move-object v6, v11

    move-object v7, v12

    move-object v11, v6

    move-object v12, v7

    move-object v6, v12

    move-object v7, v11

    const-string/jumbo v8, "disp-entry"

    const/4 v9, -0x2

    move-object v10, v4

    invoke-direct {v6, v7, v8, v9, v10}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v5
.end method

.method public static isReadtable(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 5
    move-object v0, p0

    .local v0, "obj":Ljava/lang/Object;
    move-object v1, v0

    instance-of v1, v1, Lgnu/kawa/lispexpr/ReadTable;

    move v0, v1

    .end local v0    # "obj":Ljava/lang/Object;
    return v0
.end method

.method public static makeDispatchMacroCharacter(C)V
    .locals 3

    move v0, p0

    move v1, v0

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lgnu/kawa/slib/readtable;->makeDispatchMacroCharacter(CZ)V

    return-void
.end method

.method public static makeDispatchMacroCharacter(CZ)V
    .locals 5

    move v0, p0

    move v1, p1

    move v2, v0

    move v3, v1

    invoke-static {}, Lgnu/kawa/slib/readtable;->currentReadtable()Lgnu/kawa/lispexpr/ReadTable;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lgnu/kawa/slib/readtable;->makeDispatchMacroCharacter(CZLgnu/kawa/lispexpr/ReadTable;)V

    return-void
.end method

.method public static makeDispatchMacroCharacter(CZLgnu/kawa/lispexpr/ReadTable;)V
    .locals 9

    .prologue
    .line 57
    move v0, p0

    .local v0, "char":C
    move v1, p1

    .local v1, "non$Mnterminating":Z
    move-object v2, p2

    .local v2, "readtable":Lgnu/kawa/lispexpr/ReadTable;
    move-object v3, v2

    move v4, v0

    new-instance v5, Lgnu/kawa/lispexpr/ReaderDispatch;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    move v7, v1

    invoke-direct {v6, v7}, Lgnu/kawa/lispexpr/ReaderDispatch;-><init>(Z)V

    invoke-virtual {v3, v4, v5}, Lgnu/kawa/lispexpr/ReadTable;->set(ILjava/lang/Object;)V

    return-void
.end method

.method public static setDispatchMacroCharacter(CCLjava/lang/Object;)V
    .locals 7

    move v0, p0

    move v1, p1

    move-object v2, p2

    move v3, v0

    move v4, v1

    move-object v5, v2

    invoke-static {}, Lgnu/kawa/slib/readtable;->currentReadtable()Lgnu/kawa/lispexpr/ReadTable;

    move-result-object v6

    invoke-static {v3, v4, v5, v6}, Lgnu/kawa/slib/readtable;->setDispatchMacroCharacter(CCLjava/lang/Object;Lgnu/kawa/lispexpr/ReadTable;)V

    return-void
.end method

.method public static setDispatchMacroCharacter(CCLjava/lang/Object;Lgnu/kawa/lispexpr/ReadTable;)V
    .locals 14

    .prologue
    .line 65
    move v0, p0

    .local v0, "disp$Mnchar":C
    move v1, p1

    .local v1, "sub$Mnchar":C
    move-object/from16 v2, p2

    .local v2, "function":Ljava/lang/Object;
    move-object/from16 v3, p3

    .local v3, "readtable":Lgnu/kawa/lispexpr/ReadTable;
    move-object v6, v3

    move v7, v0

    invoke-virtual {v6, v7}, Lgnu/kawa/lispexpr/ReadTable;->lookup(I)Lgnu/kawa/lispexpr/ReadTableEntry;

    move-result-object v6

    move-object v12, v6

    move-object v6, v12

    move-object v7, v12

    move-object v5, v7

    :try_start_0
    check-cast v6, Lgnu/kawa/lispexpr/ReaderDispatch;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v4, v6

    .line 71
    .local v4, "entry":Lgnu/kawa/lispexpr/ReaderDispatch;
    move-object v6, v4

    move v7, v1

    new-instance v8, Lgnu/kawa/lispexpr/ReaderDispatchMacro;

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    move-object v10, v2

    move-object v12, v10

    move-object v10, v12

    move-object v11, v12

    move-object v5, v11

    :try_start_1
    check-cast v10, Lgnu/mapping/Procedure;
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_1

    invoke-direct {v9, v10}, Lgnu/kawa/lispexpr/ReaderDispatchMacro;-><init>(Lgnu/mapping/Procedure;)V

    invoke-virtual {v6, v7, v8}, Lgnu/kawa/lispexpr/ReaderDispatch;->set(ILjava/lang/Object;)V

    return-void

    .line 70
    .end local v4    # "entry":Lgnu/kawa/lispexpr/ReaderDispatch;
    :catch_0
    move-exception v6

    new-instance v7, Lgnu/mapping/WrongType;

    move-object v12, v6

    move-object v13, v7

    move-object v6, v13

    move-object v7, v12

    move-object v8, v13

    move-object v12, v7

    move-object v13, v8

    move-object v7, v13

    move-object v8, v12

    const-string/jumbo v9, "entry"

    const/4 v10, -0x2

    move-object v11, v5

    invoke-direct {v7, v8, v9, v10, v11}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v6

    .line 72
    .restart local v4    # "entry":Lgnu/kawa/lispexpr/ReaderDispatch;
    :catch_1
    move-exception v6

    new-instance v7, Lgnu/mapping/WrongType;

    move-object v12, v6

    move-object v13, v7

    move-object v6, v13

    move-object v7, v12

    move-object v8, v13

    move-object v12, v7

    move-object v13, v8

    move-object v7, v13

    move-object v8, v12

    const-string/jumbo v9, "gnu.kawa.lispexpr.ReaderDispatchMacro.<init>(gnu.mapping.Procedure)"

    const/4 v10, 0x1

    move-object v11, v5

    invoke-direct {v7, v8, v9, v10, v11}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v6
.end method

.method public static setMacroCharacter(CLjava/lang/Object;)V
    .locals 5

    move v0, p0

    move-object v1, p1

    move v2, v0

    move-object v3, v1

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Lgnu/kawa/slib/readtable;->setMacroCharacter(CLjava/lang/Object;Z)V

    return-void
.end method

.method public static setMacroCharacter(CLjava/lang/Object;Z)V
    .locals 7

    move v0, p0

    move-object v1, p1

    move v2, p2

    move v3, v0

    move-object v4, v1

    move v5, v2

    invoke-static {}, Lgnu/kawa/slib/readtable;->currentReadtable()Lgnu/kawa/lispexpr/ReadTable;

    move-result-object v6

    invoke-static {v3, v4, v5, v6}, Lgnu/kawa/slib/readtable;->setMacroCharacter(CLjava/lang/Object;ZLgnu/kawa/lispexpr/ReadTable;)V

    return-void
.end method

.method public static setMacroCharacter(CLjava/lang/Object;ZLgnu/kawa/lispexpr/ReadTable;)V
    .locals 13

    .prologue
    .line 25
    move v0, p0

    .local v0, "char":C
    move-object v1, p1

    .local v1, "function":Ljava/lang/Object;
    move v2, p2

    .local v2, "non$Mnterminating":Z
    move-object/from16 v3, p3

    .local v3, "readtable":Lgnu/kawa/lispexpr/ReadTable;
    move-object v5, v3

    move v6, v0

    new-instance v7, Lgnu/kawa/lispexpr/ReaderMacro;

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    move-object v9, v1

    move-object v11, v9

    move-object v9, v11

    move-object v10, v11

    move-object v4, v10

    :try_start_0
    check-cast v9, Lgnu/mapping/Procedure;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move v10, v2

    invoke-direct {v8, v9, v10}, Lgnu/kawa/lispexpr/ReaderMacro;-><init>(Lgnu/mapping/Procedure;Z)V

    invoke-virtual {v5, v6, v7}, Lgnu/kawa/lispexpr/ReadTable;->set(ILjava/lang/Object;)V

    return-void

    .line 31
    :catch_0
    move-exception v5

    new-instance v6, Lgnu/mapping/WrongType;

    move-object v11, v5

    move-object v12, v6

    move-object v5, v12

    move-object v6, v11

    move-object v7, v12

    move-object v11, v6

    move-object v12, v7

    move-object v6, v12

    move-object v7, v11

    const-string/jumbo v8, "gnu.kawa.lispexpr.ReaderMacro.<init>(gnu.mapping.Procedure,boolean)"

    const/4 v9, 0x1

    move-object v10, v4

    invoke-direct {v6, v7, v8, v9, v10}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v5
.end method


# virtual methods
.method public apply0(Lgnu/expr/ModuleMethod;)Ljava/lang/Object;
    .locals 4

    .prologue
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    iget v2, v2, Lgnu/expr/ModuleMethod;->selector:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 1
    invoke-static {}, Lgnu/kawa/slib/readtable;->currentReadtable()Lgnu/kawa/lispexpr/ReadTable;

    move-result-object v2

    move-object v0, v2

    :goto_0
    return-object v0

    .line 4294967295
    .line 1
    :cond_0
    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Lgnu/expr/ModuleBody;->apply0(Lgnu/expr/ModuleMethod;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    goto :goto_0
.end method

.method public apply1(Lgnu/expr/ModuleMethod;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11

    .prologue
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v1

    iget v3, v3, Lgnu/expr/ModuleMethod;->selector:I

    sparse-switch v3, :sswitch_data_0

    .line 57
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-super {v3, v4, v5}, Lgnu/expr/ModuleBody;->apply1(Lgnu/expr/ModuleMethod;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    :goto_0
    return-object v0

    .line 5
    :sswitch_0
    move-object v3, v2

    invoke-static {v3}, Lgnu/kawa/slib/readtable;->isReadtable(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    :goto_1
    move-object v0, v3

    goto :goto_0

    :cond_0
    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_1

    .line 57
    :sswitch_1
    move-object v3, v2

    :try_start_0
    check-cast v3, Lgnu/text/Char;

    invoke-virtual {v3}, Lgnu/text/Char;->charValue()C
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    invoke-static {v3}, Lgnu/kawa/slib/readtable;->makeDispatchMacroCharacter(C)V

    sget-object v3, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    move-object v0, v3

    goto :goto_0

    .line 58
    :catch_0
    move-exception v3

    new-instance v4, Lgnu/mapping/WrongType;

    move-object v9, v3

    move-object v10, v4

    move-object v3, v10

    move-object v4, v9

    move-object v5, v10

    move-object v9, v4

    move-object v10, v5

    move-object v4, v10

    move-object v5, v9

    const-string/jumbo v6, "make-dispatch-macro-character"

    const/4 v7, 0x1

    move-object v8, v2

    invoke-direct {v4, v5, v6, v7, v8}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v3

    .line 4294967295
    nop

    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_0
        0x6 -> :sswitch_1
    .end sparse-switch
.end method

.method public apply2(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12

    .prologue
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, v1

    iget v4, v4, Lgnu/expr/ModuleMethod;->selector:I

    sparse-switch v4, :sswitch_data_0

    .line 82
    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    move-object v7, v3

    invoke-super {v4, v5, v6, v7}, Lgnu/expr/ModuleBody;->apply2(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    :goto_0
    return-object v0

    .line 25
    :sswitch_0
    move-object v4, v2

    :try_start_0
    check-cast v4, Lgnu/text/Char;

    invoke-virtual {v4}, Lgnu/text/Char;->charValue()C
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    move-object v5, v3

    invoke-static {v4, v5}, Lgnu/kawa/slib/readtable;->setMacroCharacter(CLjava/lang/Object;)V

    sget-object v4, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    move-object v0, v4

    goto :goto_0

    .line 57
    :sswitch_1
    move-object v4, v2

    :try_start_1
    check-cast v4, Lgnu/text/Char;

    invoke-virtual {v4}, Lgnu/text/Char;->charValue()C
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v4

    move-object v5, v3

    :try_start_2
    sget-object v6, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;
    :try_end_2
    .catch Ljava/lang/ClassCastException; {:try_start_2 .. :try_end_2} :catch_2

    if-eq v5, v6, :cond_0

    const/4 v5, 0x1

    :goto_1
    invoke-static {v4, v5}, Lgnu/kawa/slib/readtable;->makeDispatchMacroCharacter(CZ)V

    sget-object v4, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    move-object v0, v4

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    goto :goto_1

    .line 74
    :sswitch_2
    move-object v4, v2

    :try_start_3
    check-cast v4, Lgnu/text/Char;

    invoke-virtual {v4}, Lgnu/text/Char;->charValue()C
    :try_end_3
    .catch Ljava/lang/ClassCastException; {:try_start_3 .. :try_end_3} :catch_3

    move-result v4

    move-object v5, v3

    :try_start_4
    check-cast v5, Lgnu/text/Char;

    invoke-virtual {v5}, Lgnu/text/Char;->charValue()C
    :try_end_4
    .catch Ljava/lang/ClassCastException; {:try_start_4 .. :try_end_4} :catch_4

    move-result v5

    invoke-static {v4, v5}, Lgnu/kawa/slib/readtable;->getDispatchMacroTable(CC)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    goto :goto_0

    .line 82
    :sswitch_3
    move-object v4, v2

    :try_start_5
    check-cast v4, Lgnu/mapping/Symbol;
    :try_end_5
    .catch Ljava/lang/ClassCastException; {:try_start_5 .. :try_end_5} :catch_5

    move-object v5, v3

    :try_start_6
    check-cast v5, Lgnu/mapping/Procedure;
    :try_end_6
    .catch Ljava/lang/ClassCastException; {:try_start_6 .. :try_end_6} :catch_6

    invoke-static {v4, v5}, Lgnu/kawa/slib/readtable;->defineReaderCtor(Lgnu/mapping/Symbol;Lgnu/mapping/Procedure;)V

    sget-object v4, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    move-object v0, v4

    goto :goto_0

    .line 25
    :catch_0
    move-exception v4

    new-instance v5, Lgnu/mapping/WrongType;

    move-object v10, v4

    move-object v11, v5

    move-object v4, v11

    move-object v5, v10

    move-object v6, v11

    move-object v10, v5

    move-object v11, v6

    move-object v5, v11

    move-object v6, v10

    const-string/jumbo v7, "set-macro-character"

    const/4 v8, 0x1

    move-object v9, v2

    invoke-direct {v5, v6, v7, v8, v9}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v4

    .line 58
    :catch_1
    move-exception v4

    new-instance v5, Lgnu/mapping/WrongType;

    move-object v10, v4

    move-object v11, v5

    move-object v4, v11

    move-object v5, v10

    move-object v6, v11

    move-object v10, v5

    move-object v11, v6

    move-object v5, v11

    move-object v6, v10

    const-string/jumbo v7, "make-dispatch-macro-character"

    const/4 v8, 0x1

    move-object v9, v2

    invoke-direct {v5, v6, v7, v8, v9}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v4

    .line 60
    :catch_2
    move-exception v4

    new-instance v5, Lgnu/mapping/WrongType;

    move-object v10, v4

    move-object v11, v5

    move-object v4, v11

    move-object v5, v10

    move-object v6, v11

    move-object v10, v5

    move-object v11, v6

    move-object v5, v11

    move-object v6, v10

    const-string/jumbo v7, "make-dispatch-macro-character"

    const/4 v8, 0x2

    move-object v9, v3

    invoke-direct {v5, v6, v7, v8, v9}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v4

    .line 75
    :catch_3
    move-exception v4

    new-instance v5, Lgnu/mapping/WrongType;

    move-object v10, v4

    move-object v11, v5

    move-object v4, v11

    move-object v5, v10

    move-object v6, v11

    move-object v10, v5

    move-object v11, v6

    move-object v5, v11

    move-object v6, v10

    const-string/jumbo v7, "get-dispatch-macro-table"

    const/4 v8, 0x1

    move-object v9, v2

    invoke-direct {v5, v6, v7, v8, v9}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v4

    :catch_4
    move-exception v4

    new-instance v5, Lgnu/mapping/WrongType;

    move-object v10, v4

    move-object v11, v5

    move-object v4, v11

    move-object v5, v10

    move-object v6, v11

    move-object v10, v5

    move-object v11, v6

    move-object v5, v11

    move-object v6, v10

    const-string/jumbo v7, "get-dispatch-macro-table"

    const/4 v8, 0x2

    move-object v9, v3

    invoke-direct {v5, v6, v7, v8, v9}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v4

    .line 82
    :catch_5
    move-exception v4

    new-instance v5, Lgnu/mapping/WrongType;

    move-object v10, v4

    move-object v11, v5

    move-object v4, v11

    move-object v5, v10

    move-object v6, v11

    move-object v10, v5

    move-object v11, v6

    move-object v5, v11

    move-object v6, v10

    const-string/jumbo v7, "define-reader-ctor"

    const/4 v8, 0x1

    move-object v9, v2

    invoke-direct {v5, v6, v7, v8, v9}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v4

    :catch_6
    move-exception v4

    new-instance v5, Lgnu/mapping/WrongType;

    move-object v10, v4

    move-object v11, v5

    move-object v4, v11

    move-object v5, v10

    move-object v6, v11

    move-object v10, v5

    move-object v11, v6

    move-object v5, v11

    move-object v6, v10

    const-string/jumbo v7, "define-reader-ctor"

    const/4 v8, 0x2

    move-object v9, v3

    invoke-direct {v5, v6, v7, v8, v9}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v4

    .line 4294967295
    nop

    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_0
        0x6 -> :sswitch_1
        0xb -> :sswitch_2
        0xd -> :sswitch_3
    .end sparse-switch
.end method

.method public apply3(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 13

    .prologue
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object v5, v1

    iget v5, v5, Lgnu/expr/ModuleMethod;->selector:I

    packed-switch v5, :pswitch_data_0

    .line 82
    :pswitch_0
    move-object v5, v0

    move-object v6, v1

    move-object v7, v2

    move-object v8, v3

    move-object v9, v4

    invoke-super {v5, v6, v7, v8, v9}, Lgnu/expr/ModuleBody;->apply3(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    :goto_0
    return-object v0

    .line 25
    :pswitch_1
    move-object v5, v2

    :try_start_0
    check-cast v5, Lgnu/text/Char;

    invoke-virtual {v5}, Lgnu/text/Char;->charValue()C
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    move-object v6, v3

    move-object v7, v4

    :try_start_1
    sget-object v8, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_1

    if-eq v7, v8, :cond_0

    const/4 v7, 0x1

    :goto_1
    invoke-static {v5, v6, v7}, Lgnu/kawa/slib/readtable;->setMacroCharacter(CLjava/lang/Object;Z)V

    sget-object v5, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    move-object v0, v5

    goto :goto_0

    :cond_0
    const/4 v7, 0x0

    goto :goto_1

    .line 57
    :pswitch_2
    move-object v5, v2

    :try_start_2
    check-cast v5, Lgnu/text/Char;

    invoke-virtual {v5}, Lgnu/text/Char;->charValue()C
    :try_end_2
    .catch Ljava/lang/ClassCastException; {:try_start_2 .. :try_end_2} :catch_2

    move-result v5

    move-object v6, v3

    :try_start_3
    sget-object v7, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;
    :try_end_3
    .catch Ljava/lang/ClassCastException; {:try_start_3 .. :try_end_3} :catch_3

    if-eq v6, v7, :cond_1

    const/4 v6, 0x1

    :goto_2
    move-object v7, v4

    :try_start_4
    check-cast v7, Lgnu/kawa/lispexpr/ReadTable;
    :try_end_4
    .catch Ljava/lang/ClassCastException; {:try_start_4 .. :try_end_4} :catch_4

    invoke-static {v5, v6, v7}, Lgnu/kawa/slib/readtable;->makeDispatchMacroCharacter(CZLgnu/kawa/lispexpr/ReadTable;)V

    sget-object v5, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    move-object v0, v5

    goto :goto_0

    :cond_1
    const/4 v6, 0x0

    goto :goto_2

    .line 65
    :pswitch_3
    move-object v5, v2

    :try_start_5
    check-cast v5, Lgnu/text/Char;

    invoke-virtual {v5}, Lgnu/text/Char;->charValue()C
    :try_end_5
    .catch Ljava/lang/ClassCastException; {:try_start_5 .. :try_end_5} :catch_5

    move-result v5

    move-object v6, v3

    :try_start_6
    check-cast v6, Lgnu/text/Char;

    invoke-virtual {v6}, Lgnu/text/Char;->charValue()C
    :try_end_6
    .catch Ljava/lang/ClassCastException; {:try_start_6 .. :try_end_6} :catch_6

    move-result v6

    move-object v7, v4

    invoke-static {v5, v6, v7}, Lgnu/kawa/slib/readtable;->setDispatchMacroCharacter(CCLjava/lang/Object;)V

    sget-object v5, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    move-object v0, v5

    goto :goto_0

    .line 74
    :pswitch_4
    move-object v5, v2

    :try_start_7
    check-cast v5, Lgnu/text/Char;

    invoke-virtual {v5}, Lgnu/text/Char;->charValue()C
    :try_end_7
    .catch Ljava/lang/ClassCastException; {:try_start_7 .. :try_end_7} :catch_7

    move-result v5

    move-object v6, v3

    :try_start_8
    check-cast v6, Lgnu/text/Char;

    invoke-virtual {v6}, Lgnu/text/Char;->charValue()C
    :try_end_8
    .catch Ljava/lang/ClassCastException; {:try_start_8 .. :try_end_8} :catch_8

    move-result v6

    move-object v7, v4

    :try_start_9
    check-cast v7, Lgnu/kawa/lispexpr/ReadTable;
    :try_end_9
    .catch Ljava/lang/ClassCastException; {:try_start_9 .. :try_end_9} :catch_9

    invoke-static {v5, v6, v7}, Lgnu/kawa/slib/readtable;->getDispatchMacroTable(CCLgnu/kawa/lispexpr/ReadTable;)Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    goto :goto_0

    .line 82
    :pswitch_5
    move-object v5, v2

    :try_start_a
    check-cast v5, Lgnu/mapping/Symbol;
    :try_end_a
    .catch Ljava/lang/ClassCastException; {:try_start_a .. :try_end_a} :catch_a

    move-object v6, v3

    :try_start_b
    check-cast v6, Lgnu/mapping/Procedure;
    :try_end_b
    .catch Ljava/lang/ClassCastException; {:try_start_b .. :try_end_b} :catch_b

    move-object v7, v4

    :try_start_c
    check-cast v7, Lgnu/kawa/lispexpr/ReadTable;
    :try_end_c
    .catch Ljava/lang/ClassCastException; {:try_start_c .. :try_end_c} :catch_c

    invoke-static {v5, v6, v7}, Lgnu/kawa/slib/readtable;->defineReaderCtor(Lgnu/mapping/Symbol;Lgnu/mapping/Procedure;Lgnu/kawa/lispexpr/ReadTable;)V

    sget-object v5, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    move-object v0, v5

    goto :goto_0

    .line 25
    :catch_0
    move-exception v5

    new-instance v6, Lgnu/mapping/WrongType;

    move-object v11, v5

    move-object v12, v6

    move-object v5, v12

    move-object v6, v11

    move-object v7, v12

    move-object v11, v6

    move-object v12, v7

    move-object v6, v12

    move-object v7, v11

    const-string/jumbo v8, "set-macro-character"

    const/4 v9, 0x1

    move-object v10, v2

    invoke-direct {v6, v7, v8, v9, v10}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v5

    .line 28
    :catch_1
    move-exception v5

    new-instance v6, Lgnu/mapping/WrongType;

    move-object v11, v5

    move-object v12, v6

    move-object v5, v12

    move-object v6, v11

    move-object v7, v12

    move-object v11, v6

    move-object v12, v7

    move-object v6, v12

    move-object v7, v11

    const-string/jumbo v8, "set-macro-character"

    const/4 v9, 0x3

    move-object v10, v4

    invoke-direct {v6, v7, v8, v9, v10}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v5

    .line 58
    :catch_2
    move-exception v5

    new-instance v6, Lgnu/mapping/WrongType;

    move-object v11, v5

    move-object v12, v6

    move-object v5, v12

    move-object v6, v11

    move-object v7, v12

    move-object v11, v6

    move-object v12, v7

    move-object v6, v12

    move-object v7, v11

    const-string/jumbo v8, "make-dispatch-macro-character"

    const/4 v9, 0x1

    move-object v10, v2

    invoke-direct {v6, v7, v8, v9, v10}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v5

    .line 60
    :catch_3
    move-exception v5

    new-instance v6, Lgnu/mapping/WrongType;

    move-object v11, v5

    move-object v12, v6

    move-object v5, v12

    move-object v6, v11

    move-object v7, v12

    move-object v11, v6

    move-object v12, v7

    move-object v6, v12

    move-object v7, v11

    const-string/jumbo v8, "make-dispatch-macro-character"

    const/4 v9, 0x2

    move-object v10, v3

    invoke-direct {v6, v7, v8, v9, v10}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v5

    .line 61
    :catch_4
    move-exception v5

    new-instance v6, Lgnu/mapping/WrongType;

    move-object v11, v5

    move-object v12, v6

    move-object v5, v12

    move-object v6, v11

    move-object v7, v12

    move-object v11, v6

    move-object v12, v7

    move-object v6, v12

    move-object v7, v11

    const-string/jumbo v8, "make-dispatch-macro-character"

    const/4 v9, 0x3

    move-object v10, v4

    invoke-direct {v6, v7, v8, v9, v10}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v5

    .line 66
    :catch_5
    move-exception v5

    new-instance v6, Lgnu/mapping/WrongType;

    move-object v11, v5

    move-object v12, v6

    move-object v5, v12

    move-object v6, v11

    move-object v7, v12

    move-object v11, v6

    move-object v12, v7

    move-object v6, v12

    move-object v7, v11

    const-string/jumbo v8, "set-dispatch-macro-character"

    const/4 v9, 0x1

    move-object v10, v2

    invoke-direct {v6, v7, v8, v9, v10}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v5

    :catch_6
    move-exception v5

    new-instance v6, Lgnu/mapping/WrongType;

    move-object v11, v5

    move-object v12, v6

    move-object v5, v12

    move-object v6, v11

    move-object v7, v12

    move-object v11, v6

    move-object v12, v7

    move-object v6, v12

    move-object v7, v11

    const-string/jumbo v8, "set-dispatch-macro-character"

    const/4 v9, 0x2

    move-object v10, v3

    invoke-direct {v6, v7, v8, v9, v10}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v5

    .line 75
    :catch_7
    move-exception v5

    new-instance v6, Lgnu/mapping/WrongType;

    move-object v11, v5

    move-object v12, v6

    move-object v5, v12

    move-object v6, v11

    move-object v7, v12

    move-object v11, v6

    move-object v12, v7

    move-object v6, v12

    move-object v7, v11

    const-string/jumbo v8, "get-dispatch-macro-table"

    const/4 v9, 0x1

    move-object v10, v2

    invoke-direct {v6, v7, v8, v9, v10}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v5

    :catch_8
    move-exception v5

    new-instance v6, Lgnu/mapping/WrongType;

    move-object v11, v5

    move-object v12, v6

    move-object v5, v12

    move-object v6, v11

    move-object v7, v12

    move-object v11, v6

    move-object v12, v7

    move-object v6, v12

    move-object v7, v11

    const-string/jumbo v8, "get-dispatch-macro-table"

    const/4 v9, 0x2

    move-object v10, v3

    invoke-direct {v6, v7, v8, v9, v10}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v5

    .line 76
    :catch_9
    move-exception v5

    new-instance v6, Lgnu/mapping/WrongType;

    move-object v11, v5

    move-object v12, v6

    move-object v5, v12

    move-object v6, v11

    move-object v7, v12

    move-object v11, v6

    move-object v12, v7

    move-object v6, v12

    move-object v7, v11

    const-string/jumbo v8, "get-dispatch-macro-table"

    const/4 v9, 0x3

    move-object v10, v4

    invoke-direct {v6, v7, v8, v9, v10}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v5

    .line 82
    :catch_a
    move-exception v5

    new-instance v6, Lgnu/mapping/WrongType;

    move-object v11, v5

    move-object v12, v6

    move-object v5, v12

    move-object v6, v11

    move-object v7, v12

    move-object v11, v6

    move-object v12, v7

    move-object v6, v12

    move-object v7, v11

    const-string/jumbo v8, "define-reader-ctor"

    const/4 v9, 0x1

    move-object v10, v2

    invoke-direct {v6, v7, v8, v9, v10}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v5

    :catch_b
    move-exception v5

    new-instance v6, Lgnu/mapping/WrongType;

    move-object v11, v5

    move-object v12, v6

    move-object v5, v12

    move-object v6, v11

    move-object v7, v12

    move-object v11, v6

    move-object v12, v7

    move-object v6, v12

    move-object v7, v11

    const-string/jumbo v8, "define-reader-ctor"

    const/4 v9, 0x2

    move-object v10, v3

    invoke-direct {v6, v7, v8, v9, v10}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v5

    .line 83
    :catch_c
    move-exception v5

    new-instance v6, Lgnu/mapping/WrongType;

    move-object v11, v5

    move-object v12, v6

    move-object v5, v12

    move-object v6, v11

    move-object v7, v12

    move-object v11, v6

    move-object v12, v7

    move-object v6, v12

    move-object v7, v11

    const-string/jumbo v8, "define-reader-ctor"

    const/4 v9, 0x3

    move-object v10, v4

    invoke-direct {v6, v7, v8, v9, v10}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v5

    .line 4294967295
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_5
    .end packed-switch
.end method

.method public apply4(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 14

    .prologue
    move-object v0, p0

    move-object v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object v6, v1

    iget v6, v6, Lgnu/expr/ModuleMethod;->selector:I

    sparse-switch v6, :sswitch_data_0

    .line 65
    move-object v6, v0

    move-object v7, v1

    move-object v8, v2

    move-object v9, v3

    move-object v10, v4

    move-object v11, v5

    invoke-super/range {v6 .. v11}, Lgnu/expr/ModuleBody;->apply4(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    move-object v0, v6

    :goto_0
    return-object v0

    .line 25
    :sswitch_0
    move-object v6, v2

    :try_start_0
    check-cast v6, Lgnu/text/Char;

    invoke-virtual {v6}, Lgnu/text/Char;->charValue()C
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    move-object v7, v3

    move-object v8, v4

    :try_start_1
    sget-object v9, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_1

    if-eq v8, v9, :cond_0

    const/4 v8, 0x1

    :goto_1
    move-object v9, v5

    :try_start_2
    check-cast v9, Lgnu/kawa/lispexpr/ReadTable;
    :try_end_2
    .catch Ljava/lang/ClassCastException; {:try_start_2 .. :try_end_2} :catch_2

    invoke-static {v6, v7, v8, v9}, Lgnu/kawa/slib/readtable;->setMacroCharacter(CLjava/lang/Object;ZLgnu/kawa/lispexpr/ReadTable;)V

    sget-object v6, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    move-object v0, v6

    goto :goto_0

    :cond_0
    const/4 v8, 0x0

    goto :goto_1

    .line 65
    :sswitch_1
    move-object v6, v2

    :try_start_3
    check-cast v6, Lgnu/text/Char;

    invoke-virtual {v6}, Lgnu/text/Char;->charValue()C
    :try_end_3
    .catch Ljava/lang/ClassCastException; {:try_start_3 .. :try_end_3} :catch_3

    move-result v6

    move-object v7, v3

    :try_start_4
    check-cast v7, Lgnu/text/Char;

    invoke-virtual {v7}, Lgnu/text/Char;->charValue()C
    :try_end_4
    .catch Ljava/lang/ClassCastException; {:try_start_4 .. :try_end_4} :catch_4

    move-result v7

    move-object v8, v4

    move-object v9, v5

    :try_start_5
    check-cast v9, Lgnu/kawa/lispexpr/ReadTable;
    :try_end_5
    .catch Ljava/lang/ClassCastException; {:try_start_5 .. :try_end_5} :catch_5

    invoke-static {v6, v7, v8, v9}, Lgnu/kawa/slib/readtable;->setDispatchMacroCharacter(CCLjava/lang/Object;Lgnu/kawa/lispexpr/ReadTable;)V

    sget-object v6, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    move-object v0, v6

    goto :goto_0

    .line 25
    :catch_0
    move-exception v6

    new-instance v7, Lgnu/mapping/WrongType;

    move-object v12, v6

    move-object v13, v7

    move-object v6, v13

    move-object v7, v12

    move-object v8, v13

    move-object v12, v7

    move-object v13, v8

    move-object v7, v13

    move-object v8, v12

    const-string/jumbo v9, "set-macro-character"

    const/4 v10, 0x1

    move-object v11, v2

    invoke-direct {v7, v8, v9, v10, v11}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v6

    .line 28
    :catch_1
    move-exception v6

    new-instance v7, Lgnu/mapping/WrongType;

    move-object v12, v6

    move-object v13, v7

    move-object v6, v13

    move-object v7, v12

    move-object v8, v13

    move-object v12, v7

    move-object v13, v8

    move-object v7, v13

    move-object v8, v12

    const-string/jumbo v9, "set-macro-character"

    const/4 v10, 0x3

    move-object v11, v4

    invoke-direct {v7, v8, v9, v10, v11}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v6

    .line 29
    :catch_2
    move-exception v6

    new-instance v7, Lgnu/mapping/WrongType;

    move-object v12, v6

    move-object v13, v7

    move-object v6, v13

    move-object v7, v12

    move-object v8, v13

    move-object v12, v7

    move-object v13, v8

    move-object v7, v13

    move-object v8, v12

    const-string/jumbo v9, "set-macro-character"

    const/4 v10, 0x4

    move-object v11, v5

    invoke-direct {v7, v8, v9, v10, v11}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v6

    .line 66
    :catch_3
    move-exception v6

    new-instance v7, Lgnu/mapping/WrongType;

    move-object v12, v6

    move-object v13, v7

    move-object v6, v13

    move-object v7, v12

    move-object v8, v13

    move-object v12, v7

    move-object v13, v8

    move-object v7, v13

    move-object v8, v12

    const-string/jumbo v9, "set-dispatch-macro-character"

    const/4 v10, 0x1

    move-object v11, v2

    invoke-direct {v7, v8, v9, v10, v11}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v6

    :catch_4
    move-exception v6

    new-instance v7, Lgnu/mapping/WrongType;

    move-object v12, v6

    move-object v13, v7

    move-object v6, v13

    move-object v7, v12

    move-object v8, v13

    move-object v12, v7

    move-object v13, v8

    move-object v7, v13

    move-object v8, v12

    const-string/jumbo v9, "set-dispatch-macro-character"

    const/4 v10, 0x2

    move-object v11, v3

    invoke-direct {v7, v8, v9, v10, v11}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v6

    .line 68
    :catch_5
    move-exception v6

    new-instance v7, Lgnu/mapping/WrongType;

    move-object v12, v6

    move-object v13, v7

    move-object v6, v13

    move-object v7, v12

    move-object v8, v13

    move-object v12, v7

    move-object v13, v8

    move-object v7, v13

    move-object v8, v12

    const-string/jumbo v9, "set-dispatch-macro-character"

    const/4 v10, 0x4

    move-object v11, v5

    invoke-direct {v7, v8, v9, v10, v11}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v6

    .line 4294967295
    nop

    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_0
        0x9 -> :sswitch_1
    .end sparse-switch
.end method

.method public match0(Lgnu/expr/ModuleMethod;Lgnu/mapping/CallContext;)I
    .locals 6

    .prologue
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v1

    iget v3, v3, Lgnu/expr/ModuleMethod;->selector:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 1
    move-object v3, v2

    move-object v4, v1

    iput-object v4, v3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    move-object v3, v2

    const/4 v4, 0x0

    iput v4, v3, Lgnu/mapping/CallContext;->pc:I

    const/4 v3, 0x0

    move v0, v3

    :goto_0
    return v0

    .line 4294967295
    .line 1
    :cond_0
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-super {v3, v4, v5}, Lgnu/expr/ModuleBody;->match0(Lgnu/expr/ModuleMethod;Lgnu/mapping/CallContext;)I

    move-result v3

    move v0, v3

    goto :goto_0
.end method

.method public match1(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Lgnu/mapping/CallContext;)I
    .locals 9

    .prologue
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, v1

    iget v4, v4, Lgnu/expr/ModuleMethod;->selector:I

    sparse-switch v4, :sswitch_data_0

    .line 5
    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    move-object v7, v3

    invoke-super {v4, v5, v6, v7}, Lgnu/expr/ModuleBody;->match1(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result v4

    move v0, v4

    .line 57
    :goto_0
    return v0

    :sswitch_0
    move-object v4, v3

    move-object v5, v2

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    instance-of v6, v6, Lgnu/text/Char;

    if-eqz v6, :cond_0

    iput-object v5, v4, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    move-object v4, v3

    move-object v5, v1

    iput-object v5, v4, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    move-object v4, v3

    const/4 v5, 0x1

    iput v5, v4, Lgnu/mapping/CallContext;->pc:I

    const/4 v4, 0x0

    move v0, v4

    goto :goto_0

    :cond_0
    const v6, -0xbffff

    move v0, v6

    goto :goto_0

    .line 5
    :sswitch_1
    move-object v4, v3

    move-object v5, v2

    iput-object v5, v4, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    move-object v4, v3

    move-object v5, v1

    iput-object v5, v4, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    move-object v4, v3

    const/4 v5, 0x1

    iput v5, v4, Lgnu/mapping/CallContext;->pc:I

    const/4 v4, 0x0

    move v0, v4

    goto :goto_0

    .line 4294967295
    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_1
        0x6 -> :sswitch_0
    .end sparse-switch
.end method

.method public match2(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)I
    .locals 11

    .prologue
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, v1

    iget v5, v5, Lgnu/expr/ModuleMethod;->selector:I

    sparse-switch v5, :sswitch_data_0

    .line 25
    move-object v5, v0

    move-object v6, v1

    move-object v7, v2

    move-object v8, v3

    move-object v9, v4

    invoke-super {v5, v6, v7, v8, v9}, Lgnu/expr/ModuleBody;->match2(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result v5

    move v0, v5

    .line 82
    :goto_0
    return v0

    :sswitch_0
    move-object v5, v4

    move-object v6, v2

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    instance-of v7, v7, Lgnu/mapping/Symbol;

    if-nez v7, :cond_0

    const v7, -0xbffff

    move v0, v7

    goto :goto_0

    :cond_0
    iput-object v6, v5, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    move-object v5, v4

    move-object v6, v3

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    instance-of v7, v7, Lgnu/mapping/Procedure;

    if-nez v7, :cond_1

    const v7, -0xbfffe

    move v0, v7

    goto :goto_0

    :cond_1
    iput-object v6, v5, Lgnu/mapping/CallContext;->value2:Ljava/lang/Object;

    move-object v5, v4

    move-object v6, v1

    iput-object v6, v5, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    move-object v5, v4

    const/4 v6, 0x2

    iput v6, v5, Lgnu/mapping/CallContext;->pc:I

    const/4 v5, 0x0

    move v0, v5

    goto :goto_0

    .line 74
    :sswitch_1
    move-object v5, v4

    move-object v6, v2

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    instance-of v7, v7, Lgnu/text/Char;

    if-eqz v7, :cond_2

    iput-object v6, v5, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    move-object v5, v4

    move-object v6, v3

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    instance-of v7, v7, Lgnu/text/Char;

    if-eqz v7, :cond_3

    iput-object v6, v5, Lgnu/mapping/CallContext;->value2:Ljava/lang/Object;

    move-object v5, v4

    move-object v6, v1

    iput-object v6, v5, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    move-object v5, v4

    const/4 v6, 0x2

    iput v6, v5, Lgnu/mapping/CallContext;->pc:I

    const/4 v5, 0x0

    move v0, v5

    goto :goto_0

    :cond_2
    const v7, -0xbffff

    move v0, v7

    goto :goto_0

    :cond_3
    const v7, -0xbfffe

    move v0, v7

    goto :goto_0

    .line 57
    :sswitch_2
    move-object v5, v4

    move-object v6, v2

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    instance-of v7, v7, Lgnu/text/Char;

    if-eqz v7, :cond_4

    iput-object v6, v5, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    move-object v5, v4

    move-object v6, v3

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    const/4 v7, 0x1

    if-eqz v7, :cond_5

    iput-object v6, v5, Lgnu/mapping/CallContext;->value2:Ljava/lang/Object;

    move-object v5, v4

    move-object v6, v1

    iput-object v6, v5, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    move-object v5, v4

    const/4 v6, 0x2

    iput v6, v5, Lgnu/mapping/CallContext;->pc:I

    const/4 v5, 0x0

    move v0, v5

    goto :goto_0

    :cond_4
    const v7, -0xbffff

    move v0, v7

    goto :goto_0

    :cond_5
    const v7, -0xbfffe

    move v0, v7

    goto :goto_0

    .line 25
    :sswitch_3
    move-object v5, v4

    move-object v6, v2

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    instance-of v7, v7, Lgnu/text/Char;

    if-eqz v7, :cond_6

    iput-object v6, v5, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    move-object v5, v4

    move-object v6, v3

    iput-object v6, v5, Lgnu/mapping/CallContext;->value2:Ljava/lang/Object;

    move-object v5, v4

    move-object v6, v1

    iput-object v6, v5, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    move-object v5, v4

    const/4 v6, 0x2

    iput v6, v5, Lgnu/mapping/CallContext;->pc:I

    const/4 v5, 0x0

    move v0, v5

    goto/16 :goto_0

    :cond_6
    const v7, -0xbffff

    move v0, v7

    goto/16 :goto_0

    .line 4294967295
    nop

    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_3
        0x6 -> :sswitch_2
        0xb -> :sswitch_1
        0xd -> :sswitch_0
    .end sparse-switch
.end method

.method public match3(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)I
    .locals 13

    .prologue
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object v6, v1

    iget v6, v6, Lgnu/expr/ModuleMethod;->selector:I

    packed-switch v6, :pswitch_data_0

    .line 25
    :pswitch_0
    move-object v6, v0

    move-object v7, v1

    move-object v8, v2

    move-object v9, v3

    move-object v10, v4

    move-object v11, v5

    invoke-super/range {v6 .. v11}, Lgnu/expr/ModuleBody;->match3(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result v6

    move v0, v6

    .line 82
    :goto_0
    return v0

    :pswitch_1
    move-object v6, v5

    move-object v7, v2

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    instance-of v8, v8, Lgnu/mapping/Symbol;

    if-nez v8, :cond_0

    const v8, -0xbffff

    move v0, v8

    goto :goto_0

    :cond_0
    iput-object v7, v6, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    move-object v6, v5

    move-object v7, v3

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    instance-of v8, v8, Lgnu/mapping/Procedure;

    if-nez v8, :cond_1

    const v8, -0xbfffe

    move v0, v8

    goto :goto_0

    :cond_1
    iput-object v7, v6, Lgnu/mapping/CallContext;->value2:Ljava/lang/Object;

    move-object v6, v5

    move-object v7, v4

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    instance-of v8, v8, Lgnu/kawa/lispexpr/ReadTable;

    if-nez v8, :cond_2

    const v8, -0xbfffd

    move v0, v8

    goto :goto_0

    :cond_2
    iput-object v7, v6, Lgnu/mapping/CallContext;->value3:Ljava/lang/Object;

    move-object v6, v5

    move-object v7, v1

    iput-object v7, v6, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    move-object v6, v5

    const/4 v7, 0x3

    iput v7, v6, Lgnu/mapping/CallContext;->pc:I

    const/4 v6, 0x0

    move v0, v6

    goto :goto_0

    .line 74
    :pswitch_2
    move-object v6, v5

    move-object v7, v2

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    instance-of v8, v8, Lgnu/text/Char;

    if-eqz v8, :cond_3

    iput-object v7, v6, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    move-object v6, v5

    move-object v7, v3

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    instance-of v8, v8, Lgnu/text/Char;

    if-eqz v8, :cond_4

    iput-object v7, v6, Lgnu/mapping/CallContext;->value2:Ljava/lang/Object;

    move-object v6, v5

    move-object v7, v4

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    instance-of v8, v8, Lgnu/kawa/lispexpr/ReadTable;

    if-nez v8, :cond_5

    const v8, -0xbfffd

    move v0, v8

    goto :goto_0

    :cond_3
    const v8, -0xbffff

    move v0, v8

    goto :goto_0

    :cond_4
    const v8, -0xbfffe

    move v0, v8

    goto :goto_0

    :cond_5
    iput-object v7, v6, Lgnu/mapping/CallContext;->value3:Ljava/lang/Object;

    move-object v6, v5

    move-object v7, v1

    iput-object v7, v6, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    move-object v6, v5

    const/4 v7, 0x3

    iput v7, v6, Lgnu/mapping/CallContext;->pc:I

    const/4 v6, 0x0

    move v0, v6

    goto :goto_0

    .line 65
    :pswitch_3
    move-object v6, v5

    move-object v7, v2

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    instance-of v8, v8, Lgnu/text/Char;

    if-eqz v8, :cond_6

    iput-object v7, v6, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    move-object v6, v5

    move-object v7, v3

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    instance-of v8, v8, Lgnu/text/Char;

    if-eqz v8, :cond_7

    iput-object v7, v6, Lgnu/mapping/CallContext;->value2:Ljava/lang/Object;

    move-object v6, v5

    move-object v7, v4

    iput-object v7, v6, Lgnu/mapping/CallContext;->value3:Ljava/lang/Object;

    move-object v6, v5

    move-object v7, v1

    iput-object v7, v6, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    move-object v6, v5

    const/4 v7, 0x3

    iput v7, v6, Lgnu/mapping/CallContext;->pc:I

    const/4 v6, 0x0

    move v0, v6

    goto/16 :goto_0

    :cond_6
    const v8, -0xbffff

    move v0, v8

    goto/16 :goto_0

    :cond_7
    const v8, -0xbfffe

    move v0, v8

    goto/16 :goto_0

    .line 57
    :pswitch_4
    move-object v6, v5

    move-object v7, v2

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    instance-of v8, v8, Lgnu/text/Char;

    if-eqz v8, :cond_8

    iput-object v7, v6, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    move-object v6, v5

    move-object v7, v3

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    const/4 v8, 0x1

    if-eqz v8, :cond_9

    iput-object v7, v6, Lgnu/mapping/CallContext;->value2:Ljava/lang/Object;

    move-object v6, v5

    move-object v7, v4

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    instance-of v8, v8, Lgnu/kawa/lispexpr/ReadTable;

    if-nez v8, :cond_a

    const v8, -0xbfffd

    move v0, v8

    goto/16 :goto_0

    :cond_8
    const v8, -0xbffff

    move v0, v8

    goto/16 :goto_0

    :cond_9
    const v8, -0xbfffe

    move v0, v8

    goto/16 :goto_0

    :cond_a
    iput-object v7, v6, Lgnu/mapping/CallContext;->value3:Ljava/lang/Object;

    move-object v6, v5

    move-object v7, v1

    iput-object v7, v6, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    move-object v6, v5

    const/4 v7, 0x3

    iput v7, v6, Lgnu/mapping/CallContext;->pc:I

    const/4 v6, 0x0

    move v0, v6

    goto/16 :goto_0

    .line 25
    :pswitch_5
    move-object v6, v5

    move-object v7, v2

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    instance-of v8, v8, Lgnu/text/Char;

    if-eqz v8, :cond_b

    iput-object v7, v6, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    move-object v6, v5

    move-object v7, v3

    iput-object v7, v6, Lgnu/mapping/CallContext;->value2:Ljava/lang/Object;

    move-object v6, v5

    move-object v7, v4

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    const/4 v8, 0x1

    if-eqz v8, :cond_c

    iput-object v7, v6, Lgnu/mapping/CallContext;->value3:Ljava/lang/Object;

    move-object v6, v5

    move-object v7, v1

    iput-object v7, v6, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    move-object v6, v5

    const/4 v7, 0x3

    iput v7, v6, Lgnu/mapping/CallContext;->pc:I

    const/4 v6, 0x0

    move v0, v6

    goto/16 :goto_0

    :cond_b
    const v8, -0xbffff

    move v0, v8

    goto/16 :goto_0

    :cond_c
    const v8, -0xbfffd

    move v0, v8

    goto/16 :goto_0

    .line 4294967295
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public match4(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)I
    .locals 15

    .prologue
    move-object v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object v7, v1

    iget v7, v7, Lgnu/expr/ModuleMethod;->selector:I

    sparse-switch v7, :sswitch_data_0

    .line 25
    move-object v7, v0

    move-object v8, v1

    move-object v9, v2

    move-object v10, v3

    move-object v11, v4

    move-object v12, v5

    move-object v13, v6

    invoke-super/range {v7 .. v13}, Lgnu/expr/ModuleBody;->match4(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result v7

    move v0, v7

    .line 65
    :goto_0
    return v0

    :sswitch_0
    move-object v7, v6

    move-object v8, v2

    move-object v14, v8

    move-object v8, v14

    move-object v9, v14

    instance-of v9, v9, Lgnu/text/Char;

    if-eqz v9, :cond_0

    iput-object v8, v7, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    move-object v7, v6

    move-object v8, v3

    move-object v14, v8

    move-object v8, v14

    move-object v9, v14

    instance-of v9, v9, Lgnu/text/Char;

    if-eqz v9, :cond_1

    iput-object v8, v7, Lgnu/mapping/CallContext;->value2:Ljava/lang/Object;

    move-object v7, v6

    move-object v8, v4

    iput-object v8, v7, Lgnu/mapping/CallContext;->value3:Ljava/lang/Object;

    move-object v7, v6

    move-object v8, v5

    move-object v14, v8

    move-object v8, v14

    move-object v9, v14

    instance-of v9, v9, Lgnu/kawa/lispexpr/ReadTable;

    if-nez v9, :cond_2

    const v9, -0xbfffc

    move v0, v9

    goto :goto_0

    :cond_0
    const v9, -0xbffff

    move v0, v9

    goto :goto_0

    :cond_1
    const v9, -0xbfffe

    move v0, v9

    goto :goto_0

    :cond_2
    iput-object v8, v7, Lgnu/mapping/CallContext;->value4:Ljava/lang/Object;

    move-object v7, v6

    move-object v8, v1

    iput-object v8, v7, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    move-object v7, v6

    const/4 v8, 0x4

    iput v8, v7, Lgnu/mapping/CallContext;->pc:I

    const/4 v7, 0x0

    move v0, v7

    goto :goto_0

    .line 25
    :sswitch_1
    move-object v7, v6

    move-object v8, v2

    move-object v14, v8

    move-object v8, v14

    move-object v9, v14

    instance-of v9, v9, Lgnu/text/Char;

    if-eqz v9, :cond_3

    iput-object v8, v7, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    move-object v7, v6

    move-object v8, v3

    iput-object v8, v7, Lgnu/mapping/CallContext;->value2:Ljava/lang/Object;

    move-object v7, v6

    move-object v8, v4

    move-object v14, v8

    move-object v8, v14

    move-object v9, v14

    const/4 v9, 0x1

    if-eqz v9, :cond_4

    iput-object v8, v7, Lgnu/mapping/CallContext;->value3:Ljava/lang/Object;

    move-object v7, v6

    move-object v8, v5

    move-object v14, v8

    move-object v8, v14

    move-object v9, v14

    instance-of v9, v9, Lgnu/kawa/lispexpr/ReadTable;

    if-nez v9, :cond_5

    const v9, -0xbfffc

    move v0, v9

    goto :goto_0

    :cond_3
    const v9, -0xbffff

    move v0, v9

    goto :goto_0

    :cond_4
    const v9, -0xbfffd

    move v0, v9

    goto :goto_0

    :cond_5
    iput-object v8, v7, Lgnu/mapping/CallContext;->value4:Ljava/lang/Object;

    move-object v7, v6

    move-object v8, v1

    iput-object v8, v7, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    move-object v7, v6

    const/4 v8, 0x4

    iput v8, v7, Lgnu/mapping/CallContext;->pc:I

    const/4 v7, 0x0

    move v0, v7

    goto :goto_0

    .line 4294967295
    nop

    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_1
        0x9 -> :sswitch_0
    .end sparse-switch
.end method

.method public final run(Lgnu/mapping/CallContext;)V
    .locals 4

    .prologue
    .line 1
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/slib/readtable;
    move-object v1, p1

    .local v1, "$ctx":Lgnu/mapping/CallContext;
    move-object v3, v1

    iget-object v3, v3, Lgnu/mapping/CallContext;->consumer:Lgnu/lists/Consumer;

    move-object v2, v3

    .line 5
    .local v2, "$result":Lgnu/lists/Consumer;
    return-void
.end method
