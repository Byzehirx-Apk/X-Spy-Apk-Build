.class public Lkawa/repl;
.super Lgnu/mapping/Procedure0or1;
.source "repl.java"


# static fields
.field public static compilationTopname:Ljava/lang/String;

.field static defaultParseOptions:I

.field public static homeDirectory:Ljava/lang/String;

.field public static noConsole:Z

.field static previousLanguage:Lgnu/expr/Language;

.field static shutdownRegistered:Z


# instance fields
.field language:Lgnu/expr/Language;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    const/4 v0, 0x0

    sput-object v0, Lkawa/repl;->compilationTopname:Ljava/lang/String;

    .line 23
    const/16 v0, 0x48

    sput v0, Lkawa/repl;->defaultParseOptions:I

    .line 176
    sget-object v0, Lgnu/text/WriterManager;->instance:Lgnu/text/WriterManager;

    invoke-virtual {v0}, Lgnu/text/WriterManager;->registerShutdownHook()Z

    move-result v0

    sput-boolean v0, Lkawa/repl;->shutdownRegistered:Z

    return-void
.end method

.method public constructor <init>(Lgnu/expr/Language;)V
    .locals 4

    .prologue
    .line 26
    move-object v0, p0

    .local v0, "this":Lkawa/repl;
    move-object v1, p1

    .local v1, "language":Lgnu/expr/Language;
    move-object v2, v0

    invoke-direct {v2}, Lgnu/mapping/Procedure0or1;-><init>()V

    .line 27
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lkawa/repl;->language:Lgnu/expr/Language;

    .line 28
    return-void
.end method

