.class public Lkawa/standard/require;
.super Lkawa/lang/Syntax;
.source "require.java"


# static fields
.field private static final SLIB_PREFIX:Ljava/lang/String; = "gnu.kawa.slib."

.field static featureMap:Ljava/util/Hashtable;

.field public static final require:Lkawa/standard/require;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 18
    new-instance v0, Lkawa/standard/require;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Lkawa/standard/require;-><init>()V

    sput-object v0, Lkawa/standard/require;->require:Lkawa/standard/require;

    .line 19
    sget-object v0, Lkawa/standard/require;->require:Lkawa/standard/require;

    const-string/jumbo v1, "require"

    invoke-virtual {v0, v1}, Lkawa/standard/require;->setName(Ljava/lang/String;)V

    .line 59
    new-instance v0, Ljava/util/Hashtable;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lkawa/standard/require;->featureMap:Ljava/util/Hashtable;

    .line 70
    const-string/jumbo v0, "generic-write"

    const-string/jumbo v1, "gnu.kawa.slib.genwrite"

    invoke-static {v0, v1}, Lkawa/standard/require;->map(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    const-string/jumbo v0, "pretty-print"

    const-string/jumbo v1, "gnu.kawa.slib.pp"

    invoke-static {v0, v1}, Lkawa/standard/require;->map(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    const-string/jumbo v0, "pprint-file"

    const-string/jumbo v1, "gnu.kawa.slib.ppfile"

    invoke-static {v0, v1}, Lkawa/standard/require;->map(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    const-string/jumbo v0, "printf"

    const-string/jumbo v1, "gnu.kawa.slib.printf"

    invoke-static {v0, v1}, Lkawa/standard/require;->map(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    const-string/jumbo v0, "xml"

    const-string/jumbo v1, "gnu.kawa.slib.XML"

    invoke-static {v0, v1}, Lkawa/standard/require;->map(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    const-string/jumbo v0, "readtable"

    const-string/jumbo v1, "gnu.kawa.slib.readtable"

    invoke-static {v0, v1}, Lkawa/standard/require;->map(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    const-string/jumbo v0, "srfi-10"

    const-string/jumbo v1, "gnu.kawa.slib.readtable"

    invoke-static {v0, v1}, Lkawa/standard/require;->map(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    const-string/jumbo v0, "http"

    const-string/jumbo v1, "gnu.kawa.servlet.HTTP"

    invoke-static {v0, v1}, Lkawa/standard/require;->map(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    const-string/jumbo v0, "servlets"

    const-string/jumbo v1, "gnu.kawa.servlet.servlets"

    invoke-static {v0, v1}, Lkawa/standard/require;->map(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    const-string/jumbo v0, "srfi-1"

    const-string/jumbo v1, "gnu.kawa.slib.srfi1"

    invoke-static {v0, v1}, Lkawa/standard/require;->map(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    const-string/jumbo v0, "list-lib"

    const-string/jumbo v1, "gnu.kawa.slib.srfi1"

    invoke-static {v0, v1}, Lkawa/standard/require;->map(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    const-string/jumbo v0, "srfi-2"

    const-string/jumbo v1, "gnu.kawa.slib.srfi2"

    invoke-static {v0, v1}, Lkawa/standard/require;->map(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    const-string/jumbo v0, "and-let*"

    const-string/jumbo v1, "gnu.kawa.slib.srfi2"

    invoke-static {v0, v1}, Lkawa/standard/require;->map(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    const-string/jumbo v0, "srfi-13"

    const-string/jumbo v1, "gnu.kawa.slib.srfi13"

    invoke-static {v0, v1}, Lkawa/standard/require;->map(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    const-string/jumbo v0, "string-lib"

    const-string/jumbo v1, "gnu.kawa.slib.srfi13"

    invoke-static {v0, v1}, Lkawa/standard/require;->map(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    const-string/jumbo v0, "srfi-34"

    const-string/jumbo v1, "gnu.kawa.slib.srfi34"

    invoke-static {v0, v1}, Lkawa/standard/require;->map(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    const-string/jumbo v0, "srfi-35"

    const-string/jumbo v1, "gnu.kawa.slib.conditions"

    invoke-static {v0, v1}, Lkawa/standard/require;->map(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    const-string/jumbo v0, "condition"

    const-string/jumbo v1, "gnu.kawa.slib.conditions"

    invoke-static {v0, v1}, Lkawa/standard/require;->map(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    const-string/jumbo v0, "conditions"

    const-string/jumbo v1, "gnu.kawa.slib.conditions"

    invoke-static {v0, v1}, Lkawa/standard/require;->map(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    const-string/jumbo v0, "srfi-37"

    const-string/jumbo v1, "gnu.kawa.slib.srfi37"

    invoke-static {v0, v1}, Lkawa/standard/require;->map(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    const-string/jumbo v0, "args-fold"

    const-string/jumbo v1, "gnu.kawa.slib.srfi37"

    invoke-static {v0, v1}, Lkawa/standard/require;->map(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    const-string/jumbo v0, "srfi-64"

    const-string/jumbo v1, "gnu.kawa.slib.testing"

    invoke-static {v0, v1}, Lkawa/standard/require;->map(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    const-string/jumbo v0, "testing"

    const-string/jumbo v1, "gnu.kawa.slib.testing"

    invoke-static {v0, v1}, Lkawa/standard/require;->map(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    const-string/jumbo v0, "srfi-69"

    const-string/jumbo v1, "gnu.kawa.slib.srfi69"

    invoke-static {v0, v1}, Lkawa/standard/require;->map(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    const-string/jumbo v0, "hash-table"

    const-string/jumbo v1, "gnu.kawa.slib.srfi69"

    invoke-static {v0, v1}, Lkawa/standard/require;->map(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    const-string/jumbo v0, "basic-hash-tables"

    const-string/jumbo v1, "gnu.kawa.slib.srfi69"

    invoke-static {v0, v1}, Lkawa/standard/require;->map(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    const-string/jumbo v0, "srfi-95"

    const-string/jumbo v1, "kawa.lib.srfi95"

    invoke-static {v0, v1}, Lkawa/standard/require;->map(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    const-string/jumbo v0, "sorting-and-merging"

    const-string/jumbo v1, "kawa.lib.srfi95"

    invoke-static {v0, v1}, Lkawa/standard/require;->map(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    const-string/jumbo v0, "regex"

    const-string/jumbo v1, "kawa.lib.kawa.regex"

    invoke-static {v0, v1}, Lkawa/standard/require;->map(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    const-string/jumbo v0, "pregexp"

    const-string/jumbo v1, "gnu.kawa.slib.pregexp"

    invoke-static {v0, v1}, Lkawa/standard/require;->map(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    const-string/jumbo v0, "gui"

    const-string/jumbo v1, "gnu.kawa.slib.gui"

    invoke-static {v0, v1}, Lkawa/standard/require;->map(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    const-string/jumbo v0, "swing-gui"

    const-string/jumbo v1, "gnu.kawa.slib.swing"

    invoke-static {v0, v1}, Lkawa/standard/require;->map(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    const-string/jumbo v0, "android-defs"

    const-string/jumbo v1, "gnu.kawa.android.defs"

    invoke-static {v0, v1}, Lkawa/standard/require;->map(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    const-string/jumbo v0, "syntax-utils"

    const-string/jumbo v1, "gnu.kawa.slib.syntaxutils"

    invoke-static {v0, v1}, Lkawa/standard/require;->map(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 16
    move-object v0, p0

    .local v0, "this":Lkawa/standard/require;
    move-object v1, v0

    invoke-direct {v1}, Lkawa/lang/Syntax;-><init>()V

    return-void
.end method

.method public static find(Ljava/lang/String;)Ljava/lang/Object;
    .locals 3

    .prologue
    .line 113
    move-object v0, p0

    .local v0, "typeName":Ljava/lang/String;
    invoke-static {}, Lgnu/expr/ModuleManager;->getInstance()Lgnu/expr/ModuleManager;

    move-result-object v1

    move-object v2, v0

    invoke-virtual {v1, v2}, Lgnu/expr/ModuleManager;->findWithClassName(Ljava/lang/String;)Lgnu/expr/ModuleInfo;

    move-result-object v1

    invoke-virtual {v1}, Lgnu/expr/ModuleInfo;->getInstance()Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "typeName":Ljava/lang/String;
    return-object v0
.end method

.method public static importDefinitions(Ljava/lang/String;Lgnu/expr/ModuleInfo;Lgnu/mapping/Procedure;Ljava/util/Vector;Lgnu/expr/ScopeExp;Lgnu/expr/Compilation;)Z
    .locals 42

    .prologue
    .line 229
    move-object/from16 v2, p0

    .local v2, "className":Ljava/lang/String;
    move-object/from16 v3, p1

    .local v3, "info":Lgnu/expr/ModuleInfo;
    move-object/from16 v4, p2

    .local v4, "renamer":Lgnu/mapping/Procedure;
    move-object/from16 v5, p3

    .local v5, "forms":Ljava/util/Vector;
    move-object/from16 v6, p4

    .local v6, "defs":Lgnu/expr/ScopeExp;
    move-object/from16 v7, p5

    .local v7, "tr":Lgnu/expr/Compilation;
    invoke-static {}, Lgnu/expr/ModuleManager;->getInstance()Lgnu/expr/ModuleManager;

    move-result-object v33

    move-object/from16 v8, v33

    .line 231
    .local v8, "manager":Lgnu/expr/ModuleManager;
    move-object/from16 v33, v3

    invoke-virtual/range {v33 .. v33}, Lgnu/expr/ModuleInfo;->getState()I

    move-result v33

    const/16 v34, 0x1

    and-int/lit8 v33, v33, 0x1

    if-nez v33, :cond_1

    move-object/from16 v33, v3

    invoke-virtual/range {v33 .. v33}, Lgnu/expr/ModuleInfo;->getCompilation()Lgnu/expr/Compilation;

    move-result-object v33

    if-nez v33, :cond_1

    move-object/from16 v33, v3

    move-object/from16 v34, v8

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v35

    move-wide/from16 v40, v35

    move-wide/from16 v35, v40

    move-wide/from16 v37, v40

    move-wide/from16 v9, v37

    .local v9, "now":J
    invoke-virtual/range {v33 .. v36}, Lgnu/expr/ModuleInfo;->checkCurrent(Lgnu/expr/ModuleManager;J)Z

    move-result v33

    if-nez v33, :cond_1

    .line 235
    move-object/from16 v33, v7

    invoke-virtual/range {v33 .. v33}, Lgnu/expr/Compilation;->getMessages()Lgnu/text/SourceMessages;

    move-result-object v33

    move-object/from16 v11, v33

    .line 236
    .local v11, "messages":Lgnu/text/SourceMessages;
    invoke-static {}, Lgnu/expr/Language;->getDefaultLanguage()Lgnu/expr/Language;

    move-result-object v33

    move-object/from16 v12, v33

    .line 240
    .local v12, "language":Lgnu/expr/Language;
    move-object/from16 v33, v3

    :try_start_0
    invoke-virtual/range {v33 .. v33}, Lgnu/expr/ModuleInfo;->getSourceAbsPath()Lgnu/text/Path;

    move-result-object v33

    invoke-static/range {v33 .. v33}, Lgnu/mapping/InPort;->openFile(Ljava/lang/Object;)Lgnu/mapping/InPort;

    move-result-object v33

    move-object/from16 v14, v33

    .line 241
    .local v14, "fstream":Lgnu/mapping/InPort;
    move-object/from16 v33, v3

    invoke-virtual/range {v33 .. v33}, Lgnu/expr/ModuleInfo;->clearClass()V

    .line 242
    move-object/from16 v33, v3

    move-object/from16 v34, v2

    invoke-virtual/range {v33 .. v34}, Lgnu/expr/ModuleInfo;->setClassName(Ljava/lang/String;)V

    .line 243
    const/16 v33, 0x8

    move/from16 v15, v33

    .line 244
    .local v15, "options":I
    move-object/from16 v33, v7

    move-object/from16 v0, v33

    iget-boolean v0, v0, Lgnu/expr/Compilation;->immediate:Z

    move/from16 v33, v0

    if-eqz v33, :cond_0

    .line 245
    move/from16 v33, v15

    const/16 v34, 0x1

    or-int/lit8 v33, v33, 0x1

    move/from16 v15, v33

    .line 246
    :cond_0
    move-object/from16 v33, v12

    move-object/from16 v34, v14

    move-object/from16 v35, v11

    move/from16 v36, v15

    move-object/from16 v37, v3

    invoke-virtual/range {v33 .. v37}, Lgnu/expr/Language;->parse(Lgnu/mapping/InPort;Lgnu/text/SourceMessages;ILgnu/expr/ModuleInfo;)Lgnu/expr/Compilation;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lgnu/text/SyntaxException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v33

    move-object/from16 v13, v33

    .line 264
    .line 265
    .local v13, "comp":Lgnu/expr/Compilation;
    move-object/from16 v33, v3

    move-object/from16 v34, v13

    invoke-virtual/range {v34 .. v34}, Lgnu/expr/Compilation;->getModule()Lgnu/expr/ModuleExp;

    move-result-object v34

    move-object/from16 v35, v13

    invoke-virtual/range {v34 .. v35}, Lgnu/expr/ModuleExp;->classFor(Lgnu/expr/Compilation;)Lgnu/bytecode/ClassType;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Lgnu/bytecode/ClassType;->getName()Ljava/lang/String;

    move-result-object v34

    invoke-virtual/range {v33 .. v34}, Lgnu/expr/ModuleInfo;->setClassName(Ljava/lang/String;)V

    .line 268
    .end local v9    # "now":J
    .end local v11    # "messages":Lgnu/text/SourceMessages;
    .end local v12    # "language":Lgnu/expr/Language;
    .end local v13    # "comp":Lgnu/expr/Compilation;
    .end local v14    # "fstream":Lgnu/mapping/InPort;
    .end local v15    # "options":I
    :cond_1
    move-object/from16 v33, v7

    move-object/from16 v0, v33

    iget-object v0, v0, Lgnu/expr/Compilation;->minfo:Lgnu/expr/ModuleInfo;

    move-object/from16 v33, v0

    if-eqz v33, :cond_3

    move-object/from16 v33, v7

    invoke-virtual/range {v33 .. v33}, Lgnu/expr/Compilation;->getState()I

    move-result v33

    const/16 v34, 0x4

    move/from16 v0, v33

    move/from16 v1, v34

    if-ge v0, v1, :cond_3

    .line 270
    move-object/from16 v33, v7

    move-object/from16 v0, v33

    iget-object v0, v0, Lgnu/expr/Compilation;->minfo:Lgnu/expr/ModuleInfo;

    move-object/from16 v33, v0

    move-object/from16 v34, v3

    invoke-virtual/range {v33 .. v34}, Lgnu/expr/ModuleInfo;->addDependency(Lgnu/expr/ModuleInfo;)V

    .line 272
    move-object/from16 v33, v3

    const/16 v34, 0xc

    invoke-virtual/range {v33 .. v34}, Lgnu/expr/ModuleInfo;->loadEager(I)Z

    move-result v33

    if-nez v33, :cond_3

    move-object/from16 v33, v3

    invoke-virtual/range {v33 .. v33}, Lgnu/expr/ModuleInfo;->getState()I

    move-result v33

    const/16 v34, 0x6

    move/from16 v0, v33

    move/from16 v1, v34

    if-ge v0, v1, :cond_3

    .line 276
    move-object/from16 v33, v7

    move-object/from16 v34, v3

    move-object/from16 v35, v6

    move-object/from16 v36, v5

    invoke-virtual/range {v36 .. v36}, Ljava/util/Vector;->size()I

    move-result v36

    invoke-virtual/range {v33 .. v36}, Lgnu/expr/Compilation;->pushPendingImport(Lgnu/expr/ModuleInfo;Lgnu/expr/ScopeExp;I)V

    .line 277
    const/16 v33, 0x1

    move/from16 v2, v33

    .line 490
    .end local v2    # "className":Ljava/lang/String;
    :goto_0
    return v2

    .line 248
    .restart local v2    # "className":Ljava/lang/String;
    .restart local v9    # "now":J
    .restart local v11    # "messages":Lgnu/text/SourceMessages;
    .restart local v12    # "language":Lgnu/expr/Language;
    :catch_0
    move-exception v33

    move-object/from16 v14, v33

    .line 250
    .local v14, "ex":Ljava/io/FileNotFoundException;
    move-object/from16 v33, v7

    const/16 v34, 0x65

    new-instance v35, Ljava/lang/StringBuilder;

    move-object/from16 v40, v35

    move-object/from16 v35, v40

    move-object/from16 v36, v40

    invoke-direct/range {v36 .. v36}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v36, "not found: "

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v36, v14

    invoke-virtual/range {v36 .. v36}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v36

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    invoke-virtual/range {v33 .. v35}, Lgnu/expr/Compilation;->error(CLjava/lang/String;)V

    .line 251
    const/16 v33, 0x0

    move/from16 v2, v33

    goto :goto_0

    .line 253
    .end local v14    # "ex":Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v33

    move-object/from16 v14, v33

    .line 255
    .local v14, "ex":Ljava/io/IOException;
    move-object/from16 v33, v7

    const/16 v34, 0x65

    new-instance v35, Ljava/lang/StringBuilder;

    move-object/from16 v40, v35

    move-object/from16 v35, v40

    move-object/from16 v36, v40

    invoke-direct/range {v36 .. v36}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v36, "caught "

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v36, v14

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    invoke-virtual/range {v33 .. v35}, Lgnu/expr/Compilation;->error(CLjava/lang/String;)V

    .line 256
    const/16 v33, 0x0

    move/from16 v2, v33

    goto :goto_0

    .line 258
    .end local v14    # "ex":Ljava/io/IOException;
    :catch_2
    move-exception v33

    move-object/from16 v14, v33

    .line 260
    .local v14, "ex":Lgnu/text/SyntaxException;
    move-object/from16 v33, v14

    invoke-virtual/range {v33 .. v33}, Lgnu/text/SyntaxException;->getMessages()Lgnu/text/SourceMessages;

    move-result-object v33

    move-object/from16 v34, v11

    move-object/from16 v0, v33

    move-object/from16 v1, v34

    if-eq v0, v1, :cond_2

    .line 261
    new-instance v33, Ljava/lang/RuntimeException;

    move-object/from16 v40, v33

    move-object/from16 v33, v40

    move-object/from16 v34, v40

    new-instance v35, Ljava/lang/StringBuilder;

    move-object/from16 v40, v35

    move-object/from16 v35, v40

    move-object/from16 v36, v40

    invoke-direct/range {v36 .. v36}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v36, "confussing syntax error: "

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v36, v14

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    invoke-direct/range {v34 .. v35}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v33

    .line 263
    :cond_2
    const/16 v33, 0x0

    move/from16 v2, v33

    goto/16 :goto_0

    .line 281
    .end local v9    # "now":J
    .end local v11    # "messages":Lgnu/text/SourceMessages;
    .end local v12    # "language":Lgnu/expr/Language;
    .end local v14    # "ex":Lgnu/text/SyntaxException;
    :cond_3
    move-object/from16 v33, v3

    invoke-virtual/range {v33 .. v33}, Lgnu/expr/ModuleInfo;->getClassType()Lgnu/bytecode/ClassType;

    move-result-object v33

    move-object/from16 v11, v33

    .line 282
    .local v11, "type":Lgnu/bytecode/ClassType;
    move-object/from16 v33, v11

    invoke-virtual/range {v33 .. v33}, Lgnu/bytecode/ClassType;->getName()Ljava/lang/String;

    move-result-object v33

    move-object/from16 v12, v33

    .line 283
    .local v12, "tname":Ljava/lang/String;
    move-object/from16 v33, v7

    invoke-virtual/range {v33 .. v33}, Lgnu/expr/Compilation;->sharedModuleDefs()Z

    move-result v33

    move/from16 v13, v33

    .line 284
    .local v13, "sharedModule":Z
    move-object/from16 v33, v3

    invoke-virtual/range {v33 .. v33}, Lgnu/expr/ModuleInfo;->getState()I

    move-result v33

    const/16 v34, 0x6

    move/from16 v0, v33

    move/from16 v1, v34

    if-ge v0, v1, :cond_4

    move-object/from16 v33, v3

    invoke-virtual/range {v33 .. v33}, Lgnu/expr/ModuleInfo;->getCompilation()Lgnu/expr/Compilation;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Lgnu/expr/Compilation;->makeRunnable()Z

    move-result v33

    :goto_1
    move/from16 v14, v33

    .line 287
    .local v14, "isRunnable":Z
    const/16 v33, 0x0

    move-object/from16 v15, v33

    .line 288
    .local v15, "decl":Lgnu/expr/Declaration;
    const-string/jumbo v33, "kawa.standard.require"

    invoke-static/range {v33 .. v33}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v33

    move-object/from16 v16, v33

    .line 289
    .local v16, "thisType":Lgnu/bytecode/ClassType;
    const/16 v33, 0x1

    move/from16 v0, v33

    new-array v0, v0, [Lgnu/expr/Expression;

    move-object/from16 v33, v0

    move-object/from16 v40, v33

    move-object/from16 v33, v40

    move-object/from16 v34, v40

    const/16 v35, 0x0

    new-instance v36, Lgnu/expr/QuoteExp;

    move-object/from16 v40, v36

    move-object/from16 v36, v40

    move-object/from16 v37, v40

    move-object/from16 v38, v12

    invoke-direct/range {v37 .. v38}, Lgnu/expr/QuoteExp;-><init>(Ljava/lang/Object;)V

    aput-object v36, v34, v35

    move-object/from16 v17, v33

    .line 290
    .local v17, "args":[Lgnu/expr/Expression;
    move-object/from16 v33, v16

    const-string/jumbo v34, "find"

    move-object/from16 v35, v17

    invoke-static/range {v33 .. v35}, Lgnu/kawa/reflect/Invoke;->makeInvokeStatic(Lgnu/bytecode/ClassType;Ljava/lang/String;[Lgnu/expr/Expression;)Lgnu/expr/ApplyExp;

    move-result-object v33

    move-object/from16 v18, v33

    .line 291
    .local v18, "dofind":Lgnu/expr/Expression;
    const/16 v33, 0x0

    move-object/from16 v19, v33

    .line 292
    .local v19, "instanceField":Lgnu/bytecode/Field;
    move-object/from16 v33, v7

    invoke-virtual/range {v33 .. v33}, Lgnu/expr/Compilation;->getLanguage()Lgnu/expr/Language;

    move-result-object v33

    move-object/from16 v20, v33

    .line 293
    .local v20, "language":Lgnu/expr/Language;
    move-object/from16 v33, v18

    move-object/from16 v34, v7

    invoke-virtual/range {v33 .. v34}, Lgnu/expr/Expression;->setLine(Lgnu/expr/Compilation;)V

    .line 294
    move-object/from16 v33, v5

    invoke-virtual/range {v33 .. v33}, Ljava/util/Vector;->size()I

    move-result v33

    move/from16 v21, v33

    .line 296
    .local v21, "formsStart":I
    move-object/from16 v33, v3

    invoke-virtual/range {v33 .. v33}, Lgnu/expr/ModuleInfo;->setupModuleExp()Lgnu/expr/ModuleExp;

    move-result-object v33

    move-object/from16 v22, v33

    .line 298
    .local v22, "mod":Lgnu/expr/ModuleExp;
    new-instance v33, Ljava/util/Vector;

    move-object/from16 v40, v33

    move-object/from16 v33, v40

    move-object/from16 v34, v40

    invoke-direct/range {v34 .. v34}, Ljava/util/Vector;-><init>()V

    move-object/from16 v23, v33

    .line 299
    .local v23, "declPairs":Ljava/util/Vector;
    move-object/from16 v33, v22

    invoke-virtual/range {v33 .. v33}, Lgnu/expr/ModuleExp;->firstDecl()Lgnu/expr/Declaration;

    move-result-object v33

    move-object/from16 v24, v33

    .line 300
    .local v24, "fdecl":Lgnu/expr/Declaration;
    :goto_2
    move-object/from16 v33, v24

    if-eqz v33, :cond_17

    .line 302
    move-object/from16 v33, v24

    invoke-virtual/range {v33 .. v33}, Lgnu/expr/Declaration;->isPrivate()Z

    move-result v33

    if-eqz v33, :cond_5

    .line 303
    .line 300
    :goto_3
    move-object/from16 v33, v24

    invoke-virtual/range {v33 .. v33}, Lgnu/expr/Declaration;->nextDecl()Lgnu/expr/Declaration;

    move-result-object v33

    move-object/from16 v24, v33

    goto :goto_2

    .line 284
    .end local v14    # "isRunnable":Z
    .end local v15    # "decl":Lgnu/expr/Declaration;
    .end local v16    # "thisType":Lgnu/bytecode/ClassType;
    .end local v17    # "args":[Lgnu/expr/Expression;
    .end local v18    # "dofind":Lgnu/expr/Expression;
    .end local v19    # "instanceField":Lgnu/bytecode/Field;
    .end local v20    # "language":Lgnu/expr/Language;
    .end local v21    # "formsStart":I
    .end local v22    # "mod":Lgnu/expr/ModuleExp;
    .end local v23    # "declPairs":Ljava/util/Vector;
    .end local v24    # "fdecl":Lgnu/expr/Declaration;
    :cond_4
    move-object/from16 v33, v11

    sget-object v34, Lgnu/expr/Compilation;->typeRunnable:Lgnu/bytecode/ClassType;

    invoke-virtual/range {v33 .. v34}, Lgnu/bytecode/ClassType;->isSubtype(Lgnu/bytecode/Type;)Z

    move-result v33

    goto/16 :goto_1

    .line 305
    .restart local v14    # "isRunnable":Z
    .restart local v15    # "decl":Lgnu/expr/Declaration;
    .restart local v16    # "thisType":Lgnu/bytecode/ClassType;
    .restart local v17    # "args":[Lgnu/expr/Expression;
    .restart local v18    # "dofind":Lgnu/expr/Expression;
    .restart local v19    # "instanceField":Lgnu/bytecode/Field;
    .restart local v20    # "language":Lgnu/expr/Language;
    .restart local v21    # "formsStart":I
    .restart local v22    # "mod":Lgnu/expr/ModuleExp;
    .restart local v23    # "declPairs":Ljava/util/Vector;
    .restart local v24    # "fdecl":Lgnu/expr/Declaration;
    :cond_5
    move-object/from16 v33, v24

    invoke-virtual/range {v33 .. v33}, Lgnu/expr/Declaration;->getSymbol()Ljava/lang/Object;

    move-result-object v33

    check-cast v33, Lgnu/mapping/Symbol;

    move-object/from16 v25, v33

    .line 306
    .local v25, "aname":Lgnu/mapping/Symbol;
    move-object/from16 v33, v4

    if-eqz v33, :cond_8

    .line 311
    move-object/from16 v33, v4

    move-object/from16 v34, v25

    :try_start_1
    invoke-virtual/range {v33 .. v34}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_3

    move-result-object v33

    move-object/from16 v26, v33

    .line 316
    .line 317
    :goto_4
    move-object/from16 v33, v26

    if-nez v33, :cond_6

    .line 318
    goto :goto_3

    .line 313
    :catch_3
    move-exception v33

    move-object/from16 v27, v33

    .line 315
    .local v27, "ex":Ljava/lang/Throwable;
    move-object/from16 v33, v27

    move-object/from16 v26, v33

    .local v26, "mapped":Ljava/lang/Throwable;
    goto :goto_4

    .line 319
    .end local v26    # "mapped":Ljava/lang/Throwable;
    .end local v27    # "ex":Ljava/lang/Throwable;
    :cond_6
    move-object/from16 v33, v26

    move-object/from16 v0, v33

    instance-of v0, v0, Lgnu/mapping/Symbol;

    move/from16 v33, v0

    if-nez v33, :cond_7

    .line 321
    move-object/from16 v33, v7

    const/16 v34, 0x65

    new-instance v35, Ljava/lang/StringBuilder;

    move-object/from16 v40, v35

    move-object/from16 v35, v40

    move-object/from16 v36, v40

    invoke-direct/range {v36 .. v36}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v36, "internal error - import name mapper returned non-symbol: "

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v36, v26

    invoke-virtual/range {v36 .. v36}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v36

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    invoke-virtual/range {v33 .. v35}, Lgnu/expr/Compilation;->error(CLjava/lang/String;)V

    .line 322
    goto :goto_3

    .line 324
    :cond_7
    move-object/from16 v33, v26

    check-cast v33, Lgnu/mapping/Symbol;

    move-object/from16 v25, v33

    .line 326
    :cond_8
    move-object/from16 v33, v24

    const-wide/16 v34, 0x800

    invoke-virtual/range {v33 .. v35}, Lgnu/expr/Declaration;->getFlag(J)Z

    move-result v33

    move/from16 v26, v33

    .line 327
    .local v26, "isStatic":Z
    move/from16 v33, v26

    if-nez v33, :cond_a

    move-object/from16 v33, v15

    if-nez v33, :cond_a

    .line 329
    new-instance v33, Ljava/lang/StringBuilder;

    move-object/from16 v40, v33

    move-object/from16 v33, v40

    move-object/from16 v34, v40

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v34, v12

    const/16 v35, 0x2e

    const/16 v36, 0x24

    invoke-virtual/range {v34 .. v36}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v34

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    const-string/jumbo v34, "$instance"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    move-object/from16 v27, v33

    .line 330
    .local v27, "iname":Ljava/lang/String;
    new-instance v33, Lgnu/expr/Declaration;

    move-object/from16 v40, v33

    move-object/from16 v33, v40

    move-object/from16 v34, v40

    move-object/from16 v35, v27

    invoke-static/range {v35 .. v35}, Lgnu/mapping/SimpleSymbol;->valueOf(Ljava/lang/String;)Lgnu/mapping/SimpleSymbol;

    move-result-object v35

    move-object/from16 v36, v11

    invoke-direct/range {v34 .. v36}, Lgnu/expr/Declaration;-><init>(Ljava/lang/Object;Lgnu/bytecode/Type;)V

    move-object/from16 v15, v33

    .line 331
    move-object/from16 v33, v15

    const/16 v34, 0x1

    invoke-virtual/range {v33 .. v34}, Lgnu/expr/Declaration;->setPrivate(Z)V

    .line 332
    move-object/from16 v33, v15

    const-wide/32 v34, 0x40004000

    invoke-virtual/range {v33 .. v35}, Lgnu/expr/Declaration;->setFlag(J)V

    .line 334
    move-object/from16 v33, v6

    move-object/from16 v34, v15

    invoke-virtual/range {v33 .. v34}, Lgnu/expr/ScopeExp;->addDeclaration(Lgnu/expr/Declaration;)V

    .line 336
    move-object/from16 v33, v15

    move-object/from16 v34, v18

    invoke-virtual/range {v33 .. v34}, Lgnu/expr/Declaration;->noteValue(Lgnu/expr/Expression;)V

    .line 337
    new-instance v33, Lgnu/expr/SetExp;

    move-object/from16 v40, v33

    move-object/from16 v33, v40

    move-object/from16 v34, v40

    move-object/from16 v35, v15

    move-object/from16 v36, v18

    invoke-direct/range {v34 .. v36}, Lgnu/expr/SetExp;-><init>(Lgnu/expr/Declaration;Lgnu/expr/Expression;)V

    move-object/from16 v28, v33

    .line 338
    .local v28, "sexp":Lgnu/expr/SetExp;
    move-object/from16 v33, v28

    move-object/from16 v34, v7

    invoke-virtual/range {v33 .. v34}, Lgnu/expr/SetExp;->setLine(Lgnu/expr/Compilation;)V

    .line 339
    move-object/from16 v33, v28

    const/16 v34, 0x1

    invoke-virtual/range {v33 .. v34}, Lgnu/expr/SetExp;->setDefining(Z)V

    .line 340
    move-object/from16 v33, v5

    move-object/from16 v34, v28

    invoke-virtual/range {v33 .. v34}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 341
    move-object/from16 v33, v5

    invoke-virtual/range {v33 .. v33}, Ljava/util/Vector;->size()I

    move-result v33

    move/from16 v21, v33

    .line 342
    move-object/from16 v33, v15

    const-wide/32 v34, 0x20000000

    invoke-virtual/range {v33 .. v35}, Lgnu/expr/Declaration;->setFlag(J)V

    .line 345
    move/from16 v33, v14

    if-eqz v33, :cond_9

    .line 346
    move-object/from16 v33, v15

    const/16 v34, 0x0

    invoke-virtual/range {v33 .. v34}, Lgnu/expr/Declaration;->setSimple(Z)V

    .line 348
    :cond_9
    move-object/from16 v33, v15

    const-wide/16 v34, 0x2000

    invoke-virtual/range {v33 .. v35}, Lgnu/expr/Declaration;->setFlag(J)V

    .line 351
    .end local v27    # "iname":Ljava/lang/String;
    .end local v28    # "sexp":Lgnu/expr/SetExp;
    :cond_a
    move-object/from16 v33, v24

    move-object/from16 v0, v33

    iget-object v0, v0, Lgnu/expr/Declaration;->field:Lgnu/bytecode/Field;

    move-object/from16 v33, v0

    if-eqz v33, :cond_b

    .line 353
    move-object/from16 v33, v24

    move-object/from16 v0, v33

    iget-object v0, v0, Lgnu/expr/Declaration;->field:Lgnu/bytecode/Field;

    move-object/from16 v33, v0

    invoke-virtual/range {v33 .. v33}, Lgnu/bytecode/Field;->getName()Ljava/lang/String;

    move-result-object v33

    move-object/from16 v27, v33

    .line 354
    .local v27, "fname":Ljava/lang/String;
    move-object/from16 v33, v27

    const-string/jumbo v34, "$instance"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v33

    if-eqz v33, :cond_b

    .line 356
    move-object/from16 v33, v24

    move-object/from16 v0, v33

    iget-object v0, v0, Lgnu/expr/Declaration;->field:Lgnu/bytecode/Field;

    move-object/from16 v33, v0

    move-object/from16 v19, v33

    .line 357
    goto/16 :goto_3

    .line 368
    .end local v27    # "fname":Ljava/lang/String;
    :cond_b
    move-object/from16 v33, v24

    move-object/from16 v0, v33

    iget-object v0, v0, Lgnu/expr/Declaration;->field:Lgnu/bytecode/Field;

    move-object/from16 v33, v0

    if-eqz v33, :cond_c

    move-object/from16 v33, v24

    move-object/from16 v0, v33

    iget-object v0, v0, Lgnu/expr/Declaration;->field:Lgnu/bytecode/Field;

    move-object/from16 v33, v0

    invoke-virtual/range {v33 .. v33}, Lgnu/bytecode/Field;->getName()Ljava/lang/String;

    move-result-object v33

    const-string/jumbo v34, "$instance"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v33

    if-eqz v33, :cond_c

    const/16 v33, 0x1

    :goto_5
    move/from16 v27, v33

    .line 372
    .local v27, "isImportedInstance":Z
    move-object/from16 v33, v6

    move-object/from16 v34, v25

    move-object/from16 v35, v20

    move-object/from16 v36, v20

    move-object/from16 v37, v24

    invoke-virtual/range {v36 .. v37}, Lgnu/expr/Language;->getNamespaceOf(Lgnu/expr/Declaration;)I

    move-result v36

    invoke-virtual/range {v33 .. v36}, Lgnu/expr/ScopeExp;->lookup(Ljava/lang/Object;Lgnu/expr/Language;I)Lgnu/expr/Declaration;

    move-result-object v33

    move-object/from16 v29, v33

    .line 373
    .local v29, "old":Lgnu/expr/Declaration;
    move/from16 v33, v27

    if-eqz v33, :cond_12

    .line 375
    move-object/from16 v33, v29

    if-eqz v33, :cond_d

    .line 376
    goto/16 :goto_3

    .line 368
    .end local v27    # "isImportedInstance":Z
    .end local v29    # "old":Lgnu/expr/Declaration;
    :cond_c
    const/16 v33, 0x0

    goto :goto_5

    .line 377
    .restart local v27    # "isImportedInstance":Z
    .restart local v29    # "old":Lgnu/expr/Declaration;
    :cond_d
    move-object/from16 v33, v6

    move-object/from16 v34, v25

    invoke-virtual/range {v33 .. v34}, Lgnu/expr/ScopeExp;->addDeclaration(Ljava/lang/Object;)Lgnu/expr/Declaration;

    move-result-object v33

    move-object/from16 v28, v33

    .line 378
    .local v28, "adecl":Lgnu/expr/Declaration;
    move-object/from16 v33, v28

    const-wide/32 v34, 0x40004000

    invoke-virtual/range {v33 .. v35}, Lgnu/expr/Declaration;->setFlag(J)V

    .line 380
    move-object/from16 v33, v28

    move-object/from16 v34, v24

    invoke-virtual/range {v34 .. v34}, Lgnu/expr/Declaration;->getType()Lgnu/bytecode/Type;

    move-result-object v34

    invoke-virtual/range {v33 .. v34}, Lgnu/expr/Declaration;->setType(Lgnu/bytecode/Type;)V

    .line 381
    move-object/from16 v33, v28

    const-wide/16 v34, 0x2000

    invoke-virtual/range {v33 .. v35}, Lgnu/expr/Declaration;->setFlag(J)V

    .line 405
    :goto_6
    move-object/from16 v33, v28

    move-object/from16 v34, v7

    invoke-virtual/range {v33 .. v34}, Lgnu/expr/Declaration;->setLocation(Lgnu/text/SourceLocator;)V

    .line 406
    new-instance v33, Lgnu/expr/ReferenceExp;

    move-object/from16 v40, v33

    move-object/from16 v33, v40

    move-object/from16 v34, v40

    move-object/from16 v35, v24

    invoke-direct/range {v34 .. v35}, Lgnu/expr/ReferenceExp;-><init>(Lgnu/expr/Declaration;)V

    move-object/from16 v30, v33

    .line 407
    .local v30, "fref":Lgnu/expr/ReferenceExp;
    move-object/from16 v33, v30

    move-object/from16 v34, v15

    invoke-virtual/range {v33 .. v34}, Lgnu/expr/ReferenceExp;->setContextDecl(Lgnu/expr/Declaration;)V

    .line 408
    move/from16 v33, v27

    if-nez v33, :cond_e

    .line 410
    move-object/from16 v33, v30

    const/16 v34, 0x1

    invoke-virtual/range {v33 .. v34}, Lgnu/expr/ReferenceExp;->setDontDereference(Z)V

    .line 411
    move/from16 v33, v13

    if-nez v33, :cond_e

    .line 412
    move-object/from16 v33, v28

    const/16 v34, 0x1

    invoke-virtual/range {v33 .. v34}, Lgnu/expr/Declaration;->setPrivate(Z)V

    .line 415
    :cond_e
    move-object/from16 v33, v28

    const-wide/16 v34, 0x4000

    invoke-virtual/range {v33 .. v35}, Lgnu/expr/Declaration;->setFlag(J)V

    .line 416
    move-object/from16 v33, v24

    const-wide/32 v34, 0x8000

    invoke-virtual/range {v33 .. v35}, Lgnu/expr/Declaration;->getFlag(J)Z

    move-result v33

    if-eqz v33, :cond_f

    .line 417
    move-object/from16 v33, v28

    const-wide/32 v34, 0x8000

    invoke-virtual/range {v33 .. v35}, Lgnu/expr/Declaration;->setFlag(J)V

    .line 418
    :cond_f
    move-object/from16 v33, v24

    invoke-virtual/range {v33 .. v33}, Lgnu/expr/Declaration;->isProcedureDecl()Z

    move-result v33

    if-eqz v33, :cond_10

    .line 419
    move-object/from16 v33, v28

    const/16 v34, 0x1

    invoke-virtual/range {v33 .. v34}, Lgnu/expr/Declaration;->setProcedureDecl(Z)V

    .line 420
    :cond_10
    move/from16 v33, v26

    if-eqz v33, :cond_11

    .line 421
    move-object/from16 v33, v28

    const-wide/16 v34, 0x800

    invoke-virtual/range {v33 .. v35}, Lgnu/expr/Declaration;->setFlag(J)V

    .line 423
    :cond_11
    new-instance v33, Lgnu/expr/SetExp;

    move-object/from16 v40, v33

    move-object/from16 v33, v40

    move-object/from16 v34, v40

    move-object/from16 v35, v28

    move-object/from16 v36, v30

    invoke-direct/range {v34 .. v36}, Lgnu/expr/SetExp;-><init>(Lgnu/expr/Declaration;Lgnu/expr/Expression;)V

    move-object/from16 v31, v33

    .line 424
    .local v31, "sexp":Lgnu/expr/SetExp;
    move-object/from16 v33, v28

    const-wide/32 v34, 0x20000000

    invoke-virtual/range {v33 .. v35}, Lgnu/expr/Declaration;->setFlag(J)V

    .line 425
    move-object/from16 v33, v31

    const/16 v34, 0x1

    invoke-virtual/range {v33 .. v34}, Lgnu/expr/SetExp;->setDefining(Z)V

    .line 426
    move/from16 v33, v27

    if-eqz v33, :cond_16

    .line 432
    move-object/from16 v33, v5

    move-object/from16 v34, v31

    move/from16 v35, v21

    invoke-virtual/range {v33 .. v35}, Ljava/util/Vector;->insertElementAt(Ljava/lang/Object;I)V

    .line 433
    add-int/lit8 v21, v21, 0x1

    .line 438
    :goto_7
    move-object/from16 v33, v23

    move-object/from16 v34, v28

    invoke-virtual/range {v33 .. v34}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    move-result v33

    .line 439
    move-object/from16 v33, v23

    move-object/from16 v34, v24

    invoke-virtual/range {v33 .. v34}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    move-result v33

    .line 441
    move-object/from16 v33, v28

    move-object/from16 v34, v30

    invoke-virtual/range {v33 .. v34}, Lgnu/expr/Declaration;->noteValue(Lgnu/expr/Expression;)V

    .line 442
    move-object/from16 v33, v28

    const-wide/32 v34, 0x20000

    invoke-virtual/range {v33 .. v35}, Lgnu/expr/Declaration;->setFlag(J)V

    .line 443
    move-object/from16 v33, v7

    move-object/from16 v34, v28

    invoke-virtual/range {v33 .. v34}, Lgnu/expr/Compilation;->push(Lgnu/expr/Declaration;)V

    goto/16 :goto_3

    .line 383
    .end local v28    # "adecl":Lgnu/expr/Declaration;
    .end local v30    # "fref":Lgnu/expr/ReferenceExp;
    .end local v31    # "sexp":Lgnu/expr/SetExp;
    :cond_12
    move-object/from16 v33, v29

    if-eqz v33, :cond_13

    move-object/from16 v33, v29

    const-wide/16 v34, 0x200

    invoke-virtual/range {v33 .. v35}, Lgnu/expr/Declaration;->getFlag(J)Z

    move-result v33

    if-nez v33, :cond_13

    move-object/from16 v33, v29

    invoke-static/range {v33 .. v33}, Lgnu/expr/Declaration;->followAliases(Lgnu/expr/Declaration;)Lgnu/expr/Declaration;

    move-result-object v33

    move-object/from16 v34, v24

    invoke-static/range {v34 .. v34}, Lgnu/expr/Declaration;->followAliases(Lgnu/expr/Declaration;)Lgnu/expr/Declaration;

    move-result-object v34

    move-object/from16 v0, v33

    move-object/from16 v1, v34

    if-ne v0, v1, :cond_13

    .line 387
    goto/16 :goto_3

    .line 390
    :cond_13
    move-object/from16 v33, v29

    if-eqz v33, :cond_15

    move-object/from16 v33, v29

    const-wide/32 v34, 0x10200

    invoke-virtual/range {v33 .. v35}, Lgnu/expr/Declaration;->getFlag(J)Z

    move-result v33

    if-eqz v33, :cond_15

    .line 393
    move-object/from16 v33, v29

    const/16 v34, 0x0

    const-wide/32 v35, 0x10200

    invoke-virtual/range {v33 .. v36}, Lgnu/expr/Declaration;->setFlag(ZJ)V

    .line 394
    move-object/from16 v33, v29

    move-object/from16 v28, v33

    .line 402
    .restart local v28    # "adecl":Lgnu/expr/Declaration;
    :cond_14
    :goto_8
    move-object/from16 v33, v28

    const/16 v34, 0x1

    invoke-virtual/range {v33 .. v34}, Lgnu/expr/Declaration;->setAlias(Z)V

    .line 403
    move-object/from16 v33, v28

    const/16 v34, 0x1

    invoke-virtual/range {v33 .. v34}, Lgnu/expr/Declaration;->setIndirectBinding(Z)V

    goto/16 :goto_6

    .line 398
    .end local v28    # "adecl":Lgnu/expr/Declaration;
    :cond_15
    move-object/from16 v33, v6

    move-object/from16 v34, v25

    invoke-virtual/range {v33 .. v34}, Lgnu/expr/ScopeExp;->addDeclaration(Ljava/lang/Object;)Lgnu/expr/Declaration;

    move-result-object v33

    move-object/from16 v28, v33

    .line 399
    .restart local v28    # "adecl":Lgnu/expr/Declaration;
    move-object/from16 v33, v29

    if-eqz v33, :cond_14

    .line 400
    move-object/from16 v33, v29

    move-object/from16 v34, v28

    move-object/from16 v35, v7

    invoke-static/range {v33 .. v35}, Lgnu/expr/ScopeExp;->duplicateDeclarationError(Lgnu/expr/Declaration;Lgnu/expr/Declaration;Lgnu/expr/Compilation;)V

    goto :goto_8

    .line 436
    .restart local v30    # "fref":Lgnu/expr/ReferenceExp;
    .restart local v31    # "sexp":Lgnu/expr/SetExp;
    :cond_16
    move-object/from16 v33, v5

    move-object/from16 v34, v31

    invoke-virtual/range {v33 .. v34}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto/16 :goto_7

    .line 448
    .end local v25    # "aname":Lgnu/mapping/Symbol;
    .end local v26    # "isStatic":Z
    .end local v27    # "isImportedInstance":Z
    .end local v28    # "adecl":Lgnu/expr/Declaration;
    .end local v29    # "old":Lgnu/expr/Declaration;
    .end local v30    # "fref":Lgnu/expr/ReferenceExp;
    .end local v31    # "sexp":Lgnu/expr/SetExp;
    :cond_17
    move-object/from16 v33, v23

    invoke-virtual/range {v33 .. v33}, Ljava/util/Vector;->size()I

    move-result v33

    move/from16 v24, v33

    .line 449
    .local v24, "ndecls":I
    const/16 v33, 0x0

    move/from16 v25, v33

    .local v25, "i":I
    :goto_9
    move/from16 v33, v25

    move/from16 v34, v24

    move/from16 v0, v33

    move/from16 v1, v34

    if-ge v0, v1, :cond_19

    .line 451
    move-object/from16 v33, v23

    move/from16 v34, v25

    invoke-virtual/range {v33 .. v34}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v33

    check-cast v33, Lgnu/expr/Declaration;

    move-object/from16 v26, v33

    .line 452
    .local v26, "adecl":Lgnu/expr/Declaration;
    move-object/from16 v33, v23

    move/from16 v34, v25

    const/16 v35, 0x1

    add-int/lit8 v34, v34, 0x1

    invoke-virtual/range {v33 .. v34}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v33

    check-cast v33, Lgnu/expr/Declaration;

    move-object/from16 v27, v33

    .line 453
    .local v27, "fdecl":Lgnu/expr/Declaration;
    move-object/from16 v33, v27

    invoke-virtual/range {v33 .. v33}, Lgnu/expr/Declaration;->getValue()Lgnu/expr/Expression;

    move-result-object v33

    move-object/from16 v28, v33

    .line 454
    .local v28, "fval":Lgnu/expr/Expression;
    move-object/from16 v33, v27

    invoke-virtual/range {v33 .. v33}, Lgnu/expr/Declaration;->isIndirectBinding()Z

    move-result v33

    if-eqz v33, :cond_18

    move-object/from16 v33, v28

    move-object/from16 v0, v33

    instance-of v0, v0, Lgnu/expr/ReferenceExp;

    move/from16 v33, v0

    if-eqz v33, :cond_18

    .line 456
    move-object/from16 v33, v26

    invoke-virtual/range {v33 .. v33}, Lgnu/expr/Declaration;->getValue()Lgnu/expr/Expression;

    move-result-object v33

    check-cast v33, Lgnu/expr/ReferenceExp;

    move-object/from16 v29, v33

    .line 457
    .local v29, "aref":Lgnu/expr/ReferenceExp;
    move-object/from16 v33, v28

    check-cast v33, Lgnu/expr/ReferenceExp;

    invoke-virtual/range {v33 .. v33}, Lgnu/expr/ReferenceExp;->getBinding()Lgnu/expr/Declaration;

    move-result-object v33

    move-object/from16 v30, v33

    .line 458
    .local v30, "xdecl":Lgnu/expr/Declaration;
    move-object/from16 v33, v29

    move-object/from16 v34, v30

    invoke-virtual/range {v33 .. v34}, Lgnu/expr/ReferenceExp;->setBinding(Lgnu/expr/Declaration;)V

    .line 459
    move-object/from16 v33, v30

    invoke-virtual/range {v33 .. v33}, Lgnu/expr/Declaration;->needsContext()Z

    move-result v33

    if-eqz v33, :cond_18

    .line 461
    new-instance v33, Ljava/lang/StringBuilder;

    move-object/from16 v40, v33

    move-object/from16 v33, v40

    move-object/from16 v34, v40

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v34, v30

    move-object/from16 v0, v34

    iget-object v0, v0, Lgnu/expr/Declaration;->field:Lgnu/bytecode/Field;

    move-object/from16 v34, v0

    invoke-virtual/range {v34 .. v34}, Lgnu/bytecode/Field;->getDeclaringClass()Lgnu/bytecode/ClassType;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Lgnu/bytecode/ClassType;->getName()Ljava/lang/String;

    move-result-object v34

    const/16 v35, 0x2e

    const/16 v36, 0x24

    invoke-virtual/range {v34 .. v36}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v34

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    const-string/jumbo v34, "$instance"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    move-object/from16 v31, v33

    .line 464
    .local v31, "iname":Ljava/lang/String;
    move-object/from16 v33, v6

    move-object/from16 v34, v31

    invoke-static/range {v34 .. v34}, Lgnu/mapping/SimpleSymbol;->valueOf(Ljava/lang/String;)Lgnu/mapping/SimpleSymbol;

    move-result-object v34

    invoke-virtual/range {v33 .. v34}, Lgnu/expr/ScopeExp;->lookup(Ljava/lang/Object;)Lgnu/expr/Declaration;

    move-result-object v33

    move-object/from16 v32, v33

    .line 465
    .local v32, "cdecl":Lgnu/expr/Declaration;
    move-object/from16 v33, v32

    const-wide/16 v34, 0x400

    invoke-virtual/range {v33 .. v35}, Lgnu/expr/Declaration;->setFlag(J)V

    .line 466
    move-object/from16 v33, v29

    move-object/from16 v34, v32

    invoke-virtual/range {v33 .. v34}, Lgnu/expr/ReferenceExp;->setContextDecl(Lgnu/expr/Declaration;)V

    .line 449
    .end local v29    # "aref":Lgnu/expr/ReferenceExp;
    .end local v30    # "xdecl":Lgnu/expr/Declaration;
    .end local v31    # "iname":Ljava/lang/String;
    .end local v32    # "cdecl":Lgnu/expr/Declaration;
    :cond_18
    add-int/lit8 v25, v25, 0x2

    goto/16 :goto_9

    .line 471
    .end local v26    # "adecl":Lgnu/expr/Declaration;
    .end local v27    # "fdecl":Lgnu/expr/Declaration;
    .end local v28    # "fval":Lgnu/expr/Expression;
    :cond_19
    move/from16 v33, v14

    if-eqz v33, :cond_1b

    .line 473
    sget-object v33, Lgnu/expr/Compilation;->typeRunnable:Lgnu/bytecode/ClassType;

    const-string/jumbo v34, "run"

    const/16 v35, 0x0

    invoke-virtual/range {v33 .. v35}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object v33

    move-object/from16 v25, v33

    .line 474
    .local v25, "run":Lgnu/bytecode/Method;
    move-object/from16 v33, v15

    if-eqz v33, :cond_1c

    .line 475
    new-instance v33, Lgnu/expr/ReferenceExp;

    move-object/from16 v40, v33

    move-object/from16 v33, v40

    move-object/from16 v34, v40

    move-object/from16 v35, v15

    invoke-direct/range {v34 .. v35}, Lgnu/expr/ReferenceExp;-><init>(Lgnu/expr/Declaration;)V

    move-object/from16 v18, v33

    .line 485
    :cond_1a
    :goto_a
    new-instance v33, Lgnu/expr/ApplyExp;

    move-object/from16 v40, v33

    move-object/from16 v33, v40

    move-object/from16 v34, v40

    move-object/from16 v35, v25

    const/16 v36, 0x1

    move/from16 v0, v36

    new-array v0, v0, [Lgnu/expr/Expression;

    move-object/from16 v36, v0

    move-object/from16 v40, v36

    move-object/from16 v36, v40

    move-object/from16 v37, v40

    const/16 v38, 0x0

    move-object/from16 v39, v18

    aput-object v39, v37, v38

    invoke-direct/range {v34 .. v36}, Lgnu/expr/ApplyExp;-><init>(Lgnu/bytecode/Method;[Lgnu/expr/Expression;)V

    move-object/from16 v18, v33

    .line 486
    move-object/from16 v33, v18

    move-object/from16 v34, v7

    invoke-virtual/range {v33 .. v34}, Lgnu/expr/Expression;->setLine(Lgnu/expr/Compilation;)V

    .line 487
    move-object/from16 v33, v5

    move-object/from16 v34, v18

    invoke-virtual/range {v33 .. v34}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 490
    .end local v25    # "run":Lgnu/bytecode/Method;
    :cond_1b
    const/16 v33, 0x1

    move/from16 v2, v33

    goto/16 :goto_0

    .line 478
    .restart local v25    # "run":Lgnu/bytecode/Method;
    :cond_1c
    move-object/from16 v33, v19

    if-eqz v33, :cond_1a

    .line 480
    const/16 v33, 0x2

    move/from16 v0, v33

    new-array v0, v0, [Lgnu/expr/Expression;

    move-object/from16 v33, v0

    move-object/from16 v40, v33

    move-object/from16 v33, v40

    move-object/from16 v34, v40

    const/16 v35, 0x0

    new-instance v36, Lgnu/expr/QuoteExp;

    move-object/from16 v40, v36

    move-object/from16 v36, v40

    move-object/from16 v37, v40

    move-object/from16 v38, v11

    invoke-direct/range {v37 .. v38}, Lgnu/expr/QuoteExp;-><init>(Ljava/lang/Object;)V

    aput-object v36, v34, v35

    move-object/from16 v40, v33

    move-object/from16 v33, v40

    move-object/from16 v34, v40

    const/16 v35, 0x1

    new-instance v36, Lgnu/expr/QuoteExp;

    move-object/from16 v40, v36

    move-object/from16 v36, v40

    move-object/from16 v37, v40

    const-string/jumbo v38, "$instance"

    invoke-direct/range {v37 .. v38}, Lgnu/expr/QuoteExp;-><init>(Ljava/lang/Object;)V

    aput-object v36, v34, v35

    move-object/from16 v17, v33

    .line 482
    new-instance v33, Lgnu/expr/ApplyExp;

    move-object/from16 v40, v33

    move-object/from16 v33, v40

    move-object/from16 v34, v40

    sget-object v35, Lgnu/kawa/reflect/SlotGet;->staticField:Lgnu/kawa/reflect/SlotGet;

    move-object/from16 v36, v17

    invoke-direct/range {v34 .. v36}, Lgnu/expr/ApplyExp;-><init>(Lgnu/mapping/Procedure;[Lgnu/expr/Expression;)V

    move-object/from16 v18, v33

    goto/16 :goto_a
.end method

.method public static lookupModuleFromSourcePath(Ljava/lang/String;Lgnu/expr/ScopeExp;)Lgnu/expr/ModuleInfo;
    .locals 6

    .prologue
    .line 214
    move-object v0, p0

    .local v0, "sourceName":Ljava/lang/String;
    move-object v1, p1

    .local v1, "defs":Lgnu/expr/ScopeExp;
    invoke-static {}, Lgnu/expr/ModuleManager;->getInstance()Lgnu/expr/ModuleManager;

    move-result-object v4

    move-object v2, v4

    .line 215
    .local v2, "manager":Lgnu/expr/ModuleManager;
    move-object v4, v1

    invoke-virtual {v4}, Lgnu/expr/ScopeExp;->getFileName()Ljava/lang/String;

    move-result-object v4

    move-object v3, v4

    .line 216
    .local v3, "baseName":Ljava/lang/String;
    move-object v4, v3

    if-eqz v4, :cond_0

    .line 217
    move-object v4, v3

    invoke-static {v4}, Lgnu/text/Path;->valueOf(Ljava/lang/Object;)Lgnu/text/Path;

    move-result-object v4

    move-object v5, v0

    invoke-virtual {v4, v5}, Lgnu/text/Path;->resolve(Ljava/lang/String;)Lgnu/text/Path;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v0, v4

    .line 218
    :cond_0
    move-object v4, v2

    move-object v5, v0

    invoke-virtual {v4, v5}, Lgnu/expr/ModuleManager;->findWithSourcePath(Ljava/lang/String;)Lgnu/expr/ModuleInfo;

    move-result-object v4

    move-object v0, v4

    .end local v0    # "sourceName":Ljava/lang/String;
    return-object v0
.end method

.method static map(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 63
    move-object v0, p0

    .local v0, "featureName":Ljava/lang/String;
    move-object v1, p1

    .local v1, "className":Ljava/lang/String;
    sget-object v2, Lkawa/standard/require;->featureMap:Ljava/util/Hashtable;

    move-object v3, v0

    move-object v4, v1

    invoke-virtual {v2, v3, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 64
    return-void
.end method

.method public static mapFeature(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 108
    move-object v0, p0

    .local v0, "featureName":Ljava/lang/String;
    sget-object v1, Lkawa/standard/require;->featureMap:Ljava/util/Hashtable;

    move-object v2, v0

    invoke-virtual {v1, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    move-object v0, v1

    .end local v0    # "featureName":Ljava/lang/String;
    return-object v0
.end method


# virtual methods
.method public rewriteForm(Lgnu/lists/Pair;Lkawa/lang/Translator;)Lgnu/expr/Expression;
    .locals 4

    .prologue
    .line 495
    move-object v0, p0

    .local v0, "this":Lkawa/standard/require;
    move-object v1, p1

    .local v1, "form":Lgnu/lists/Pair;
    move-object v2, p2

    .local v2, "tr":Lkawa/lang/Translator;
    const/4 v3, 0x0

    move-object v0, v3

    .end local v0    # "this":Lkawa/standard/require;
    return-object v0
.end method

.method public scanForDefinitions(Lgnu/lists/Pair;Ljava/util/Vector;Lgnu/expr/ScopeExp;Lkawa/lang/Translator;)Z
    .locals 18

    .prologue
    .line 120
    move-object/from16 v0, p0

    .local v0, "this":Lkawa/standard/require;
    move-object/from16 v1, p1

    .local v1, "st":Lgnu/lists/Pair;
    move-object/from16 v2, p2

    .local v2, "forms":Ljava/util/Vector;
    move-object/from16 v3, p3

    .local v3, "defs":Lgnu/expr/ScopeExp;
    move-object/from16 v4, p4

    .local v4, "tr":Lkawa/lang/Translator;
    move-object v11, v4

    invoke-virtual {v11}, Lkawa/lang/Translator;->getState()I

    move-result v11

    const/4 v12, 0x1

    if-ne v11, v12, :cond_0

    .line 122
    move-object v11, v4

    const/4 v12, 0x2

    invoke-virtual {v11, v12}, Lkawa/lang/Translator;->setState(I)V

    .line 123
    move-object v11, v4

    move-object v12, v1

    iput-object v12, v11, Lkawa/lang/Translator;->pendingForm:Ljava/lang/Object;

    .line 126
    const/4 v11, 0x1

    move v0, v11

    .line 209
    .end local v0    # "this":Lkawa/standard/require;
    :goto_0
    return v0

    .line 128
    .restart local v0    # "this":Lkawa/standard/require;
    :cond_0
    move-object v11, v1

    invoke-virtual {v11}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lgnu/lists/Pair;

    move-object v5, v11

    .line 129
    .local v5, "args":Lgnu/lists/Pair;
    move-object v11, v5

    invoke-virtual {v11}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v11

    move-object v6, v11

    .line 130
    .local v6, "name":Ljava/lang/Object;
    const/4 v11, 0x0

    move-object v7, v11

    .line 132
    .local v7, "type":Lgnu/bytecode/Type;
    move-object v11, v6

    instance-of v11, v11, Lgnu/lists/Pair;

    if-eqz v11, :cond_5

    move-object v11, v4

    move-object v12, v6

    check-cast v12, Lgnu/lists/Pair;

    move-object/from16 v17, v12

    move-object/from16 v12, v17

    move-object/from16 v13, v17

    move-object v8, v13

    .local v8, "p":Lgnu/lists/Pair;
    invoke-virtual {v12}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v12

    const-string/jumbo v13, "quote"

    invoke-virtual {v11, v12, v13}, Lkawa/lang/Translator;->matches(Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_5

    .line 135
    move-object v11, v8

    invoke-virtual {v11}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v11

    move-object v6, v11

    .line 136
    move-object v11, v6

    instance-of v11, v11, Lgnu/lists/Pair;

    if-eqz v11, :cond_1

    move-object v11, v6

    check-cast v11, Lgnu/lists/Pair;

    move-object/from16 v17, v11

    move-object/from16 v11, v17

    move-object/from16 v12, v17

    move-object v8, v12

    invoke-virtual {v11}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v11

    sget-object v12, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    if-ne v11, v12, :cond_1

    move-object v11, v8

    invoke-virtual {v11}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v11

    instance-of v11, v11, Lgnu/mapping/Symbol;

    if-nez v11, :cond_2

    .line 140
    :cond_1
    move-object v11, v4

    const/16 v12, 0x65

    const-string/jumbo v13, "invalid quoted symbol for \'require\'"

    invoke-virtual {v11, v12, v13}, Lkawa/lang/Translator;->error(CLjava/lang/String;)V

    .line 141
    const/4 v11, 0x0

    move v0, v11

    goto :goto_0

    .line 143
    :cond_2
    move-object v11, v8

    invoke-virtual {v11}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lkawa/standard/require;->mapFeature(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    move-object v6, v11

    .line 144
    .local v6, "name":Ljava/lang/String;
    move-object v11, v6

    if-nez v11, :cond_3

    .line 146
    move-object v11, v4

    const/16 v12, 0x65

    new-instance v13, Ljava/lang/StringBuilder;

    move-object/from16 v17, v13

    move-object/from16 v13, v17

    move-object/from16 v14, v17

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "unknown feature name \'"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object v14, v8

    invoke-virtual {v14}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, "\' for \'require\'"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v12, v13}, Lkawa/lang/Translator;->error(CLjava/lang/String;)V

    .line 147
    const/4 v11, 0x0

    move v0, v11

    goto/16 :goto_0

    .line 149
    :cond_3
    move-object v11, v6

    check-cast v11, Ljava/lang/String;

    invoke-static {v11}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v11

    move-object v7, v11

    .line 192
    .end local v6    # "name":Ljava/lang/String;
    .end local v8    # "p":Lgnu/lists/Pair;
    :cond_4
    move-object v11, v7

    instance-of v11, v11, Lgnu/bytecode/ClassType;

    if-nez v11, :cond_9

    .line 194
    move-object v11, v4

    const/16 v12, 0x65

    const-string/jumbo v13, "invalid specifier for \'require\'"

    invoke-virtual {v11, v12, v13}, Lkawa/lang/Translator;->error(CLjava/lang/String;)V

    .line 195
    const/4 v11, 0x0

    move v0, v11

    goto/16 :goto_0

    .line 151
    .local v6, "name":Ljava/lang/Object;
    :cond_5
    move-object v11, v6

    instance-of v11, v11, Ljava/lang/CharSequence;

    if-eqz v11, :cond_7

    .line 158
    move-object v11, v6

    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    move-object v9, v11

    .line 159
    .local v9, "sourceName":Ljava/lang/String;
    move-object v11, v9

    move-object v12, v3

    invoke-static {v11, v12}, Lkawa/standard/require;->lookupModuleFromSourcePath(Ljava/lang/String;Lgnu/expr/ScopeExp;)Lgnu/expr/ModuleInfo;

    move-result-object v11

    move-object v10, v11

    .line 160
    .local v10, "info":Lgnu/expr/ModuleInfo;
    move-object v11, v10

    if-nez v11, :cond_6

    .line 162
    move-object v11, v4

    const/16 v12, 0x65

    new-instance v13, Ljava/lang/StringBuilder;

    move-object/from16 v17, v13

    move-object/from16 v13, v17

    move-object/from16 v14, v17

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "malformed URL: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object v14, v9

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v12, v13}, Lkawa/lang/Translator;->error(CLjava/lang/String;)V

    .line 163
    const/4 v11, 0x0

    move v0, v11

    goto/16 :goto_0

    .line 165
    :cond_6
    const/4 v11, 0x0

    move-object v12, v10

    const/4 v13, 0x0

    move-object v14, v2

    move-object v15, v3

    move-object/from16 v16, v4

    invoke-static/range {v11 .. v16}, Lkawa/standard/require;->importDefinitions(Ljava/lang/String;Lgnu/expr/ModuleInfo;Lgnu/mapping/Procedure;Ljava/util/Vector;Lgnu/expr/ScopeExp;Lgnu/expr/Compilation;)Z

    move-result v11

    move v0, v11

    goto/16 :goto_0

    .line 167
    .end local v9    # "sourceName":Ljava/lang/String;
    .end local v10    # "info":Lgnu/expr/ModuleInfo;
    :cond_7
    move-object v11, v6

    instance-of v11, v11, Lgnu/mapping/Symbol;

    if-eqz v11, :cond_4

    move-object v11, v4

    move-object v12, v6

    invoke-virtual {v11, v12}, Lkawa/lang/Translator;->selfEvaluatingSymbol(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_4

    .line 169
    move-object v11, v4

    invoke-virtual {v11}, Lkawa/lang/Translator;->getLanguage()Lgnu/expr/Language;

    move-result-object v11

    move-object v12, v4

    move-object v13, v6

    const/4 v14, 0x0

    invoke-virtual {v12, v13, v14}, Lkawa/lang/Translator;->rewrite(Ljava/lang/Object;Z)Lgnu/expr/Expression;

    move-result-object v12

    invoke-virtual {v11, v12}, Lgnu/expr/Language;->getTypeFor(Lgnu/expr/Expression;)Lgnu/bytecode/Type;

    move-result-object v11

    move-object v7, v11

    .line 170
    move-object v11, v7

    instance-of v11, v11, Lgnu/bytecode/ClassType;

    if-eqz v11, :cond_4

    move-object v11, v5

    invoke-virtual {v11}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v11

    instance-of v11, v11, Lgnu/lists/Pair;

    if-eqz v11, :cond_4

    .line 172
    move-object v11, v5

    invoke-virtual {v11}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lgnu/lists/Pair;

    invoke-virtual {v11}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v11

    move-object v6, v11

    .line 173
    move-object v11, v6

    instance-of v11, v11, Ljava/lang/CharSequence;

    if-eqz v11, :cond_4

    .line 180
    move-object v11, v6

    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    move-object v9, v11

    .line 181
    .restart local v9    # "sourceName":Ljava/lang/String;
    move-object v11, v9

    move-object v12, v3

    invoke-static {v11, v12}, Lkawa/standard/require;->lookupModuleFromSourcePath(Ljava/lang/String;Lgnu/expr/ScopeExp;)Lgnu/expr/ModuleInfo;

    move-result-object v11

    move-object v10, v11

    .line 182
    .restart local v10    # "info":Lgnu/expr/ModuleInfo;
    move-object v11, v10

    if-nez v11, :cond_8

    .line 184
    move-object v11, v4

    const/16 v12, 0x65

    new-instance v13, Ljava/lang/StringBuilder;

    move-object/from16 v17, v13

    move-object/from16 v13, v17

    move-object/from16 v14, v17

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "malformed URL: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object v14, v9

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v12, v13}, Lkawa/lang/Translator;->error(CLjava/lang/String;)V

    .line 185
    const/4 v11, 0x0

    move v0, v11

    goto/16 :goto_0

    .line 187
    :cond_8
    move-object v11, v7

    invoke-virtual {v11}, Lgnu/bytecode/Type;->getName()Ljava/lang/String;

    move-result-object v11

    move-object v12, v10

    const/4 v13, 0x0

    move-object v14, v2

    move-object v15, v3

    move-object/from16 v16, v4

    invoke-static/range {v11 .. v16}, Lkawa/standard/require;->importDefinitions(Ljava/lang/String;Lgnu/expr/ModuleInfo;Lgnu/mapping/Procedure;Ljava/util/Vector;Lgnu/expr/ScopeExp;Lgnu/expr/Compilation;)Z

    move-result v11

    move v0, v11

    goto/16 :goto_0

    .line 200
    .end local v6    # "name":Ljava/lang/Object;
    .end local v9    # "sourceName":Ljava/lang/String;
    .end local v10    # "info":Lgnu/expr/ModuleInfo;
    :cond_9
    move-object v11, v7

    :try_start_0
    check-cast v11, Lgnu/bytecode/ClassType;

    invoke-static {v11}, Lgnu/expr/ModuleInfo;->find(Lgnu/bytecode/ClassType;)Lgnu/expr/ModuleInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v11

    move-object v9, v11

    .line 206
    .line 207
    .local v9, "minfo":Lgnu/expr/ModuleInfo;
    const/4 v11, 0x0

    move-object v12, v9

    const/4 v13, 0x0

    move-object v14, v2

    move-object v15, v3

    move-object/from16 v16, v4

    invoke-static/range {v11 .. v16}, Lkawa/standard/require;->importDefinitions(Ljava/lang/String;Lgnu/expr/ModuleInfo;Lgnu/mapping/Procedure;Ljava/util/Vector;Lgnu/expr/ScopeExp;Lgnu/expr/Compilation;)Z

    move-result v11

    .line 209
    const/4 v11, 0x1

    move v0, v11

    goto/16 :goto_0

    .line 202
    .end local v9    # "minfo":Lgnu/expr/ModuleInfo;
    :catch_0
    move-exception v11

    move-object v10, v11

    .line 204
    .local v10, "ex":Ljava/lang/Exception;
    move-object v11, v4

    const/16 v12, 0x65

    new-instance v13, Ljava/lang/StringBuilder;

    move-object/from16 v17, v13

    move-object/from16 v13, v17

    move-object/from16 v14, v17

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "unknown class "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object v14, v7

    invoke-virtual {v14}, Lgnu/bytecode/Type;->getName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v12, v13}, Lkawa/lang/Translator;->error(CLjava/lang/String;)V

    .line 205
    const/4 v11, 0x0

    move v0, v11

    goto/16 :goto_0
.end method
