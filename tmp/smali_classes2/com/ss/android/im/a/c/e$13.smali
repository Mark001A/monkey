.class public Lcom/ss/android/im/a/c/e$13;
.super Lcom/ss/android/im/a/d/a;
.source "SessionModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/android/im/a/c/e;->a(Ljava/util/List;Lcom/ss/android/im/client/b/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field public static a:Lcom/meituan/robust/ChangeQuickRedirect;


# instance fields
.field final synthetic b:Ljava/util/List;

.field final synthetic c:Lcom/ss/android/im/client/b/a;

.field final synthetic d:Lcom/ss/android/im/a/c/e;


# direct methods
.method constructor <init>(Lcom/ss/android/im/a/c/e;Ljava/util/List;Lcom/ss/android/im/client/b/a;)V
    .locals 0

    .prologue
    .line 251
    iput-object p1, p0, Lcom/ss/android/im/a/c/e$13;->d:Lcom/ss/android/im/a/c/e;

    iput-object p2, p0, Lcom/ss/android/im/a/c/e$13;->b:Ljava/util/List;

    iput-object p3, p0, Lcom/ss/android/im/a/c/e$13;->c:Lcom/ss/android/im/client/b/a;

    invoke-direct {p0}, Lcom/ss/android/im/a/d/a;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/16 v4, 0xaa8

    const/4 v3, 0x0

    new-array v0, v3, [Ljava/lang/Object;

    sget-object v2, Lcom/ss/android/im/a/c/e$13;->a:Lcom/meituan/robust/ChangeQuickRedirect;

    new-array v5, v3, [Ljava/lang/Class;

    sget-object v6, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    move-object v1, p0

    invoke-static/range {v0 .. v6}, Lcom/meituan/robust/PatchProxy;->isSupport([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZI[Ljava/lang/Class;Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-array v0, v3, [Ljava/lang/Object;

    sget-object v2, Lcom/ss/android/im/a/c/e$13;->a:Lcom/meituan/robust/ChangeQuickRedirect;

    new-array v5, v3, [Ljava/lang/Class;

    sget-object v6, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    move-object v1, p0

    invoke-static/range {v0 .. v6}, Lcom/meituan/robust/PatchProxy;->accessDispatch([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZI[Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/Object;

    .line 264
    :goto_0
    return-void

    .line 254
    :cond_0
    iget-object v0, p0, Lcom/ss/android/im/a/c/e$13;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 255
    iget-object v2, p0, Lcom/ss/android/im/a/c/e$13;->d:Lcom/ss/android/im/a/c/e;

    invoke-static {v2}, Lcom/ss/android/im/a/c/e;->c(Lcom/ss/android/im/a/c/e;)Ljava/util/LinkedHashMap;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 257
    :cond_1
    invoke-static {}, Lcom/ss/android/im/a/a;->c()Lcom/ss/android/im/a/c/b;

    move-result-object v0

    iget-object v1, p0, Lcom/ss/android/im/a/c/e$13;->b:Ljava/util/List;

    invoke-interface {v0, v1}, Lcom/ss/android/im/a/c/b;->c(Ljava/util/List;)Z

    .line 258
    new-instance v0, Lcom/ss/android/im/a/c/e$13$1;

    invoke-direct {v0, p0}, Lcom/ss/android/im/a/c/e$13$1;-><init>(Lcom/ss/android/im/a/c/e$13;)V

    invoke-virtual {p0, v0}, Lcom/ss/android/im/a/c/e$13;->runOnUI(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
