.class Lgnu/bytecode/ClassType$AbstractMethodFilter;
.super Ljava/lang/Object;
.source "ClassType.java"

# interfaces
.implements Lgnu/bytecode/Filter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgnu/bytecode/ClassType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "AbstractMethodFilter"
.end annotation


# static fields
.field public static final instance:Lgnu/bytecode/ClassType$AbstractMethodFilter;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 856
    new-instance v0, Lgnu/bytecode/ClassType$AbstractMethodFilter;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Lgnu/bytecode/ClassType$AbstractMethodFilter;-><init>()V

    sput-object v0, Lgnu/bytecode/ClassType$AbstractMethodFilter;->instance:Lgnu/bytecode/ClassType$AbstractMethodFilter;

    return-void
.end method

.method constructor <init>()V
    .locals 2

    .prologue
    .line 854
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/ClassType$AbstractMethodFilter;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public select(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    .line 861
    move-object v0, p0

    .local v0, "this":Lgnu/bytecode/ClassType$AbstractMethodFilter;
    move-object v1, p1

    .local v1, "value":Ljava/lang/Object;
    move-object v3, v1

    check-cast v3, Lgnu/bytecode/Method;

    move-object v2, v3

    .line 862
    .local v2, "method":Lgnu/bytecode/Method;
    move-object v3, v2

    invoke-virtual {v3}, Lgnu/bytecode/Method;->isAbstract()Z

    move-result v3

    move v0, v3

    .end local v0    # "this":Lgnu/bytecode/ClassType$AbstractMethodFilter;
    return v0
.end method