.method static bad_option(Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 44
    move-object v0, p0

    .local v0, "str":Ljava/lang/String;
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "kawa: bad option \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 45
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-static {v1}, Lkawa/repl;->printOptions(Ljava/io/PrintStream;)V

    .line 46
    const/4 v1, -0x1

    invoke-static {v1}, Ljava/lang/System;->exit(I)V

    .line 47
    return-void
.end method

.method static checkInitFile()V
    .locals 9

    .prologue
    .line 125
    sget-object v4, Lkawa/repl;->homeDirectory:Ljava/lang/String;

    if-nez v4, :cond_0

    .line 127
    const/4 v4, 0x0

    move-object v0, v4

    .line 128
    .local v0, "initFile":Ljava/io/File;
    const-string/jumbo v4, "user.home"

    invoke-static {v4}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lkawa/repl;->homeDirectory:Ljava/lang/String;

    .line 130
    sget-object v4, Lkawa/repl;->homeDirectory:Ljava/lang/String;

    if-eqz v4, :cond_2

    .line 132
    new-instance v4, Lgnu/lists/FString;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    sget-object v6, Lkawa/repl;->homeDirectory:Ljava/lang/String;

    invoke-direct {v5, v6}, Lgnu/lists/FString;-><init>(Ljava/lang/String;)V

    move-object v1, v4

    .line 133
    .local v1, "scmHomeDirectory":Lgnu/lists/FString;
    const-string/jumbo v4, "file.separator"

    invoke-static {v4}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object v2, v4

    .line 134
    .local v2, "file_separator":Ljava/lang/String;
    const-string/jumbo v4, "/"

    move-object v5, v2

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const-string/jumbo v4, ".kawarc.scm"

    :goto_0
    move-object v3, v4

    .line 137
    .local v3, "kawarc_name":Ljava/lang/String;
    new-instance v4, Ljava/io/File;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    sget-object v6, Lkawa/repl;->homeDirectory:Ljava/lang/String;

    move-object v7, v3

    invoke-direct {v5, v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v4

    .line 141
    .end local v1    # "scmHomeDirectory":Lgnu/lists/FString;
    .end local v2    # "file_separator":Ljava/lang/String;
    .end local v3    # "kawarc_name":Ljava/lang/String;
    :goto_1
    invoke-static {}, Lgnu/mapping/Environment;->getCurrent()Lgnu/mapping/Environment;

    move-result-object v4

    const-string/jumbo v5, "home-directory"

    move-object v6, v1

    invoke-virtual {v4, v5, v6}, Lgnu/mapping/Environment;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 142
    move-object v4, v0

    if-eqz v4, :cond_0

    move-object v4, v0

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 143
    move-object v4, v0

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Lkawa/Shell;->runFileOrClass(Ljava/lang/String;ZI)Z

    move-result v4

    if-nez v4, :cond_0

    .line 144
    const/4 v4, -0x1

    invoke-static {v4}, Ljava/lang/System;->exit(I)V

    .line 146
    :cond_0
    return-void

    .line 134
    .restart local v1    # "scmHomeDirectory":Lgnu/lists/FString;
    .restart local v2    # "file_separator":Ljava/lang/String;
    :cond_1
    const-string/jumbo v4, "kawarc.scm"

    goto :goto_0

    .line 140
    .end local v1    # "scmHomeDirectory":Lgnu/lists/FString;
    .end local v2    # "file_separator":Ljava/lang/String;
    :cond_2
    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    move-object v1, v4

    .local v1, "scmHomeDirectory":Ljava/lang/Boolean;
    goto :goto_1
.end method

.method public static compileFiles([Ljava/lang/String;II)V
    .locals 22

    .prologue
    .line 718
    move-object/from16 v2, p0

    .local v2, "args":[Ljava/lang/String;
    move/from16 v3, p1

    .local v3, "iArg":I
    move/from16 v4, p2

    .local v4, "maxArg":I
    invoke-static {}, Lgnu/expr/ModuleManager;->getInstance()Lgnu/expr/ModuleManager;

    move-result-object v17

    move-object/from16 v5, v17

    .line 719
    .local v5, "manager":Lgnu/expr/ModuleManager;
    move/from16 v17, v4

    move/from16 v18, v3

    sub-int v17, v17, v18

    move/from16 v0, v17

    new-array v0, v0, [Lgnu/expr/Compilation;

    move-object/from16 v17, v0

    move-object/from16 v6, v17

    .line 720
    .local v6, "comps":[Lgnu/expr/Compilation;
    move/from16 v17, v4

    move/from16 v18, v3

    sub-int v17, v17, v18

    move/from16 v0, v17

    new-array v0, v0, [Lgnu/expr/ModuleInfo;

    move-object/from16 v17, v0

    move-object/from16 v7, v17

    .line 721
    .local v7, "infos":[Lgnu/expr/ModuleInfo;
    new-instance v17, Lgnu/text/SourceMessages;

    move-object/from16 v21, v17

    move-object/from16 v17, v21

    move-object/from16 v18, v21

    invoke-direct/range {v18 .. v18}, Lgnu/text/SourceMessages;-><init>()V

    move-object/from16 v8, v17

    .line 722
    .local v8, "messages":Lgnu/text/SourceMessages;
    move/from16 v17, v3

    move/from16 v9, v17

    .local v9, "i":I
    :goto_0
    move/from16 v17, v9

    move/from16 v18, v4

    move/from16 v0, v17

    move/from16 v1, v18

    if-ge v0, v1, :cond_3

    .line 724
    move-object/from16 v17, v2

    move/from16 v18, v9

    aget-object v17, v17, v18

    move-object/from16 v10, v17

    .line 725
    .local v10, "arg":Ljava/lang/String;
    move-object/from16 v17, v10

    invoke-static/range {v17 .. v17}, Lkawa/repl;->getLanguageFromFilenameExtension(Ljava/lang/String;)V

    .line 726
    invoke-static {}, Lgnu/expr/Language;->getDefaultLanguage()Lgnu/expr/Language;

    move-result-object v17

    move-object/from16 v11, v17

    .line 727
    .local v11, "language":Lgnu/expr/Language;
    const/16 v17, 0x0

    move-object/from16 v12, v17

    .line 733
    .local v12, "comp":Lgnu/expr/Compilation;
    move-object/from16 v17, v10

    :try_start_0
    invoke-static/range {v17 .. v17}, Lgnu/mapping/InPort;->openFile(Ljava/lang/Object;)Lgnu/mapping/InPort;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v17

    move-object/from16 v13, v17

    .line 740
    .line 742
    .local v13, "fstream":Lgnu/mapping/InPort;
    move-object/from16 v17, v11

    move-object/from16 v18, v13

    move-object/from16 v19, v8

    :try_start_1
    sget v20, Lkawa/repl;->defaultParseOptions:I

    invoke-virtual/range {v17 .. v20}, Lgnu/expr/Language;->parse(Lgnu/mapping/InPort;Lgnu/text/SourceMessages;I)Lgnu/expr/Compilation;

    move-result-object v17

    move-object/from16 v12, v17

    .line 746
    sget-object v17, Lkawa/repl;->compilationTopname:Ljava/lang/String;

    if-eqz v17, :cond_0

    .line 748
    sget-object v17, Lkawa/repl;->compilationTopname:Ljava/lang/String;

    invoke-static/range {v17 .. v17}, Lgnu/expr/Compilation;->mangleNameIfNeeded(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v14, v17

    .line 750
    .local v14, "cname":Ljava/lang/String;
    new-instance v17, Lgnu/bytecode/ClassType;

    move-object/from16 v21, v17

    move-object/from16 v17, v21

    move-object/from16 v18, v21

    move-object/from16 v19, v14

    invoke-direct/range {v18 .. v19}, Lgnu/bytecode/ClassType;-><init>(Ljava/lang/String;)V

    move-object/from16 v15, v17

    .line 751
    .local v15, "ctype":Lgnu/bytecode/ClassType;
    move-object/from16 v17, v12

    invoke-virtual/range {v17 .. v17}, Lgnu/expr/Compilation;->getModule()Lgnu/expr/ModuleExp;

    move-result-object v17

    move-object/from16 v16, v17

    .line 752
    .local v16, "mexp":Lgnu/expr/ModuleExp;
    move-object/from16 v17, v16

    move-object/from16 v18, v15

    invoke-virtual/range {v17 .. v18}, Lgnu/expr/ModuleExp;->setType(Lgnu/bytecode/ClassType;)V

    .line 753
    move-object/from16 v17, v16

    sget-object v18, Lkawa/repl;->compilationTopname:Ljava/lang/String;

    invoke-virtual/range {v17 .. v18}, Lgnu/expr/ModuleExp;->setName(Ljava/lang/String;)V

    .line 754
    move-object/from16 v17, v12

    move-object/from16 v18, v15

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    iput-object v0, v1, Lgnu/expr/Compilation;->mainClass:Lgnu/bytecode/ClassType;

    .line 757
    .end local v14    # "cname":Ljava/lang/String;
    .end local v15    # "ctype":Lgnu/bytecode/ClassType;
    .end local v16    # "mexp":Lgnu/expr/ModuleExp;
    :cond_0
    move-object/from16 v17, v7

    move/from16 v18, v9

    move/from16 v19, v3

    sub-int v18, v18, v19

    move-object/from16 v19, v5

    move-object/from16 v20, v12

    invoke-virtual/range {v19 .. v20}, Lgnu/expr/ModuleManager;->find(Lgnu/expr/Compilation;)Lgnu/expr/ModuleInfo;

    move-result-object v19

    aput-object v19, v17, v18

    .line 758
    move-object/from16 v17, v6

    move/from16 v18, v9

    move/from16 v19, v3

    sub-int v18, v18, v19

    move-object/from16 v19, v12

    aput-object v19, v17, v18
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 766
    .line 767
    .end local v13    # "fstream":Lgnu/mapping/InPort;
    :cond_1
    :goto_1
    move-object/from16 v17, v8

    invoke-virtual/range {v17 .. v17}, Lgnu/text/SourceMessages;->seenErrorsOrWarnings()Z

    move-result v17

    if-eqz v17, :cond_2

    .line 769
    sget-object v17, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v18, Ljava/lang/StringBuilder;

    move-object/from16 v21, v18

    move-object/from16 v18, v21

    move-object/from16 v19, v21

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "(compiling "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v19, v10

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const/16 v19, 0x29

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 770
    move-object/from16 v17, v8

    sget-object v18, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const/16 v19, 0x14

    invoke-virtual/range {v17 .. v19}, Lgnu/text/SourceMessages;->checkErrors(Ljava/io/PrintStream;I)Z

    move-result v17

    if-eqz v17, :cond_2

    .line 771
    const/16 v17, 0x1

    invoke-static/range {v17 .. v17}, Ljava/lang/System;->exit(I)V

    .line 722
    :cond_2
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_0

    .line 735
    :catch_0
    move-exception v17

    move-object/from16 v14, v17

    .line 737
    .local v14, "ex":Ljava/io/FileNotFoundException;
    :try_start_2
    sget-object v17, Ljava/lang/System;->err:Ljava/io/PrintStream;

    move-object/from16 v18, v14

    invoke-virtual/range {v17 .. v18}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    .line 738
    const/16 v17, -0x1

    invoke-static/range {v17 .. v17}, Ljava/lang/System;->exit(I)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    .line 739
    .line 775
    .end local v10    # "arg":Ljava/lang/String;
    .end local v11    # "language":Lgnu/expr/Language;
    .end local v12    # "comp":Lgnu/expr/Compilation;
    .end local v14    # "ex":Ljava/io/FileNotFoundException;
    :cond_3
    move/from16 v17, v3

    move/from16 v9, v17

    :goto_2
    move/from16 v17, v9

    move/from16 v18, v4

    move/from16 v0, v17

    move/from16 v1, v18

    if-ge v0, v1, :cond_7

    .line 777
    move-object/from16 v17, v2

    move/from16 v18, v9

    aget-object v17, v17, v18

    move-object/from16 v10, v17

    .line 778
    .restart local v10    # "arg":Ljava/lang/String;
    move-object/from16 v17, v6

    move/from16 v18, v9

    move/from16 v19, v3

    sub-int v18, v18, v19

    aget-object v17, v17, v18

    move-object/from16 v11, v17

    .line 781
    .local v11, "comp":Lgnu/expr/Compilation;
    :try_start_3
    sget-object v17, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v18, Ljava/lang/StringBuilder;

    move-object/from16 v21, v18

    move-object/from16 v18, v21

    move-object/from16 v19, v21

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "(compiling "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v19, v10

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string/jumbo v19, " to "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v19, v11

    move-object/from16 v0, v19

    iget-object v0, v0, Lgnu/expr/Compilation;->mainClass:Lgnu/bytecode/ClassType;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lgnu/bytecode/ClassType;->getName()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const/16 v19, 0x29

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 783
    move-object/from16 v17, v7

    move/from16 v18, v9

    move/from16 v19, v3

    sub-int v18, v18, v19

    aget-object v17, v17, v18

    const/16 v18, 0xe

    invoke-virtual/range {v17 .. v18}, Lgnu/expr/ModuleInfo;->loadByStages(I)V

    .line 784
    move-object/from16 v17, v8

    invoke-virtual/range {v17 .. v17}, Lgnu/text/SourceMessages;->seenErrors()Z

    move-result v17

    move/from16 v12, v17

    .line 785
    .local v12, "sawErrors":Z
    move-object/from16 v17, v8

    sget-object v18, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const/16 v19, 0x32

    invoke-virtual/range {v17 .. v19}, Lgnu/text/SourceMessages;->checkErrors(Ljava/io/PrintStream;I)Z

    move-result v17

    .line 786
    move/from16 v17, v12

    if-eqz v17, :cond_4

    .line 787
    const/16 v17, -0x1

    invoke-static/range {v17 .. v17}, Ljava/lang/System;->exit(I)V

    .line 788
    :cond_4
    move-object/from16 v17, v6

    move/from16 v18, v9

    move/from16 v19, v3

    sub-int v18, v18, v19

    move-object/from16 v19, v11

    aput-object v19, v17, v18

    .line 789
    move-object/from16 v17, v8

    invoke-virtual/range {v17 .. v17}, Lgnu/text/SourceMessages;->seenErrors()Z

    move-result v17

    move/from16 v12, v17

    .line 790
    move-object/from16 v17, v8

    sget-object v18, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const/16 v19, 0x32

    invoke-virtual/range {v17 .. v19}, Lgnu/text/SourceMessages;->checkErrors(Ljava/io/PrintStream;I)Z

    move-result v17

    .line 791
    move/from16 v17, v12

    if-eqz v17, :cond_5

    .line 792
    const/16 v17, -0x1

    invoke-static/range {v17 .. v17}, Ljava/lang/System;->exit(I)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_2

    .line 797
    .line 775
    .end local v12    # "sawErrors":Z
    :cond_5
    :goto_3
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_2

    .line 761
    .local v11, "language":Lgnu/expr/Language;
    .local v12, "comp":Lgnu/expr/Compilation;
    :catch_1
    move-exception v17

    move-object/from16 v13, v17

    .line 763
    .local v13, "ex":Ljava/lang/Throwable;
    move-object/from16 v17, v13

    move-object/from16 v0, v17

    instance-of v0, v0, Lgnu/text/SyntaxException;

    move/from16 v17, v0

    if-eqz v17, :cond_6

    move-object/from16 v17, v13

    check-cast v17, Lgnu/text/SyntaxException;

    invoke-virtual/range {v17 .. v17}, Lgnu/text/SyntaxException;->getMessages()Lgnu/text/SourceMessages;

    move-result-object v17

    move-object/from16 v18, v8

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    if-eq v0, v1, :cond_1

    .line 765
    :cond_6
    move-object/from16 v17, v13

    move-object/from16 v18, v12

    move-object/from16 v19, v10

    invoke-static/range {v17 .. v19}, Lkawa/repl;->internalError(Ljava/lang/Throwable;Lgnu/expr/Compilation;Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 794
    .end local v12    # "comp":Lgnu/expr/Compilation;
    .end local v13    # "ex":Ljava/lang/Throwable;
    .local v11, "comp":Lgnu/expr/Compilation;
    :catch_2
    move-exception v17

    move-object/from16 v12, v17

    .line 796
    .local v12, "ex":Ljava/lang/Throwable;
    move-object/from16 v17, v12

    move-object/from16 v18, v11

    move-object/from16 v19, v10

    invoke-static/range {v17 .. v19}, Lkawa/repl;->internalError(Ljava/lang/Throwable;Lgnu/expr/Compilation;Ljava/lang/Object;)V

    goto :goto_3

    .line 799
    .end local v10    # "arg":Ljava/lang/String;
    .end local v11    # "comp":Lgnu/expr/Compilation;
    .end local v12    # "ex":Ljava/lang/Throwable;
    :cond_7
    return-void
.end method

.method public static getLanguage()V
    .locals 1

    .prologue
    .line 169
    sget-object v0, Lkawa/repl;->previousLanguage:Lgnu/expr/Language;

    if-nez v0, :cond_0

    .line 171
    const/4 v0, 0x0

    invoke-static {v0}, Lgnu/expr/Language;->getInstance(Ljava/lang/String;)Lgnu/expr/Language;

    move-result-object v0

    sput-object v0, Lkawa/repl;->previousLanguage:Lgnu/expr/Language;

    .line 172
    sget-object v0, Lkawa/repl;->previousLanguage:Lgnu/expr/Language;

    invoke-static {v0}, Lgnu/expr/Language;->setDefaults(Lgnu/expr/Language;)V

    .line 174
    :cond_0
    return-void
.end method

.method public static getLanguageFromFilenameExtension(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 155
    move-object v0, p0

    .local v0, "name":Ljava/lang/String;
    sget-object v1, Lkawa/repl;->previousLanguage:Lgnu/expr/Language;

    if-nez v1, :cond_0

    .line 157
    move-object v1, v0

    invoke-static {v1}, Lgnu/expr/Language;->getInstanceFromFilenameExtension(Ljava/lang/String;)Lgnu/expr/Language;

    move-result-object v1

    sput-object v1, Lkawa/repl;->previousLanguage:Lgnu/expr/Language;

    .line 158
    sget-object v1, Lkawa/repl;->previousLanguage:Lgnu/expr/Language;

    if-eqz v1, :cond_0

    .line 160
    sget-object v1, Lkawa/repl;->previousLanguage:Lgnu/expr/Language;

    invoke-static {v1}, Lgnu/expr/Language;->setDefaults(Lgnu/expr/Language;)V

    .line 161
    .line 165
    :goto_0
    return-void

    .line 164
    :cond_0
    invoke-static {}, Lkawa/repl;->getLanguage()V

    .line 165
    goto :goto_0
.end method

.method static internalError(Ljava/lang/Throwable;Lgnu/expr/Compilation;Ljava/lang/Object;)V
    .locals 9

    .prologue
    .line 803
    move-object v0, p0

    .local v0, "ex":Ljava/lang/Throwable;
    move-object v1, p1

    .local v1, "comp":Lgnu/expr/Compilation;
    move-object v2, p2

    .local v2, "arg":Ljava/lang/Object;
    new-instance v6, Ljava/lang/StringBuffer;

    move-object v8, v6

    move-object v6, v8

    move-object v7, v8

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    move-object v3, v6

    .line 804
    .local v3, "sbuf":Ljava/lang/StringBuffer;
    move-object v6, v1

    if-eqz v6, :cond_0

    .line 806
    move-object v6, v1

    invoke-virtual {v6}, Lgnu/expr/Compilation;->getFileName()Ljava/lang/String;

    move-result-object v6

    move-object v4, v6

    .line 807
    .local v4, "file":Ljava/lang/String;
    move-object v6, v1

    invoke-virtual {v6}, Lgnu/expr/Compilation;->getLineNumber()I

    move-result v6

    move v5, v6

    .line 808
    .local v5, "line":I
    move-object v6, v4

    if-eqz v6, :cond_0

    move v6, v5

    if-lez v6, :cond_0

    .line 810
    move-object v6, v3

    move-object v7, v4

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    .line 811
    move-object v6, v3

    const/16 v7, 0x3a

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v6

    .line 812
    move-object v6, v3

    move v7, v5

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v6

    .line 813
    move-object v6, v3

    const-string/jumbo v7, ": "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    .line 816
    .end local v4    # "file":Ljava/lang/String;
    .end local v5    # "line":I
    :cond_0
    move-object v6, v3

    const-string/jumbo v7, "internal error while compiling "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    .line 817
    move-object v6, v3

    move-object v7, v2

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v6

    .line 818
    sget-object v6, Ljava/lang/System;->err:Ljava/io/PrintStream;

    move-object v7, v3

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 819
    move-object v6, v0

    sget-object v7, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v6, v7}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintStream;)V

    .line 820
    const/4 v6, -0x1

    invoke-static {v6}, Ljava/lang/System;->exit(I)V

    .line 821
    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .locals 8

    .prologue
    .line 827
    move-object v0, p0

    .local v0, "args":[Ljava/lang/String;
    move-object v5, v0

    const/4 v6, 0x0

    move-object v7, v0

    :try_start_0
    array-length v7, v7

    invoke-static {v5, v6, v7}, Lkawa/repl;->processArgs([Ljava/lang/String;II)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v5

    move v1, v5

    .line 828
    .local v1, "iArg":I
    move v5, v1

    if-gez v5, :cond_1

    .line 857
    sget-boolean v5, Lkawa/repl;->shutdownRegistered:Z

    if-nez v5, :cond_0

    .line 860
    invoke-static {}, Lgnu/mapping/OutPort;->runCleanups()V

    .line 862
    :cond_0
    invoke-static {}, Lgnu/expr/ModuleBody;->exitDecrement()V

    .line 864
    :goto_0
    return-void

    .line 831
    :cond_1
    move v5, v1

    move-object v6, v0

    :try_start_1
    array-length v6, v6

    if-ge v5, v6, :cond_4

    .line 833
    move-object v5, v0

    move v6, v1

    aget-object v5, v5, v6

    move-object v3, v5

    .line 834
    .local v3, "filename":Ljava/lang/String;
    move-object v5, v3

    invoke-static {v5}, Lkawa/repl;->getLanguageFromFilenameExtension(Ljava/lang/String;)V

    .line 835
    move-object v5, v0

    move v6, v1

    const/4 v7, 0x1

    add-int/lit8 v6, v6, 0x1

    invoke-static {v5, v6}, Lkawa/repl;->setArgs([Ljava/lang/String;I)V

    .line 836
    invoke-static {}, Lkawa/repl;->checkInitFile()V

    .line 837
    move-object v5, v3

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static {v5, v6, v7}, Lkawa/Shell;->runFileOrClass(Ljava/lang/String;ZI)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v5

    move v2, v5

    .line 857
    .end local v3    # "filename":Ljava/lang/String;
    :cond_2
    :goto_1
    sget-boolean v5, Lkawa/repl;->shutdownRegistered:Z

    if-nez v5, :cond_3

    .line 860
    invoke-static {}, Lgnu/mapping/OutPort;->runCleanups()V

    .line 862
    :cond_3
    invoke-static {}, Lgnu/expr/ModuleBody;->exitDecrement()V

    .line 863
    .line 864
    goto :goto_0

    .line 841
    :cond_4
    :try_start_2
    invoke-static {}, Lkawa/repl;->getLanguage()V

    .line 842
    move-object v5, v0

    move v6, v1

    invoke-static {v5, v6}, Lkawa/repl;->setArgs([Ljava/lang/String;I)V

    .line 843
    invoke-static {}, Lkawa/repl;->checkInitFile()V

    .line 844
    invoke-static {}, Lkawa/repl;->shouldUseGuiConsole()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 845
    invoke-static {}, Lkawa/repl;->startGuiConsole()V

    goto :goto_1

    .line 848
    :cond_5
    invoke-static {}, Lgnu/expr/Language;->getDefaultLanguage()Lgnu/expr/Language;

    move-result-object v5

    invoke-static {}, Lgnu/mapping/Environment;->getCurrent()Lgnu/mapping/Environment;

    move-result-object v6

    invoke-static {v5, v6}, Lkawa/Shell;->run(Lgnu/expr/Language;Lgnu/mapping/Environment;)Z

    move-result v5

    move v2, v5

    .line 850
    .local v2, "ok":Z
    move v5, v2

    if-nez v5, :cond_2

    .line 851
    const/4 v5, -0x1

    invoke-static {v5}, Ljava/lang/System;->exit(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 857
    .end local v1    # "iArg":I
    .end local v2    # "ok":Z
    :catchall_0
    move-exception v5

    move-object v4, v5

    sget-boolean v5, Lkawa/repl;->shutdownRegistered:Z

    if-nez v5, :cond_6

    .line 860
    invoke-static {}, Lgnu/mapping/OutPort;->runCleanups()V

    .line 862
    :cond_6
    invoke-static {}, Lgnu/expr/ModuleBody;->exitDecrement()V

    move-object v5, v4

    throw v5
.end method

.method public static printOption(Ljava/io/PrintStream;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    .prologue
    .line 51
    move-object v0, p0

    .local v0, "out":Ljava/io/PrintStream;
    move-object v1, p1

    .local v1, "option":Ljava/lang/String;
    move-object v2, p2

    .local v2, "doc":Ljava/lang/String;
    move-object v5, v0

    const-string/jumbo v6, " "

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 52
    move-object v5, v0

    move-object v6, v1

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 54
    move-object v5, v1

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v6, 0x1

    add-int/lit8 v5, v5, 0x1

    move v3, v5

    .line 55
    .local v3, "len":I
    const/4 v5, 0x0

    move v4, v5

    .local v4, "i":I
    :goto_0
    move v5, v4

    const/16 v6, 0x1e

    move v7, v3

    rsub-int/lit8 v6, v7, 0x1e

    if-ge v5, v6, :cond_0

    .line 56
    move-object v5, v0

    const-string/jumbo v6, " "

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 55
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 57
    :cond_0
    move-object v5, v0

    const-string/jumbo v6, " "

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 58
    move-object v5, v0

    move-object v6, v2

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 59
    return-void
.end method

.method public static printOptions(Ljava/io/PrintStream;)V
    .locals 11

    .prologue
    .line 63
    move-object v0, p0

    .local v0, "out":Ljava/io/PrintStream;
    move-object v6, v0

    const-string/jumbo v7, "Usage: [java kawa.repl | kawa] [options ...]"

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 64
    move-object v6, v0

    invoke-virtual {v6}, Ljava/io/PrintStream;->println()V

    .line 65
    move-object v6, v0

    const-string/jumbo v7, " Generic options:"

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 66
    move-object v6, v0

    const-string/jumbo v7, "--help"

    const-string/jumbo v8, "Show help about options"

    invoke-static {v6, v7, v8}, Lkawa/repl;->printOption(Ljava/io/PrintStream;Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    move-object v6, v0

    const-string/jumbo v7, "--author"

    const-string/jumbo v8, "Show author information"

    invoke-static {v6, v7, v8}, Lkawa/repl;->printOption(Ljava/io/PrintStream;Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    move-object v6, v0

    const-string/jumbo v7, "--version"

    const-string/jumbo v8, "Show version information"

    invoke-static {v6, v7, v8}, Lkawa/repl;->printOption(Ljava/io/PrintStream;Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    move-object v6, v0

    invoke-virtual {v6}, Ljava/io/PrintStream;->println()V

    .line 70
    move-object v6, v0

    const-string/jumbo v7, " Options"

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 71
    move-object v6, v0

    const-string/jumbo v7, "-e <expr>"

    const-string/jumbo v8, "Evaluate expression <expr>"

    invoke-static {v6, v7, v8}, Lkawa/repl;->printOption(Ljava/io/PrintStream;Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    move-object v6, v0

    const-string/jumbo v7, "-c <expr>"

    const-string/jumbo v8, "Same as -e, but make sure ~/.kawarc.scm is run first"

    invoke-static {v6, v7, v8}, Lkawa/repl;->printOption(Ljava/io/PrintStream;Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    move-object v6, v0

    const-string/jumbo v7, "-f <filename>"

    const-string/jumbo v8, "File to interpret"

    invoke-static {v6, v7, v8}, Lkawa/repl;->printOption(Ljava/io/PrintStream;Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    move-object v6, v0

    const-string/jumbo v7, "-s| --"

    const-string/jumbo v8, "Start reading commands interactively from console"

    invoke-static {v6, v7, v8}, Lkawa/repl;->printOption(Ljava/io/PrintStream;Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    move-object v6, v0

    const-string/jumbo v7, "-w"

    const-string/jumbo v8, "Launch the interpreter in a GUI window"

    invoke-static {v6, v7, v8}, Lkawa/repl;->printOption(Ljava/io/PrintStream;Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    move-object v6, v0

    const-string/jumbo v7, "--server <port>"

    const-string/jumbo v8, "Start a server accepting telnet connections on <port>"

    invoke-static {v6, v7, v8}, Lkawa/repl;->printOption(Ljava/io/PrintStream;Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    move-object v6, v0

    const-string/jumbo v7, "--debug-dump-zip"

    const-string/jumbo v8, "Compiled interactive expressions to a zip archive"

    invoke-static {v6, v7, v8}, Lkawa/repl;->printOption(Ljava/io/PrintStream;Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    move-object v6, v0

    const-string/jumbo v7, "--debug-print-expr"

    const-string/jumbo v8, "Print generated internal expressions"

    invoke-static {v6, v7, v8}, Lkawa/repl;->printOption(Ljava/io/PrintStream;Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    move-object v6, v0

    const-string/jumbo v7, "--debug-print-final-expr"

    const-string/jumbo v8, "Print expression after any optimizations"

    invoke-static {v6, v7, v8}, Lkawa/repl;->printOption(Ljava/io/PrintStream;Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    move-object v6, v0

    const-string/jumbo v7, "--debug-error-prints-stack-trace"

    const-string/jumbo v8, "Print stack trace with errors"

    invoke-static {v6, v7, v8}, Lkawa/repl;->printOption(Ljava/io/PrintStream;Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    move-object v6, v0

    const-string/jumbo v7, "--debug-warning-prints-stack-trace"

    const-string/jumbo v8, "Print stack trace with warnings"

    invoke-static {v6, v7, v8}, Lkawa/repl;->printOption(Ljava/io/PrintStream;Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    move-object v6, v0

    const-string/jumbo v7, "--[no-]full-tailcalls"

    const-string/jumbo v8, "(Don\'t) use full tail-calls"

    invoke-static {v6, v7, v8}, Lkawa/repl;->printOption(Ljava/io/PrintStream;Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    move-object v6, v0

    const-string/jumbo v7, "-C <filename> ..."

    const-string/jumbo v8, "Compile named files to Java class files"

    invoke-static {v6, v7, v8}, Lkawa/repl;->printOption(Ljava/io/PrintStream;Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    move-object v6, v0

    const-string/jumbo v7, "--output-format <format>"

    const-string/jumbo v8, "Use <format> when printing top-level output"

    invoke-static {v6, v7, v8}, Lkawa/repl;->printOption(Ljava/io/PrintStream;Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    move-object v6, v0

    const-string/jumbo v7, "--<language>"

    const-string/jumbo v8, "Select source language, one of:"

    invoke-static {v6, v7, v8}, Lkawa/repl;->printOption(Ljava/io/PrintStream;Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    invoke-static {}, Lgnu/expr/Language;->getLanguages()[[Ljava/lang/String;

    move-result-object v6

    move-object v1, v6

    .line 87
    .local v1, "languages":[[Ljava/lang/String;
    const/4 v6, 0x0

    move v2, v6

    .local v2, "i":I
    :goto_0
    move v6, v2

    move-object v7, v1

    array-length v7, v7

    if-ge v6, v7, :cond_2

    .line 89
    move-object v6, v0

    const-string/jumbo v7, "   "

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 90
    move-object v6, v1

    move v7, v2

    aget-object v6, v6, v7

    move-object v3, v6

    .line 92
    .local v3, "lang":[Ljava/lang/String;
    move-object v6, v3

    array-length v6, v6

    const/4 v7, 0x1

    add-int/lit8 v6, v6, -0x1

    move v4, v6

    .line 93
    .local v4, "nwords":I
    const/4 v6, 0x0

    move v5, v6

    .local v5, "j":I
    :goto_1
    move v6, v5

    move v7, v4

    if-ge v6, v7, :cond_0

    .line 94
    move-object v6, v0

    new-instance v7, Ljava/lang/StringBuilder;

    move-object v10, v7

    move-object v7, v10

    move-object v8, v10

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    move-object v8, v3

    move v9, v5

    aget-object v8, v8, v9

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 93
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 95
    :cond_0
    move v6, v2

    if-nez v6, :cond_1

    .line 96
    move-object v6, v0

    const-string/jumbo v7, "[default]"

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 97
    :cond_1
    move-object v6, v0

    invoke-virtual {v6}, Ljava/io/PrintStream;->println()V

    .line 87
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 99
    .end local v3    # "lang":[Ljava/lang/String;
    .end local v4    # "nwords":I
    .end local v5    # "j":I
    :cond_2
    move-object v6, v0

    const-string/jumbo v7, " Compilation options, must be specified before -C"

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 100
    move-object v6, v0

    const-string/jumbo v7, "-d <dirname>"

    const-string/jumbo v8, "Directory to place .class files in"

    invoke-static {v6, v7, v8}, Lkawa/repl;->printOption(Ljava/io/PrintStream;Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    move-object v6, v0

    const-string/jumbo v7, "-P <prefix>"

    const-string/jumbo v8, "Prefix to prepand to class names"

    invoke-static {v6, v7, v8}, Lkawa/repl;->printOption(Ljava/io/PrintStream;Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    move-object v6, v0

    const-string/jumbo v7, "-T <topname>"

    const-string/jumbo v8, "name to give to top-level class"

    invoke-static {v6, v7, v8}, Lkawa/repl;->printOption(Ljava/io/PrintStream;Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    move-object v6, v0

    const-string/jumbo v7, "--main"

    const-string/jumbo v8, "Generate an application, with a main method"

    invoke-static {v6, v7, v8}, Lkawa/repl;->printOption(Ljava/io/PrintStream;Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    move-object v6, v0

    const-string/jumbo v7, "--applet"

    const-string/jumbo v8, "Generate an applet"

    invoke-static {v6, v7, v8}, Lkawa/repl;->printOption(Ljava/io/PrintStream;Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    move-object v6, v0

    const-string/jumbo v7, "--servlet"

    const-string/jumbo v8, "Generate a servlet"

    invoke-static {v6, v7, v8}, Lkawa/repl;->printOption(Ljava/io/PrintStream;Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    move-object v6, v0

    const-string/jumbo v7, "--module-static"

    const-string/jumbo v8, "Top-level definitions are by default static"

    invoke-static {v6, v7, v8}, Lkawa/repl;->printOption(Ljava/io/PrintStream;Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    sget-object v6, Lgnu/expr/Compilation;->options:Lgnu/text/Options;

    invoke-virtual {v6}, Lgnu/text/Options;->keys()Ljava/util/ArrayList;

    move-result-object v6

    move-object v2, v6

    .line 110
    .local v2, "keys":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v6, 0x0

    move v3, v6

    .local v3, "i":I
    :goto_2
    move v6, v3

    move-object v7, v2

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v6, v7, :cond_3

    .line 112
    move-object v6, v2

    move v7, v3

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    move-object v4, v6

    .line 113
    .local v4, "name":Ljava/lang/String;
    move-object v6, v0

    new-instance v7, Ljava/lang/StringBuilder;

    move-object v10, v7

    move-object v7, v10

    move-object v8, v10

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "--"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v8, v4

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    sget-object v8, Lgnu/expr/Compilation;->options:Lgnu/text/Options;

    move-object v9, v4

    invoke-virtual {v8, v9}, Lgnu/text/Options;->getDoc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v7, v8}, Lkawa/repl;->printOption(Ljava/io/PrintStream;Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 116
    .end local v4    # "name":Ljava/lang/String;
    :cond_3
    move-object v6, v0

    invoke-virtual {v6}, Ljava/io/PrintStream;->println()V

    .line 117
    move-object v6, v0

    const-string/jumbo v7, "For more information go to:  http://www.gnu.org/software/kawa/"

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 118
    return-void
.end method

.method public static processArgs([Ljava/lang/String;II)I
    .locals 25

    .prologue
    .line 181
    move-object/from16 v2, p0

    .local v2, "args":[Ljava/lang/String;
    move/from16 v3, p1

    .local v3, "iArg":I
    move/from16 v4, p2

    .local v4, "maxArg":I
    const/16 v18, 0x0

    move/from16 v5, v18

    .line 182
    .local v5, "something_done":Z
    :goto_0
    move/from16 v18, v3

    move/from16 v19, v4

    move/from16 v0, v18

    move/from16 v1, v19

    if-ge v0, v1, :cond_63

    .line 184
    move-object/from16 v18, v2

    move/from16 v19, v3

    aget-object v18, v18, v19

    move-object/from16 v6, v18

    .line 185
    .local v6, "arg":Ljava/lang/String;
    move-object/from16 v18, v6

    const-string/jumbo v19, "-c"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_0

    move-object/from16 v18, v6

    const-string/jumbo v19, "-e"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_5

    .line 187
    :cond_0
    add-int/lit8 v3, v3, 0x1

    .line 188
    move/from16 v18, v3

    move/from16 v19, v4

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_1

    .line 189
    move-object/from16 v18, v6

    invoke-static/range {v18 .. v18}, Lkawa/repl;->bad_option(Ljava/lang/String;)V

    .line 190
    :cond_1
    invoke-static {}, Lkawa/repl;->getLanguage()V

    .line 191
    move-object/from16 v18, v2

    move/from16 v19, v3

    const/16 v20, 0x1

    add-int/lit8 v19, v19, 0x1

    invoke-static/range {v18 .. v19}, Lkawa/repl;->setArgs([Ljava/lang/String;I)V

    .line 192
    move-object/from16 v18, v6

    const-string/jumbo v19, "-c"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_2

    .line 193
    invoke-static {}, Lkawa/repl;->checkInitFile()V

    .line 194
    :cond_2
    invoke-static {}, Lgnu/expr/Language;->getDefaultLanguage()Lgnu/expr/Language;

    move-result-object v18

    move-object/from16 v7, v18

    .line 195
    .local v7, "language":Lgnu/expr/Language;
    new-instance v18, Lgnu/text/SourceMessages;

    move-object/from16 v24, v18

    move-object/from16 v18, v24

    move-object/from16 v19, v24

    invoke-direct/range {v19 .. v19}, Lgnu/text/SourceMessages;-><init>()V

    move-object/from16 v8, v18

    .line 196
    .local v8, "messages":Lgnu/text/SourceMessages;
    move-object/from16 v18, v7

    invoke-static {}, Lgnu/mapping/Environment;->getCurrent()Lgnu/mapping/Environment;

    move-result-object v19

    new-instance v20, Lgnu/mapping/CharArrayInPort;

    move-object/from16 v24, v20

    move-object/from16 v20, v24

    move-object/from16 v21, v24

    move-object/from16 v22, v2

    move/from16 v23, v3

    aget-object v22, v22, v23

    invoke-direct/range {v21 .. v22}, Lgnu/mapping/CharArrayInPort;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lgnu/mapping/OutPort;->outDefault()Lgnu/mapping/OutPort;

    move-result-object v21

    const/16 v22, 0x0

    move-object/from16 v23, v8

    invoke-static/range {v18 .. v23}, Lkawa/Shell;->run(Lgnu/expr/Language;Lgnu/mapping/Environment;Lgnu/mapping/InPort;Lgnu/mapping/OutPort;Lgnu/mapping/OutPort;Lgnu/text/SourceMessages;)Ljava/lang/Throwable;

    move-result-object v18

    move-object/from16 v9, v18

    .line 200
    .local v9, "ex":Ljava/lang/Throwable;
    move-object/from16 v18, v9

    if-eqz v18, :cond_3

    .line 202
    move-object/from16 v18, v9

    move-object/from16 v19, v8

    invoke-static {}, Lgnu/mapping/OutPort;->errDefault()Lgnu/mapping/OutPort;

    move-result-object v20

    invoke-static/range {v18 .. v20}, Lkawa/Shell;->printError(Ljava/lang/Throwable;Lgnu/text/SourceMessages;Lgnu/mapping/OutPort;)V

    .line 203
    const/16 v18, -0x1

    invoke-static/range {v18 .. v18}, Ljava/lang/System;->exit(I)V

    .line 205
    :cond_3
    const/16 v18, 0x1

    move/from16 v5, v18

    .line 182
    .end local v7    # "language":Lgnu/expr/Language;
    .end local v8    # "messages":Lgnu/text/SourceMessages;
    .end local v9    # "ex":Ljava/lang/Throwable;
    :cond_4
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 207
    :cond_5
    move-object/from16 v18, v6

    const-string/jumbo v19, "-f"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_8

    .line 209
    add-int/lit8 v3, v3, 0x1

    .line 210
    move/from16 v18, v3

    move/from16 v19, v4

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_6

    .line 211
    move-object/from16 v18, v6

    invoke-static/range {v18 .. v18}, Lkawa/repl;->bad_option(Ljava/lang/String;)V

    .line 212
    :cond_6
    move-object/from16 v18, v2

    move/from16 v19, v3

    aget-object v18, v18, v19

    move-object/from16 v7, v18

    .line 213
    .local v7, "filename":Ljava/lang/String;
    move-object/from16 v18, v7

    invoke-static/range {v18 .. v18}, Lkawa/repl;->getLanguageFromFilenameExtension(Ljava/lang/String;)V

    .line 214
    move-object/from16 v18, v2

    move/from16 v19, v3

    const/16 v20, 0x1

    add-int/lit8 v19, v19, 0x1

    invoke-static/range {v18 .. v19}, Lkawa/repl;->setArgs([Ljava/lang/String;I)V

    .line 215
    invoke-static {}, Lkawa/repl;->checkInitFile()V

    .line 216
    move-object/from16 v18, v7

    const/16 v19, 0x1

    const/16 v20, 0x0

    invoke-static/range {v18 .. v20}, Lkawa/Shell;->runFileOrClass(Ljava/lang/String;ZI)Z

    move-result v18

    if-nez v18, :cond_7

    .line 217
    const/16 v18, -0x1

    invoke-static/range {v18 .. v18}, Ljava/lang/System;->exit(I)V

    .line 218
    :cond_7
    const/16 v18, 0x1

    move/from16 v5, v18

    .line 219
    goto :goto_1

    .line 220
    .end local v7    # "filename":Ljava/lang/String;
    :cond_8
    move-object/from16 v18, v6

    const-string/jumbo v19, "--script"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_c

    .line 222
    move-object/from16 v18, v6

    const/16 v19, 0x8

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v7, v18

    .line 223
    .local v7, "count":Ljava/lang/String;
    add-int/lit8 v3, v3, 0x1

    .line 224
    const/16 v18, 0x0

    move/from16 v8, v18

    .line 225
    .local v8, "skipLines":I
    move-object/from16 v18, v7

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v18

    if-lez v18, :cond_9

    .line 229
    move-object/from16 v18, v7

    :try_start_0
    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v18

    move/from16 v8, v18

    .line 234
    .line 236
    :cond_9
    :goto_2
    move/from16 v18, v3

    move/from16 v19, v4

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_a

    .line 237
    move-object/from16 v18, v6

    invoke-static/range {v18 .. v18}, Lkawa/repl;->bad_option(Ljava/lang/String;)V

    .line 238
    :cond_a
    move-object/from16 v18, v2

    move/from16 v19, v3

    aget-object v18, v18, v19

    move-object/from16 v9, v18

    .line 239
    .local v9, "filename":Ljava/lang/String;
    move-object/from16 v18, v9

    invoke-static/range {v18 .. v18}, Lkawa/repl;->getLanguageFromFilenameExtension(Ljava/lang/String;)V

    .line 240
    move-object/from16 v18, v2

    move/from16 v19, v3

    const/16 v20, 0x1

    add-int/lit8 v19, v19, 0x1

    invoke-static/range {v18 .. v19}, Lkawa/repl;->setArgs([Ljava/lang/String;I)V

    .line 241
    invoke-static {}, Lkawa/repl;->checkInitFile()V

    .line 242
    move-object/from16 v18, v9

    const/16 v19, 0x1

    move/from16 v20, v8

    invoke-static/range {v18 .. v20}, Lkawa/Shell;->runFileOrClass(Ljava/lang/String;ZI)Z

    move-result v18

    if-nez v18, :cond_b

    .line 243
    const/16 v18, -0x1

    invoke-static/range {v18 .. v18}, Ljava/lang/System;->exit(I)V

    .line 244
    :cond_b
    const/16 v18, -0x1

    move/from16 v2, v18

    .line 713
    .end local v2    # "args":[Ljava/lang/String;
    .end local v6    # "arg":Ljava/lang/String;
    .end local v7    # "count":Ljava/lang/String;
    .end local v8    # "skipLines":I
    .end local v9    # "filename":Ljava/lang/String;
    :goto_3
    return v2

    .line 231
    .restart local v2    # "args":[Ljava/lang/String;
    .restart local v6    # "arg":Ljava/lang/String;
    .restart local v7    # "count":Ljava/lang/String;
    .restart local v8    # "skipLines":I
    :catch_0
    move-exception v18

    move-object/from16 v9, v18

    .line 233
    .local v9, "ex":Ljava/lang/Throwable;
    move/from16 v18, v4

    move/from16 v3, v18

    goto :goto_2

    .line 246
    .end local v7    # "count":Ljava/lang/String;
    .end local v8    # "skipLines":I
    .end local v9    # "ex":Ljava/lang/Throwable;
    :cond_c
    move-object/from16 v18, v6

    const-string/jumbo v19, "\\"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_1c

    .line 249
    add-int/lit8 v3, v3, 0x1

    move/from16 v18, v3

    move/from16 v19, v4

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_d

    .line 250
    move-object/from16 v18, v6

    invoke-static/range {v18 .. v18}, Lkawa/repl;->bad_option(Ljava/lang/String;)V

    .line 251
    :cond_d
    move-object/from16 v18, v2

    move/from16 v19, v3

    aget-object v18, v18, v19

    move-object/from16 v7, v18

    .line 253
    .local v7, "filename":Ljava/lang/String;
    new-instance v18, Lgnu/text/SourceMessages;

    move-object/from16 v24, v18

    move-object/from16 v18, v24

    move-object/from16 v19, v24

    invoke-direct/range {v19 .. v19}, Lgnu/text/SourceMessages;-><init>()V

    move-object/from16 v9, v18

    .line 256
    .local v9, "messages":Lgnu/text/SourceMessages;
    :try_start_1
    new-instance v18, Ljava/io/BufferedInputStream;

    move-object/from16 v24, v18

    move-object/from16 v18, v24

    move-object/from16 v19, v24

    new-instance v20, Ljava/io/FileInputStream;

    move-object/from16 v24, v20

    move-object/from16 v20, v24

    move-object/from16 v21, v24

    move-object/from16 v22, v7

    invoke-direct/range {v21 .. v22}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct/range {v19 .. v20}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    move-object/from16 v10, v18

    .line 257
    .local v10, "fstream":Ljava/io/InputStream;
    move-object/from16 v18, v10

    invoke-virtual/range {v18 .. v18}, Ljava/io/InputStream;->read()I

    move-result v18

    move/from16 v11, v18

    .line 258
    .local v11, "ch":I
    move/from16 v18, v11

    const/16 v19, 0x23

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_14

    .line 260
    new-instance v18, Ljava/lang/StringBuffer;

    move-object/from16 v24, v18

    move-object/from16 v18, v24

    move-object/from16 v19, v24

    const/16 v20, 0x64

    invoke-direct/range {v19 .. v20}, Ljava/lang/StringBuffer;-><init>(I)V

    move-object/from16 v12, v18

    .line 261
    .local v12, "sbuf":Ljava/lang/StringBuffer;
    new-instance v18, Ljava/util/Vector;

    move-object/from16 v24, v18

    move-object/from16 v18, v24

    move-object/from16 v19, v24

    const/16 v20, 0xa

    invoke-direct/range {v19 .. v20}, Ljava/util/Vector;-><init>(I)V

    move-object/from16 v13, v18

    .line 262
    .local v13, "xargs":Ljava/util/Vector;
    const/16 v18, 0x0

    move/from16 v14, v18

    .line 263
    .local v14, "state":I
    :goto_4
    move/from16 v18, v11

    const/16 v19, 0xa

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_e

    move/from16 v18, v11

    const/16 v19, 0xd

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_e

    move/from16 v18, v11

    if-ltz v18, :cond_e

    .line 264
    move-object/from16 v18, v10

    invoke-virtual/range {v18 .. v18}, Ljava/io/InputStream;->read()I

    move-result v18

    move/from16 v11, v18

    goto :goto_4

    .line 267
    :cond_e
    :goto_5
    move-object/from16 v18, v10

    invoke-virtual/range {v18 .. v18}, Ljava/io/InputStream;->read()I

    move-result v18

    move/from16 v11, v18

    .line 268
    move/from16 v18, v11

    if-gez v18, :cond_f

    .line 270
    sget-object v18, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v19, Ljava/lang/StringBuilder;

    move-object/from16 v24, v19

    move-object/from16 v19, v24

    move-object/from16 v20, v24

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "unexpected end-of-file processing argument line for: \'"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v20, v7

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const/16 v20, 0x27

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 271
    const/16 v18, -0x1

    invoke-static/range {v18 .. v18}, Ljava/lang/System;->exit(I)V

    .line 273
    :cond_f
    move/from16 v18, v14

    if-nez v18, :cond_18

    .line 275
    move/from16 v18, v11

    const/16 v19, 0x5c

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_10

    move/from16 v18, v11

    const/16 v19, 0x27

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_10

    move/from16 v18, v11

    const/16 v19, 0x22

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_11

    .line 277
    :cond_10
    move/from16 v18, v11

    move/from16 v14, v18

    .line 278
    goto :goto_5

    .line 280
    :cond_11
    move/from16 v18, v11

    const/16 v19, 0xa

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_12

    move/from16 v18, v11

    const/16 v19, 0xd

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_16

    .line 281
    .line 301
    :cond_12
    move-object/from16 v18, v12

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuffer;->length()I

    move-result v18

    if-lez v18, :cond_13

    .line 302
    move-object/from16 v18, v13

    move-object/from16 v19, v12

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 303
    :cond_13
    move-object/from16 v18, v13

    invoke-virtual/range {v18 .. v18}, Ljava/util/Vector;->size()I

    move-result v18

    move/from16 v15, v18

    .line 304
    .local v15, "nxargs":I
    move/from16 v18, v15

    if-lez v18, :cond_14

    .line 306
    move/from16 v18, v15

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v16, v18

    .line 307
    .local v16, "sargs":[Ljava/lang/String;
    move-object/from16 v18, v13

    move-object/from16 v19, v16

    invoke-virtual/range {v18 .. v19}, Ljava/util/Vector;->copyInto([Ljava/lang/Object;)V

    .line 308
    move-object/from16 v18, v16

    const/16 v19, 0x0

    move/from16 v20, v15

    invoke-static/range {v18 .. v20}, Lkawa/repl;->processArgs([Ljava/lang/String;II)I

    move-result v18

    move/from16 v17, v18

    .line 309
    .local v17, "ixarg":I
    move/from16 v18, v17

    if-ltz v18, :cond_14

    move/from16 v18, v17

    move/from16 v19, v15

    move/from16 v0, v18

    move/from16 v1, v19

    if-ge v0, v1, :cond_14

    .line 311
    sget-object v18, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v19, Ljava/lang/StringBuilder;

    move-object/from16 v24, v19

    move-object/from16 v19, v24

    move-object/from16 v20, v24

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, ""

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move/from16 v20, v15

    move/from16 v21, v17

    sub-int v20, v20, v21

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string/jumbo v20, " unused meta args"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 315
    .end local v12    # "sbuf":Ljava/lang/StringBuffer;
    .end local v13    # "xargs":Ljava/util/Vector;
    .end local v14    # "state":I
    .end local v15    # "nxargs":I
    .end local v16    # "sargs":[Ljava/lang/String;
    .end local v17    # "ixarg":I
    :cond_14
    move-object/from16 v18, v7

    invoke-static/range {v18 .. v18}, Lkawa/repl;->getLanguageFromFilenameExtension(Ljava/lang/String;)V

    .line 316
    move-object/from16 v18, v10

    move-object/from16 v19, v7

    invoke-static/range {v18 .. v19}, Lgnu/mapping/InPort;->openFile(Ljava/io/InputStream;Ljava/lang/Object;)Lgnu/mapping/InPort;

    move-result-object v18

    move-object/from16 v8, v18

    .line 318
    .local v8, "freader":Lgnu/mapping/InPort;
    move-object/from16 v18, v2

    move/from16 v19, v3

    const/16 v20, 0x1

    add-int/lit8 v19, v19, 0x1

    invoke-static/range {v18 .. v19}, Lkawa/repl;->setArgs([Ljava/lang/String;I)V

    .line 319
    invoke-static {}, Lkawa/repl;->checkInitFile()V

    .line 320
    invoke-static {}, Lgnu/mapping/OutPort;->errDefault()Lgnu/mapping/OutPort;

    move-result-object v18

    move-object/from16 v12, v18

    .line 321
    .local v12, "err":Lgnu/mapping/OutPort;
    invoke-static {}, Lgnu/expr/Language;->getDefaultLanguage()Lgnu/expr/Language;

    move-result-object v18

    invoke-static {}, Lgnu/mapping/Environment;->getCurrent()Lgnu/mapping/Environment;

    move-result-object v19

    move-object/from16 v20, v8

    invoke-static {}, Lgnu/mapping/OutPort;->outDefault()Lgnu/mapping/OutPort;

    move-result-object v21

    const/16 v22, 0x0

    move-object/from16 v23, v9

    invoke-static/range {v18 .. v23}, Lkawa/Shell;->run(Lgnu/expr/Language;Lgnu/mapping/Environment;Lgnu/mapping/InPort;Lgnu/mapping/OutPort;Lgnu/mapping/OutPort;Lgnu/text/SourceMessages;)Ljava/lang/Throwable;

    move-result-object v18

    move-object/from16 v13, v18

    .line 325
    .local v13, "ex":Ljava/lang/Throwable;
    move-object/from16 v18, v9

    move-object/from16 v19, v12

    const/16 v20, 0x14

    invoke-virtual/range {v18 .. v20}, Lgnu/text/SourceMessages;->printAll(Ljava/io/PrintWriter;I)V

    .line 326
    move-object/from16 v18, v13

    if-eqz v18, :cond_1b

    .line 328
    move-object/from16 v18, v13

    move-object/from16 v0, v18

    instance-of v0, v0, Lgnu/text/SyntaxException;

    move/from16 v18, v0

    if-eqz v18, :cond_15

    .line 330
    move-object/from16 v18, v13

    check-cast v18, Lgnu/text/SyntaxException;

    move-object/from16 v14, v18

    .line 331
    .local v14, "se":Lgnu/text/SyntaxException;
    move-object/from16 v18, v14

    invoke-virtual/range {v18 .. v18}, Lgnu/text/SyntaxException;->getMessages()Lgnu/text/SourceMessages;

    move-result-object v18

    move-object/from16 v19, v9

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    if-ne v0, v1, :cond_15

    .line 332
    const/16 v18, 0x1

    invoke-static/range {v18 .. v18}, Ljava/lang/System;->exit(I)V

    .line 334
    .end local v14    # "se":Lgnu/text/SyntaxException;
    :cond_15
    move-object/from16 v18, v13

    throw v18
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 337
    .end local v8    # "freader":Lgnu/mapping/InPort;
    .end local v10    # "fstream":Ljava/io/InputStream;
    .end local v11    # "ch":I
    .end local v12    # "err":Lgnu/mapping/OutPort;
    .end local v13    # "ex":Ljava/lang/Throwable;
    :catch_1
    move-exception v18

    move-object/from16 v10, v18

    .line 339
    .local v10, "ex":Ljava/lang/Throwable;
    move-object/from16 v18, v10

    move-object/from16 v19, v9

    invoke-static {}, Lgnu/mapping/OutPort;->errDefault()Lgnu/mapping/OutPort;

    move-result-object v20

    invoke-static/range {v18 .. v20}, Lkawa/Shell;->printError(Ljava/lang/Throwable;Lgnu/text/SourceMessages;Lgnu/mapping/OutPort;)V

    .line 340
    const/16 v18, 0x1

    invoke-static/range {v18 .. v18}, Ljava/lang/System;->exit(I)V

    .line 342
    .end local v10    # "ex":Ljava/lang/Throwable;
    :goto_6
    const/16 v18, -0x1

    move/from16 v2, v18

    goto/16 :goto_3

    .line 282
    .local v10, "fstream":Ljava/io/InputStream;
    .restart local v11    # "ch":I
    .local v12, "sbuf":Ljava/lang/StringBuffer;
    .local v13, "xargs":Ljava/util/Vector;
    .local v14, "state":I
    :cond_16
    move/from16 v18, v11

    const/16 v19, 0x20

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_17

    move/from16 v18, v11

    const/16 v19, 0x9

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_19

    .line 284
    :cond_17
    move-object/from16 v18, v12

    :try_start_2
    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuffer;->length()I

    move-result v18

    if-lez v18, :cond_e

    .line 286
    move-object/from16 v18, v13

    move-object/from16 v19, v12

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 287
    move-object/from16 v18, v12

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuffer;->setLength(I)V

    goto/16 :goto_5

    .line 292
    :cond_18
    move/from16 v18, v14

    const/16 v19, 0x5c

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_1a

    .line 293
    const/16 v18, 0x0

    move/from16 v14, v18

    .line 299
    :cond_19
    move-object/from16 v18, v12

    move/from16 v19, v11

    move/from16 v0, v19

    int-to-char v0, v0

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v18

    goto/16 :goto_5

    .line 294
    :cond_1a
    move/from16 v18, v11

    move/from16 v19, v14

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_19

    .line 296
    const/16 v18, 0x0

    move/from16 v14, v18

    .line 297
    goto/16 :goto_5

    .line 341
    .end local v14    # "state":I
    .restart local v8    # "freader":Lgnu/mapping/InPort;
    .local v12, "err":Lgnu/mapping/OutPort;
    .local v13, "ex":Ljava/lang/Throwable;
    :cond_1b
    goto :goto_6

    .line 344
    .end local v7    # "filename":Ljava/lang/String;
    .end local v8    # "freader":Lgnu/mapping/InPort;
    .end local v9    # "messages":Lgnu/text/SourceMessages;
    .end local v10    # "fstream":Ljava/io/InputStream;
    .end local v11    # "ch":I
    .end local v12    # "err":Lgnu/mapping/OutPort;
    .end local v13    # "ex":Ljava/lang/Throwable;
    :cond_1c
    move-object/from16 v18, v6

    const-string/jumbo v19, "-s"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_1d

    move-object/from16 v18, v6

    const-string/jumbo v19, "--"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_1e

    .line 346
    :cond_1d
    add-int/lit8 v3, v3, 0x1

    .line 347
    invoke-static {}, Lkawa/repl;->getLanguage()V

    .line 348
    move-object/from16 v18, v2

    move/from16 v19, v3

    invoke-static/range {v18 .. v19}, Lkawa/repl;->setArgs([Ljava/lang/String;I)V

    .line 349
    invoke-static {}, Lkawa/repl;->checkInitFile()V

    .line 350
    invoke-static {}, Lgnu/expr/Language;->getDefaultLanguage()Lgnu/expr/Language;

    move-result-object v18

    invoke-static {}, Lgnu/mapping/Environment;->getCurrent()Lgnu/mapping/Environment;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lkawa/Shell;->run(Lgnu/expr/Language;Lgnu/mapping/Environment;)Z

    move-result v18

    .line 351
    const/16 v18, -0x1

    move/from16 v2, v18

    goto/16 :goto_3

    .line 353
    :cond_1e
    move-object/from16 v18, v6

    const-string/jumbo v19, "-w"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_1f

    .line 355
    add-int/lit8 v3, v3, 0x1

    .line 356
    invoke-static {}, Lkawa/repl;->getLanguage()V

    .line 357
    move-object/from16 v18, v2

    move/from16 v19, v3

    invoke-static/range {v18 .. v19}, Lkawa/repl;->setArgs([Ljava/lang/String;I)V

    .line 358
    invoke-static {}, Lkawa/repl;->checkInitFile()V

    .line 359
    invoke-static {}, Lkawa/repl;->startGuiConsole()V

    .line 360
    const/16 v18, 0x1

    move/from16 v5, v18

    goto/16 :goto_1

    .line 362
    :cond_1f
    move-object/from16 v18, v6

    const-string/jumbo v19, "-d"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_21

    .line 364
    add-int/lit8 v3, v3, 0x1

    .line 365
    move/from16 v18, v3

    move/from16 v19, v4

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_20

    .line 366
    move-object/from16 v18, v6

    invoke-static/range {v18 .. v18}, Lkawa/repl;->bad_option(Ljava/lang/String;)V

    .line 367
    :cond_20
    invoke-static {}, Lgnu/expr/ModuleManager;->getInstance()Lgnu/expr/ModuleManager;

    move-result-object v18

    move-object/from16 v7, v18

    .line 368
    .local v7, "manager":Lgnu/expr/ModuleManager;
    move-object/from16 v18, v7

    move-object/from16 v19, v2

    move/from16 v20, v3

    aget-object v19, v19, v20

    invoke-virtual/range {v18 .. v19}, Lgnu/expr/ModuleManager;->setCompilationDirectory(Ljava/lang/String;)V

    .line 369
    goto/16 :goto_1

    .line 370
    .end local v7    # "manager":Lgnu/expr/ModuleManager;
    :cond_21
    move-object/from16 v18, v6

    const-string/jumbo v19, "--target"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_22

    move-object/from16 v18, v6

    const-string/jumbo v19, "target"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_2d

    .line 372
    :cond_22
    add-int/lit8 v3, v3, 0x1

    .line 373
    move/from16 v18, v3

    move/from16 v19, v4

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_23

    .line 374
    move-object/from16 v18, v6

    invoke-static/range {v18 .. v18}, Lkawa/repl;->bad_option(Ljava/lang/String;)V

    .line 375
    :cond_23
    move-object/from16 v18, v2

    move/from16 v19, v3

    aget-object v18, v18, v19

    move-object/from16 v6, v18

    .line 376
    move-object/from16 v18, v6

    const-string/jumbo v19, "7"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_24

    .line 377
    const/high16 v18, 0x330000

    sput v18, Lgnu/expr/Compilation;->defaultClassFileVersion:I

    .line 378
    :cond_24
    move-object/from16 v18, v6

    const-string/jumbo v19, "6"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_25

    move-object/from16 v18, v6

    const-string/jumbo v19, "1.6"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_26

    .line 379
    :cond_25
    const/high16 v18, 0x320000

    sput v18, Lgnu/expr/Compilation;->defaultClassFileVersion:I

    goto/16 :goto_1

    .line 380
    :cond_26
    move-object/from16 v18, v6

    const-string/jumbo v19, "5"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_27

    move-object/from16 v18, v6

    const-string/jumbo v19, "1.5"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_28

    .line 381
    :cond_27
    const/high16 v18, 0x310000    # 4.49994E-39f

    sput v18, Lgnu/expr/Compilation;->defaultClassFileVersion:I

    goto/16 :goto_1

    .line 382
    :cond_28
    move-object/from16 v18, v6

    const-string/jumbo v19, "1.4"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_29

    .line 383
    const/high16 v18, 0x300000

    sput v18, Lgnu/expr/Compilation;->defaultClassFileVersion:I

    goto/16 :goto_1

    .line 384
    :cond_29
    move-object/from16 v18, v6

    const-string/jumbo v19, "1.3"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_2a

    .line 385
    const/high16 v18, 0x2f0000

    sput v18, Lgnu/expr/Compilation;->defaultClassFileVersion:I

    goto/16 :goto_1

    .line 386
    :cond_2a
    move-object/from16 v18, v6

    const-string/jumbo v19, "1.2"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_2b

    .line 387
    const/high16 v18, 0x2e0000

    sput v18, Lgnu/expr/Compilation;->defaultClassFileVersion:I

    goto/16 :goto_1

    .line 388
    :cond_2b
    move-object/from16 v18, v6

    const-string/jumbo v19, "1.1"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_2c

    .line 389
    const v18, 0x2d0003

    sput v18, Lgnu/expr/Compilation;->defaultClassFileVersion:I

    goto/16 :goto_1

    .line 391
    :cond_2c
    move-object/from16 v18, v6

    invoke-static/range {v18 .. v18}, Lkawa/repl;->bad_option(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 393
    :cond_2d
    move-object/from16 v18, v6

    const-string/jumbo v19, "-P"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_2f

    .line 395
    add-int/lit8 v3, v3, 0x1

    .line 396
    move/from16 v18, v3

    move/from16 v19, v4

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_2e

    .line 397
    move-object/from16 v18, v6

    invoke-static/range {v18 .. v18}, Lkawa/repl;->bad_option(Ljava/lang/String;)V

    .line 398
    :cond_2e
    move-object/from16 v18, v2

    move/from16 v19, v3

    aget-object v18, v18, v19

    sput-object v18, Lgnu/expr/Compilation;->classPrefixDefault:Ljava/lang/String;

    goto/16 :goto_1

    .line 400
    :cond_2f
    move-object/from16 v18, v6

    const-string/jumbo v19, "-T"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_31

    .line 402
    add-int/lit8 v3, v3, 0x1

    .line 403
    move/from16 v18, v3

    move/from16 v19, v4

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_30

    .line 404
    move-object/from16 v18, v6

    invoke-static/range {v18 .. v18}, Lkawa/repl;->bad_option(Ljava/lang/String;)V

    .line 405
    :cond_30
    move-object/from16 v18, v2

    move/from16 v19, v3

    aget-object v18, v18, v19

    sput-object v18, Lkawa/repl;->compilationTopname:Ljava/lang/String;

    goto/16 :goto_1

    .line 407
    :cond_31
    move-object/from16 v18, v6

    const-string/jumbo v19, "-C"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_33

    .line 409
    add-int/lit8 v3, v3, 0x1

    .line 410
    move/from16 v18, v3

    move/from16 v19, v4

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_32

    .line 411
    move-object/from16 v18, v6

    invoke-static/range {v18 .. v18}, Lkawa/repl;->bad_option(Ljava/lang/String;)V

    .line 412
    :cond_32
    move-object/from16 v18, v2

    move/from16 v19, v3

    move/from16 v20, v4

    invoke-static/range {v18 .. v20}, Lkawa/repl;->compileFiles([Ljava/lang/String;II)V

    .line 413
    const/16 v18, -0x1

    move/from16 v2, v18

    goto/16 :goto_3

    .line 415
    :cond_33
    move-object/from16 v18, v6

    const-string/jumbo v19, "--output-format"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_34

    move-object/from16 v18, v6

    const-string/jumbo v19, "--format"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_36

    .line 418
    :cond_34
    add-int/lit8 v3, v3, 0x1

    move/from16 v18, v3

    move/from16 v19, v4

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_35

    .line 419
    move-object/from16 v18, v6

    invoke-static/range {v18 .. v18}, Lkawa/repl;->bad_option(Ljava/lang/String;)V

    .line 420
    :cond_35
    move-object/from16 v18, v2

    move/from16 v19, v3

    aget-object v18, v18, v19

    invoke-static/range {v18 .. v18}, Lkawa/Shell;->setDefaultFormat(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 422
    :cond_36
    move-object/from16 v18, v6

    const-string/jumbo v19, "--connect"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_39

    .line 424
    add-int/lit8 v3, v3, 0x1

    .line 425
    move/from16 v18, v3

    move/from16 v19, v4

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_37

    .line 426
    move-object/from16 v18, v6

    invoke-static/range {v18 .. v18}, Lkawa/repl;->bad_option(Ljava/lang/String;)V

    .line 428
    :cond_37
    move-object/from16 v18, v2

    move/from16 v19, v3

    aget-object v18, v18, v19

    const-string/jumbo v19, "-"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_38

    .line 429
    const/16 v18, 0x0

    move/from16 v7, v18

    .line 444
    .local v7, "port":I
    :goto_7
    :try_start_3
    new-instance v18, Ljava/net/Socket;

    move-object/from16 v24, v18

    move-object/from16 v18, v24

    move-object/from16 v19, v24

    const/16 v20, 0x0

    invoke-static/range {v20 .. v20}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v20

    move/from16 v21, v7

    invoke-direct/range {v19 .. v21}, Ljava/net/Socket;-><init>(Ljava/net/InetAddress;I)V

    move-object/from16 v8, v18

    .line 445
    .local v8, "socket":Ljava/net/Socket;
    new-instance v18, Lkawa/Telnet;

    move-object/from16 v24, v18

    move-object/from16 v18, v24

    move-object/from16 v19, v24

    move-object/from16 v20, v8

    const/16 v21, 0x1

    invoke-direct/range {v19 .. v21}, Lkawa/Telnet;-><init>(Ljava/net/Socket;Z)V

    move-object/from16 v9, v18

    .line 446
    .local v9, "conn":Lkawa/Telnet;
    move-object/from16 v18, v9

    invoke-virtual/range {v18 .. v18}, Lkawa/Telnet;->getInputStream()Lkawa/TelnetInputStream;

    move-result-object v18

    move-object/from16 v10, v18

    .line 447
    .local v10, "sin":Ljava/io/InputStream;
    move-object/from16 v18, v9

    invoke-virtual/range {v18 .. v18}, Lkawa/Telnet;->getOutputStream()Lkawa/TelnetOutputStream;

    move-result-object v18

    move-object/from16 v11, v18

    .line 448
    .local v11, "sout":Ljava/io/OutputStream;
    new-instance v18, Ljava/io/PrintStream;

    move-object/from16 v24, v18

    move-object/from16 v18, v24

    move-object/from16 v19, v24

    move-object/from16 v20, v11

    const/16 v21, 0x1

    invoke-direct/range {v19 .. v21}, Ljava/io/PrintStream;-><init>(Ljava/io/OutputStream;Z)V

    move-object/from16 v12, v18

    .line 449
    .local v12, "pout":Ljava/io/PrintStream;
    move-object/from16 v18, v10

    invoke-static/range {v18 .. v18}, Ljava/lang/System;->setIn(Ljava/io/InputStream;)V

    .line 450
    move-object/from16 v18, v12

    invoke-static/range {v18 .. v18}, Ljava/lang/System;->setOut(Ljava/io/PrintStream;)V

    .line 451
    move-object/from16 v18, v12

    invoke-static/range {v18 .. v18}, Ljava/lang/System;->setErr(Ljava/io/PrintStream;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    .line 457
    .line 458
    goto/16 :goto_1

    .line 434
    .end local v7    # "port":I
    .end local v8    # "socket":Ljava/net/Socket;
    .end local v9    # "conn":Lkawa/Telnet;
    .end local v10    # "sin":Ljava/io/InputStream;
    .end local v11    # "sout":Ljava/io/OutputStream;
    .end local v12    # "pout":Ljava/io/PrintStream;
    :cond_38
    move-object/from16 v18, v2

    move/from16 v19, v3

    :try_start_4
    aget-object v18, v18, v19

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_2

    move-result v18

    move/from16 v7, v18

    .line 440
    .restart local v7    # "port":I
    goto :goto_7

    .line 436
    .end local v7    # "port":I
    :catch_2
    move-exception v18

    move-object/from16 v8, v18

    .line 438
    .local v8, "ex":Ljava/lang/NumberFormatException;
    const-string/jumbo v18, "--connect port#"

    invoke-static/range {v18 .. v18}, Lkawa/repl;->bad_option(Ljava/lang/String;)V

    .line 439
    const/16 v18, -0x1

    move/from16 v7, v18

    .restart local v7    # "port":I
    goto :goto_7

    .line 453
    .end local v8    # "ex":Ljava/lang/NumberFormatException;
    :catch_3
    move-exception v18

    move-object/from16 v8, v18

    .line 455
    .local v8, "ex":Ljava/io/IOException;
    move-object/from16 v18, v8

    sget-object v19, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual/range {v18 .. v19}, Ljava/io/IOException;->printStackTrace(Ljava/io/PrintStream;)V

    .line 456
    new-instance v18, Ljava/lang/Error;

    move-object/from16 v24, v18

    move-object/from16 v18, v24

    move-object/from16 v19, v24

    move-object/from16 v20, v8

    invoke-virtual/range {v20 .. v20}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-direct/range {v19 .. v20}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v18

    .line 459
    .end local v7    # "port":I
    .end local v8    # "ex":Ljava/io/IOException;
    :cond_39
    move-object/from16 v18, v6

    const-string/jumbo v19, "--server"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_3c

    .line 461
    invoke-static {}, Lkawa/repl;->getLanguage()V

    .line 462
    add-int/lit8 v3, v3, 0x1

    .line 463
    move/from16 v18, v3

    move/from16 v19, v4

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_3a

    .line 464
    move-object/from16 v18, v6

    invoke-static/range {v18 .. v18}, Lkawa/repl;->bad_option(Ljava/lang/String;)V

    .line 466
    :cond_3a
    move-object/from16 v18, v2

    move/from16 v19, v3

    aget-object v18, v18, v19

    const-string/jumbo v19, "-"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_3b

    .line 467
    const/16 v18, 0x0

    move/from16 v7, v18

    .line 482
    .restart local v7    # "port":I
    :goto_8
    :try_start_5
    new-instance v18, Ljava/net/ServerSocket;

    move-object/from16 v24, v18

    move-object/from16 v18, v24

    move-object/from16 v19, v24

    move/from16 v20, v7

    invoke-direct/range {v19 .. v20}, Ljava/net/ServerSocket;-><init>(I)V

    move-object/from16 v8, v18

    .line 484
    .local v8, "ssocket":Ljava/net/ServerSocket;
    move-object/from16 v18, v8

    invoke-virtual/range {v18 .. v18}, Ljava/net/ServerSocket;->getLocalPort()I

    move-result v18

    move/from16 v7, v18

    .line 485
    sget-object v18, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v19, Ljava/lang/StringBuilder;

    move-object/from16 v24, v19

    move-object/from16 v19, v24

    move-object/from16 v20, v24

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "Listening on port "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move/from16 v20, v7

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 488
    :goto_9
    sget-object v18, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string/jumbo v19, "waiting ... "

    invoke-virtual/range {v18 .. v19}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    sget-object v18, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual/range {v18 .. v18}, Ljava/io/PrintStream;->flush()V

    .line 489
    move-object/from16 v18, v8

    invoke-virtual/range {v18 .. v18}, Ljava/net/ServerSocket;->accept()Ljava/net/Socket;

    move-result-object v18

    move-object/from16 v9, v18

    .line 490
    .local v9, "client":Ljava/net/Socket;
    sget-object v18, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v19, Ljava/lang/StringBuilder;

    move-object/from16 v24, v19

    move-object/from16 v19, v24

    move-object/from16 v20, v24

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "got connection from "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v20, v9

    invoke-virtual/range {v20 .. v20}, Ljava/net/Socket;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string/jumbo v20, " port:"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v20, v9

    invoke-virtual/range {v20 .. v20}, Ljava/net/Socket;->getPort()I

    move-result v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 493
    invoke-static {}, Lgnu/expr/Language;->getDefaultLanguage()Lgnu/expr/Language;

    move-result-object v18

    move-object/from16 v19, v9

    invoke-static/range {v18 .. v19}, Lkawa/TelnetRepl;->serve(Lgnu/expr/Language;Ljava/net/Socket;)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_5

    .line 494
    goto :goto_9

    .line 472
    .end local v7    # "port":I
    .end local v8    # "ssocket":Ljava/net/ServerSocket;
    .end local v9    # "client":Ljava/net/Socket;
    :cond_3b
    move-object/from16 v18, v2

    move/from16 v19, v3

    :try_start_6
    aget-object v18, v18, v19

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_6
    .catch Ljava/lang/NumberFormatException; {:try_start_6 .. :try_end_6} :catch_4

    move-result v18

    move/from16 v7, v18

    .line 478
    .restart local v7    # "port":I
    goto/16 :goto_8

    .line 474
    .end local v7    # "port":I
    :catch_4
    move-exception v18

    move-object/from16 v8, v18

    .line 476
    .local v8, "ex":Ljava/lang/NumberFormatException;
    const-string/jumbo v18, "--server port#"

    invoke-static/range {v18 .. v18}, Lkawa/repl;->bad_option(Ljava/lang/String;)V

    .line 477
    const/16 v18, -0x1

    move/from16 v7, v18

    .restart local v7    # "port":I
    goto/16 :goto_8

    .line 496
    .end local v8    # "ex":Ljava/lang/NumberFormatException;
    :catch_5
    move-exception v18

    move-object/from16 v8, v18

    .line 498
    .local v8, "ex":Ljava/io/IOException;
    new-instance v18, Ljava/lang/Error;

    move-object/from16 v24, v18

    move-object/from16 v18, v24

    move-object/from16 v19, v24

    move-object/from16 v20, v8

    invoke-virtual/range {v20 .. v20}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-direct/range {v19 .. v20}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v18

    .line 501
    .end local v7    # "port":I
    .end local v8    # "ex":Ljava/io/IOException;
    :cond_3c
    move-object/from16 v18, v6

    const-string/jumbo v19, "--http-auto-handler"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_3e

    .line 503
    add-int/lit8 v3, v3, 0x2

    .line 504
    move/from16 v18, v3

    move/from16 v19, v4

    move/from16 v0, v18

    move/from16 v1, v19

    if-lt v0, v1, :cond_3d

    .line 505
    move-object/from16 v18, v6

    invoke-static/range {v18 .. v18}, Lkawa/repl;->bad_option(Ljava/lang/String;)V

    .line 521
    :cond_3d
    sget-object v18, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string/jumbo v19, "kawa: HttpServer classes not found"

    invoke-virtual/range {v18 .. v19}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 522
    const/16 v18, -0x1

    invoke-static/range {v18 .. v18}, Ljava/lang/System;->exit(I)V

    goto/16 :goto_1

    .line 525
    :cond_3e
    move-object/from16 v18, v6

    const-string/jumbo v19, "--http-start"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_40

    .line 527
    add-int/lit8 v3, v3, 0x1

    .line 528
    move/from16 v18, v3

    move/from16 v19, v4

    move/from16 v0, v18

    move/from16 v1, v19

    if-lt v0, v1, :cond_3f

    .line 529
    const-string/jumbo v18, "missing httpd port argument"

    invoke-static/range {v18 .. v18}, Lkawa/repl;->bad_option(Ljava/lang/String;)V

    .line 556
    :cond_3f
    sget-object v18, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string/jumbo v19, "kawa: HttpServer classes not found"

    invoke-virtual/range {v18 .. v19}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 557
    const/16 v18, -0x1

    invoke-static/range {v18 .. v18}, Ljava/lang/System;->exit(I)V

    goto/16 :goto_1

    .line 560
    :cond_40
    move-object/from16 v18, v6

    const-string/jumbo v19, "--main"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_41

    .line 562
    const/16 v18, 0x1

    sput-boolean v18, Lgnu/expr/Compilation;->generateMainDefault:Z

    goto/16 :goto_1

    .line 564
    :cond_41
    move-object/from16 v18, v6

    const-string/jumbo v19, "--applet"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_42

    .line 566
    sget v18, Lkawa/repl;->defaultParseOptions:I

    const/16 v19, 0x10

    or-int/lit8 v18, v18, 0x10

    sput v18, Lkawa/repl;->defaultParseOptions:I

    goto/16 :goto_1

    .line 568
    :cond_42
    move-object/from16 v18, v6

    const-string/jumbo v19, "--servlet"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_43

    .line 570
    sget v18, Lkawa/repl;->defaultParseOptions:I

    const/16 v19, 0x20

    or-int/lit8 v18, v18, 0x20

    sput v18, Lkawa/repl;->defaultParseOptions:I

    .line 571
    const/16 v18, 0x2

    sput v18, Lgnu/kawa/servlet/HttpRequestContext;->importServletDefinitions:I

    goto/16 :goto_1

    .line 573
    :cond_43
    move-object/from16 v18, v6

    const-string/jumbo v19, "--debug-dump-zip"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_44

    .line 575
    const-string/jumbo v18, "kawa-zip-dump-"

    sput-object v18, Lgnu/expr/ModuleExp;->dumpZipPrefix:Ljava/lang/String;

    goto/16 :goto_1

    .line 577
    :cond_44
    move-object/from16 v18, v6

    const-string/jumbo v19, "--debug-print-expr"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_45

    .line 579
    const/16 v18, 0x1

    sput-boolean v18, Lgnu/expr/Compilation;->debugPrintExpr:Z

    goto/16 :goto_1

    .line 581
    :cond_45
    move-object/from16 v18, v6

    const-string/jumbo v19, "--debug-print-final-expr"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_46

    .line 583
    const/16 v18, 0x1

    sput-boolean v18, Lgnu/expr/Compilation;->debugPrintFinalExpr:Z

    goto/16 :goto_1

    .line 585
    :cond_46
    move-object/from16 v18, v6

    const-string/jumbo v19, "--debug-error-prints-stack-trace"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_47

    .line 587
    const/16 v18, 0x1

    sput-boolean v18, Lgnu/text/SourceMessages;->debugStackTraceOnError:Z

    goto/16 :goto_1

    .line 589
    :cond_47
    move-object/from16 v18, v6

    const-string/jumbo v19, "--debug-warning-prints-stack-trace"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_48

    .line 591
    const/16 v18, 0x1

    sput-boolean v18, Lgnu/text/SourceMessages;->debugStackTraceOnWarning:Z

    goto/16 :goto_1

    .line 593
    :cond_48
    move-object/from16 v18, v6

    const-string/jumbo v19, "--module-nonstatic"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_49

    move-object/from16 v18, v6

    const-string/jumbo v19, "--no-module-static"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_4a

    .line 596
    :cond_49
    const/16 v18, -0x1

    sput v18, Lgnu/expr/Compilation;->moduleStatic:I

    goto/16 :goto_1

    .line 598
    :cond_4a
    move-object/from16 v18, v6

    const-string/jumbo v19, "--module-static"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_4b

    .line 600
    const/16 v18, 0x1

    sput v18, Lgnu/expr/Compilation;->moduleStatic:I

    goto/16 :goto_1

    .line 602
    :cond_4b
    move-object/from16 v18, v6

    const-string/jumbo v19, "--module-static-run"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_4c

    .line 604
    const/16 v18, 0x2

    sput v18, Lgnu/expr/Compilation;->moduleStatic:I

    goto/16 :goto_1

    .line 606
    :cond_4c
    move-object/from16 v18, v6

    const-string/jumbo v19, "--no-inline"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_4d

    move-object/from16 v18, v6

    const-string/jumbo v19, "--inline=none"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_4e

    .line 609
    :cond_4d
    const/16 v18, 0x0

    sput-boolean v18, Lgnu/expr/Compilation;->inlineOk:Z

    goto/16 :goto_1

    .line 611
    :cond_4e
    move-object/from16 v18, v6

    const-string/jumbo v19, "--no-console"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_4f

    .line 612
    const/16 v18, 0x1

    sput-boolean v18, Lkawa/repl;->noConsole:Z

    goto/16 :goto_1

    .line 613
    :cond_4f
    move-object/from16 v18, v6

    const-string/jumbo v19, "--inline"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_50

    .line 615
    const/16 v18, 0x1

    sput-boolean v18, Lgnu/expr/Compilation;->inlineOk:Z

    goto/16 :goto_1

    .line 617
    :cond_50
    move-object/from16 v18, v6

    const-string/jumbo v19, "--cps"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_51

    .line 619
    const/16 v18, 0x4

    sput v18, Lgnu/expr/Compilation;->defaultCallConvention:I

    goto/16 :goto_1

    .line 622
    :cond_51
    move-object/from16 v18, v6

    const-string/jumbo v19, "--full-tailcalls"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_52

    .line 624
    const/16 v18, 0x3

    sput v18, Lgnu/expr/Compilation;->defaultCallConvention:I

    goto/16 :goto_1

    .line 627
    :cond_52
    move-object/from16 v18, v6

    const-string/jumbo v19, "--no-full-tailcalls"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_53

    .line 629
    const/16 v18, 0x1

    sput v18, Lgnu/expr/Compilation;->defaultCallConvention:I

    goto/16 :goto_1

    .line 632
    :cond_53
    move-object/from16 v18, v6

    const-string/jumbo v19, "--pedantic"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_54

    .line 634
    const/16 v18, 0x1

    sput-boolean v18, Lgnu/expr/Language;->requirePedantic:Z

    goto/16 :goto_1

    .line 636
    :cond_54
    move-object/from16 v18, v6

    const-string/jumbo v19, "--help"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_55

    .line 638
    sget-object v18, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-static/range {v18 .. v18}, Lkawa/repl;->printOptions(Ljava/io/PrintStream;)V

    .line 639
    const/16 v18, 0x0

    invoke-static/range {v18 .. v18}, Ljava/lang/System;->exit(I)V

    goto/16 :goto_1

    .line 641
    :cond_55
    move-object/from16 v18, v6

    const-string/jumbo v19, "--author"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_56

    .line 643
    sget-object v18, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo v19, "Per Bothner <per@bothner.com>"

    invoke-virtual/range {v18 .. v19}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 644
    const/16 v18, 0x0

    invoke-static/range {v18 .. v18}, Ljava/lang/System;->exit(I)V

    goto/16 :goto_1

    .line 646
    :cond_56
    move-object/from16 v18, v6

    const-string/jumbo v19, "--version"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_57

    .line 648
    sget-object v18, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo v19, "Kawa "

    invoke-virtual/range {v18 .. v19}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 649
    sget-object v18, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-static {}, Lkawa/Version;->getVersion()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 650
    sget-object v18, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual/range {v18 .. v18}, Ljava/io/PrintStream;->println()V

    .line 651
    sget-object v18, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo v19, "Copyright (C) 2009 Per Bothner"

    invoke-virtual/range {v18 .. v19}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 652
    const/16 v18, 0x1

    move/from16 v5, v18

    goto/16 :goto_1

    .line 654
    :cond_57
    move-object/from16 v18, v6

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v18

    if-lez v18, :cond_62

    move-object/from16 v18, v6

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->charAt(I)C

    move-result v18

    const/16 v19, 0x2d

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_62

    .line 656
    move-object/from16 v18, v6

    move-object/from16 v7, v18

    .line 657
    .local v7, "name":Ljava/lang/String;
    move-object/from16 v18, v7

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v18

    const/16 v19, 0x2

    move/from16 v0, v18

    move/from16 v1, v19

    if-le v0, v1, :cond_58

    move-object/from16 v18, v7

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->charAt(I)C

    move-result v18

    const/16 v19, 0x2d

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_58

    .line 658
    move-object/from16 v18, v7

    move-object/from16 v19, v7

    const/16 v20, 0x1

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->charAt(I)C

    move-result v19

    const/16 v20, 0x2d

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_5a

    const/16 v19, 0x2

    :goto_a
    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v7, v18

    .line 659
    :cond_58
    move-object/from16 v18, v7

    invoke-static/range {v18 .. v18}, Lgnu/expr/Language;->getInstance(Ljava/lang/String;)Lgnu/expr/Language;

    move-result-object v18

    move-object/from16 v8, v18

    .line 660
    .local v8, "lang":Lgnu/expr/Language;
    move-object/from16 v18, v8

    if-eqz v18, :cond_5c

    .line 662
    sget-object v18, Lkawa/repl;->previousLanguage:Lgnu/expr/Language;

    if-nez v18, :cond_5b

    .line 663
    move-object/from16 v18, v8

    invoke-static/range {v18 .. v18}, Lgnu/expr/Language;->setDefaults(Lgnu/expr/Language;)V

    .line 666
    :goto_b
    move-object/from16 v18, v8

    sput-object v18, Lkawa/repl;->previousLanguage:Lgnu/expr/Language;

    .line 709
    :cond_59
    :goto_c
    goto/16 :goto_1

    .line 658
    .end local v8    # "lang":Lgnu/expr/Language;
    :cond_5a
    const/16 v19, 0x1

    goto :goto_a

    .line 665
    .restart local v8    # "lang":Lgnu/expr/Language;
    :cond_5b
    move-object/from16 v18, v8

    invoke-static/range {v18 .. v18}, Lgnu/expr/Language;->setCurrentLanguage(Lgnu/expr/Language;)V

    goto :goto_b

    .line 671
    :cond_5c
    move-object/from16 v18, v7

    const-string/jumbo v19, "="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v18

    move/from16 v9, v18

    .line 673
    .local v9, "eq":I
    move/from16 v18, v9

    if-gez v18, :cond_5f

    .line 674
    const/16 v18, 0x0

    move-object/from16 v10, v18

    .line 682
    .local v10, "opt_value":Ljava/lang/String;
    :goto_d
    move-object/from16 v18, v7

    const-string/jumbo v19, "no-"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_60

    move-object/from16 v18, v7

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v18

    const/16 v19, 0x3

    move/from16 v0, v18

    move/from16 v1, v19

    if-le v0, v1, :cond_60

    const/16 v18, 0x1

    :goto_e
    move/from16 v11, v18

    .line 684
    .local v11, "startsWithNo":Z
    move-object/from16 v18, v10

    if-nez v18, :cond_5d

    move/from16 v18, v11

    if-eqz v18, :cond_5d

    .line 686
    const-string/jumbo v18, "no"

    move-object/from16 v10, v18

    .line 687
    move-object/from16 v18, v7

    const/16 v19, 0x3

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v7, v18

    .line 690
    :cond_5d
    sget-object v18, Lgnu/expr/Compilation;->options:Lgnu/text/Options;

    move-object/from16 v19, v7

    move-object/from16 v20, v10

    invoke-virtual/range {v18 .. v20}, Lgnu/text/Options;->set(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v12, v18

    .line 691
    .local v12, "msg":Ljava/lang/String;
    move-object/from16 v18, v12

    if-eqz v18, :cond_59

    .line 694
    move/from16 v18, v11

    if-eqz v18, :cond_5e

    move-object/from16 v18, v12

    const-string/jumbo v19, "unknown option name"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    if-ne v0, v1, :cond_5e

    .line 695
    new-instance v18, Ljava/lang/StringBuilder;

    move-object/from16 v24, v18

    move-object/from16 v18, v24

    move-object/from16 v19, v24

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "both \'--no-\' prefix and \'="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v19, v10

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string/jumbo v19, "\' specified"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v12, v18

    .line 697
    :cond_5e
    move-object/from16 v18, v12

    const-string/jumbo v19, "unknown option name"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    if-ne v0, v1, :cond_61

    .line 699
    move-object/from16 v18, v6

    invoke-static/range {v18 .. v18}, Lkawa/repl;->bad_option(Ljava/lang/String;)V

    goto/16 :goto_c

    .line 677
    .end local v10    # "opt_value":Ljava/lang/String;
    .end local v11    # "startsWithNo":Z
    .end local v12    # "msg":Ljava/lang/String;
    :cond_5f
    move-object/from16 v18, v7

    move/from16 v19, v9

    const/16 v20, 0x1

    add-int/lit8 v19, v19, 0x1

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v10, v18

    .line 678
    .restart local v10    # "opt_value":Ljava/lang/String;
    move-object/from16 v18, v7

    const/16 v19, 0x0

    move/from16 v20, v9

    invoke-virtual/range {v18 .. v20}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v7, v18

    goto/16 :goto_d

    .line 682
    :cond_60
    const/16 v18, 0x0

    goto/16 :goto_e

    .line 703
    .restart local v11    # "startsWithNo":Z
    .restart local v12    # "msg":Ljava/lang/String;
    :cond_61
    sget-object v18, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v19, Ljava/lang/StringBuilder;

    move-object/from16 v24, v19

    move-object/from16 v19, v24

    move-object/from16 v20, v24

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "kawa: bad option \'"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v20, v6

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string/jumbo v20, "\': "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v20, v12

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 705
    const/16 v18, -0x1

    invoke-static/range {v18 .. v18}, Ljava/lang/System;->exit(I)V

    goto/16 :goto_c

    .line 710
    .end local v7    # "name":Ljava/lang/String;
    .end local v8    # "lang":Lgnu/expr/Language;
    .end local v9    # "eq":I
    .end local v10    # "opt_value":Ljava/lang/String;
    .end local v11    # "startsWithNo":Z
    .end local v12    # "msg":Ljava/lang/String;
    :cond_62
    move-object/from16 v18, v6

    invoke-static/range {v18 .. v18}, Lgnu/expr/ApplicationMainSupport;->processSetProperty(Ljava/lang/String;)Z

    move-result v18

    if-nez v18, :cond_4

    .line 711
    .line 713
    .end local v6    # "arg":Ljava/lang/String;
    :cond_63
    move/from16 v18, v5

    if-eqz v18, :cond_64

    const/16 v18, -0x1

    :goto_f
    move/from16 v2, v18

    goto/16 :goto_3

    :cond_64
    move/from16 v18, v3

    goto :goto_f
.end method

.method public static setArgs([Ljava/lang/String;I)V
    .locals 4

    .prologue
    .line 150
    move-object v0, p0

    .local v0, "args":[Ljava/lang/String;
    move v1, p1

    .local v1, "arg_start":I
    move-object v2, v0

    move v3, v1

    invoke-static {v2, v3}, Lgnu/expr/ApplicationMainSupport;->setArgs([Ljava/lang/String;I)V

    .line 151
    return-void
.end method

.method public static shouldUseGuiConsole()Z
    .locals 4

    .prologue
    .line 870
    sget-boolean v1, Lkawa/repl;->noConsole:Z

    if-eqz v1, :cond_0

    .line 871
    const/4 v1, 0x1

    move v0, v1

    .line 882
    :goto_0
    return v0

    .line 874
    :cond_0
    :try_start_0
    const-string/jumbo v1, "java.lang.System"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string/jumbo v2, "console"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    if-nez v1, :cond_1

    .line 877
    const/4 v1, 0x1

    move v0, v1

    goto :goto_0

    .line 881
    .line 882
    :cond_1
    :goto_1
    const/4 v1, 0x0

    move v0, v1

    goto :goto_0

    .line 879
    :catch_0
    move-exception v1

    move-object v0, v1

    goto :goto_1
.end method

.method private static startGuiConsole()V
    .locals 5

    .prologue
    .line 891
    :try_start_0
    const-string/jumbo v1, "kawa.GuiConsole"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 897
    .line 898
    .local v0, "ex":Ljava/lang/Exception;
    :goto_0
    return-void

    .line 893
    .end local v0    # "ex":Ljava/lang/Exception;
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 895
    .restart local v0    # "ex":Ljava/lang/Exception;
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "failed to create Kawa window: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 896
    const/4 v1, -0x1

    invoke-static {v1}, Ljava/lang/System;->exit(I)V

    goto :goto_0
.end method


# virtual methods
.method public apply0()Ljava/lang/Object;
    .locals 3

    .prologue
    .line 32
    move-object v0, p0

    .local v0, "this":Lkawa/repl;
    move-object v1, v0

    iget-object v1, v1, Lkawa/repl;->language:Lgnu/expr/Language;

    invoke-static {}, Lgnu/mapping/Environment;->getCurrent()Lgnu/mapping/Environment;

    move-result-object v2

    invoke-static {v1, v2}, Lkawa/Shell;->run(Lgnu/expr/Language;Lgnu/mapping/Environment;)Z

    move-result v1

    .line 33
    sget-object v1, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    move-object v0, v1

    .end local v0    # "this":Lkawa/repl;
    return-object v0
.end method

.method public apply1(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .prologue
    .line 38
    move-object v0, p0

    .local v0, "this":Lkawa/repl;
    move-object v1, p1

    .local v1, "env":Ljava/lang/Object;
    move-object v2, v0

    iget-object v2, v2, Lkawa/repl;->language:Lgnu/expr/Language;

    move-object v3, v1

    check-cast v3, Lgnu/mapping/Environment;

    invoke-static {v2, v3}, Lkawa/Shell;->run(Lgnu/expr/Language;Lgnu/mapping/Environment;)Z

    move-result v2

    .line 39
    sget-object v2, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    move-object v0, v2

    .end local v0    # "this":Lkawa/repl;
    return-object v0
.end method
