.class public abstract Lgnu/kawa/models/Display;
.super Ljava/lang/Object;
.source "Display.java"


# static fields
.field public static myDisplay:Lgnu/mapping/ThreadLocation;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 14
    new-instance v0, Lgnu/mapping/ThreadLocation;

    move-object v3, v0

    move-object v0, v3

    move-object v1, v3

    const-string/jumbo v2, "my-display"

    invoke-direct {v1, v2}, Lgnu/mapping/ThreadLocation;-><init>(Ljava/lang/String;)V

    sput-object v0, Lgnu/kawa/models/Display;->myDisplay:Lgnu/mapping/ThreadLocation;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 12
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/models/Display;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static asDimension(Ljava/awt/geom/Dimension2D;)Ljava/awt/Dimension;
    .locals 9

    .prologue
    .line 84
    move-object v0, p0

    .local v0, "dim":Ljava/awt/geom/Dimension2D;
    move-object v1, v0

    instance-of v1, v1, Ljava/awt/Dimension;

    if-nez v1, :cond_0

    move-object v1, v0

    if-nez v1, :cond_1

    .line 85
    :cond_0
    move-object v1, v0

    check-cast v1, Ljava/awt/Dimension;

    move-object v0, v1

    .line 87
    .end local v0    # "dim":Ljava/awt/geom/Dimension2D;
    :goto_0
    return-object v0

    .restart local v0    # "dim":Ljava/awt/geom/Dimension2D;
    :cond_1
    new-instance v1, Ljava/awt/Dimension;

    move-object v8, v1

    move-object v1, v8

    move-object v2, v8

    move-object v3, v0

    invoke-virtual {v3}, Ljava/awt/geom/Dimension2D;->getWidth()D

    move-result-wide v3

    const-wide/high16 v5, 0x3fe0000000000000L    # 0.5

    add-double/2addr v3, v5

    double-to-int v3, v3

    move-object v4, v0

    invoke-virtual {v4}, Ljava/awt/geom/Dimension2D;->getHeight()D

    move-result-wide v4

    const-wide/high16 v6, 0x3fe0000000000000L    # 0.5

    add-double/2addr v4, v6

    double-to-int v4, v4

    invoke-direct {v2, v3, v4}, Ljava/awt/Dimension;-><init>(II)V

    move-object v0, v1

    goto :goto_0
.end method

.method public static getInstance()Lgnu/kawa/models/Display;
    .locals 12

    .prologue
    .line 18
    sget-object v7, Lgnu/kawa/models/Display;->myDisplay:Lgnu/mapping/ThreadLocation;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lgnu/mapping/ThreadLocation;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    move-object v0, v7

    .line 19
    .local v0, "d":Ljava/lang/Object;
    move-object v7, v0

    instance-of v7, v7, Lgnu/kawa/models/Display;

    if-eqz v7, :cond_0

    .line 20
    move-object v7, v0

    check-cast v7, Lgnu/kawa/models/Display;

    move-object v0, v7

    .line 45
    .end local v0    # "d":Ljava/lang/Object;
    .local v1, "name":Ljava/lang/String;
    .local v2, "noClasses":[Ljava/lang/Class;
    .local v3, "comma":I
    .local v4, "rest":Ljava/lang/String;
    .local v5, "clas":Ljava/lang/Class;
    .local v6, "method":Ljava/lang/reflect/Method;
    :goto_0
    return-object v0

    .line 21
    .end local v1    # "name":Ljava/lang/String;
    .end local v2    # "noClasses":[Ljava/lang/Class;
    .end local v3    # "comma":I
    .end local v4    # "rest":Ljava/lang/String;
    .end local v5    # "clas":Ljava/lang/Class;
    .end local v6    # "method":Ljava/lang/reflect/Method;
    .restart local v0    # "d":Ljava/lang/Object;
    :cond_0
    move-object v7, v0

    if-nez v7, :cond_3

    const-string/jumbo v7, "swing"

    :goto_1
    move-object v1, v7

    .line 22
    .restart local v1    # "name":Ljava/lang/String;
    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Class;

    move-object v2, v7

    .line 25
    .restart local v2    # "noClasses":[Ljava/lang/Class;
    :goto_2
    move-object v7, v1

    const/16 v8, 0x2c

    invoke-virtual {v7, v8}, Ljava/lang/String;->indexOf(I)I

    move-result v7

    move v3, v7

    .line 26
    .restart local v3    # "comma":I
    const/4 v7, 0x0

    move-object v4, v7

    .line 27
    .restart local v4    # "rest":Ljava/lang/String;
    move v7, v3

    if-ltz v7, :cond_1

    .line 29
    move-object v7, v1

    move v8, v3

    const/4 v9, 0x1

    add-int/lit8 v8, v8, 0x1

    invoke-virtual {v7, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    move-object v4, v7

    .line 30
    move-object v7, v1

    const/4 v8, 0x0

    move v9, v3

    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    move-object v1, v7

    .line 33
    :cond_1
    move-object v7, v1

    const-string/jumbo v8, "swing"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 34
    const-string/jumbo v7, "gnu.kawa.swingviews.SwingDisplay"

    move-object v1, v7

    .line 42
    :cond_2
    :goto_3
    move-object v7, v1

    :try_start_0
    invoke-static {v7}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v7

    move-object v5, v7

    .line 43
    .restart local v5    # "clas":Ljava/lang/Class;
    move-object v7, v5

    const-string/jumbo v8, "getInstance"

    move-object v9, v2

    invoke-virtual {v7, v8, v9}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    move-object v6, v7

    .line 45
    .restart local v6    # "method":Ljava/lang/reflect/Method;
    move-object v7, v6

    const/4 v8, 0x0

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/Object;

    invoke-virtual {v7, v8, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lgnu/kawa/models/Display;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    move-object v0, v7

    goto :goto_0

    .line 21
    .end local v1    # "name":Ljava/lang/String;
    .end local v2    # "noClasses":[Ljava/lang/Class;
    .end local v3    # "comma":I
    .end local v4    # "rest":Ljava/lang/String;
    .end local v5    # "clas":Ljava/lang/Class;
    .end local v6    # "method":Ljava/lang/reflect/Method;
    :cond_3
    move-object v7, v0

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    goto :goto_1

    .line 35
    .restart local v1    # "name":Ljava/lang/String;
    .restart local v2    # "noClasses":[Ljava/lang/Class;
    .restart local v3    # "comma":I
    .restart local v4    # "rest":Ljava/lang/String;
    :cond_4
    move-object v7, v1

    const-string/jumbo v8, "swt"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 36
    const-string/jumbo v7, "gnu.kawa.swtviews.SwtDisplay"

    move-object v1, v7

    goto :goto_3

    .line 37
    :cond_5
    move-object v7, v1

    const-string/jumbo v8, "echo2"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 38
    const-string/jumbo v7, "gnu.kawa.echo2.Echo2Display"

    move-object v1, v7

    goto :goto_3

    .line 47
    :catch_0
    move-exception v7

    move-object v5, v7

    .line 49
    .local v5, "ex":Ljava/lang/ClassNotFoundException;
    move-object v7, v4

    if-nez v7, :cond_6

    .line 50
    new-instance v7, Ljava/lang/RuntimeException;

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    new-instance v9, Ljava/lang/StringBuilder;

    move-object v11, v9

    move-object v9, v11

    move-object v10, v11

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "no display toolkit: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object v10, v0

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 51
    :cond_6
    move-object v7, v4

    move-object v1, v7

    .line 57
    goto/16 :goto_2

    .line 53
    .end local v5    # "ex":Ljava/lang/ClassNotFoundException;
    :catch_1
    move-exception v7

    move-object v5, v7

    .line 55
    .local v5, "ex":Ljava/lang/Throwable;
    move-object v7, v5

    invoke-static {v7}, Lgnu/mapping/WrappedException;->wrapIfNeeded(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v7

    throw v7
.end method


# virtual methods
.method public abstract addBox(Lgnu/kawa/models/Box;Ljava/lang/Object;)V
.end method

.method public abstract addButton(Lgnu/kawa/models/Button;Ljava/lang/Object;)V
.end method

.method public abstract addImage(Lgnu/kawa/models/DrawImage;Ljava/lang/Object;)V
.end method

.method public abstract addLabel(Lgnu/kawa/models/Label;Ljava/lang/Object;)V
.end method

.method public addSpacer(Lgnu/kawa/models/Spacer;Ljava/lang/Object;)V
    .locals 7

    .prologue
    .line 75
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/models/Display;
    move-object v1, p1

    .local v1, "model":Lgnu/kawa/models/Spacer;
    move-object v2, p2

    .local v2, "where":Ljava/lang/Object;
    new-instance v3, Ljava/lang/Error;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    const-string/jumbo v5, "makeView called on Spacer"

    invoke-direct {v4, v5}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public addText(Lgnu/kawa/models/Text;Ljava/lang/Object;)V
    .locals 7

    .prologue
    .line 70
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/models/Display;
    move-object v1, p1

    .local v1, "model":Lgnu/kawa/models/Text;
    move-object v2, p2

    .local v2, "where":Ljava/lang/Object;
    new-instance v3, Ljava/lang/Error;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    const-string/jumbo v5, "makeView called on Text"

    invoke-direct {v4, v5}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public abstract addView(Ljava/lang/Object;Ljava/lang/Object;)V
.end method

.method public coerceToModel(Ljava/lang/Object;)Lgnu/kawa/models/Model;
    .locals 6

    .prologue
    .line 93
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/models/Display;
    move-object v1, p1

    .local v1, "component":Ljava/lang/Object;
    move-object v2, v1

    instance-of v2, v2, Lgnu/lists/FString;

    if-nez v2, :cond_0

    move-object v2, v1

    instance-of v2, v2, Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 94
    :cond_0
    new-instance v2, Lgnu/kawa/models/Label;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v1

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lgnu/kawa/models/Label;-><init>(Ljava/lang/String;)V

    move-object v0, v2

    .line 95
    .end local v0    # "this":Lgnu/kawa/models/Display;
    :goto_0
    return-object v0

    .restart local v0    # "this":Lgnu/kawa/models/Display;
    :cond_1
    move-object v2, v1

    check-cast v2, Lgnu/kawa/models/Model;

    move-object v0, v2

    goto :goto_0
.end method

.method public abstract makeWindow()Lgnu/kawa/models/Window;
.end method
