.class public Lcom/ss/android/ugc/live/video/d/d$5$1;
.super Ljava/lang/Object;
.source "TTEngineThread.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/android/ugc/live/video/d/d$5;->d(Lcom/ss/ttvideoengine/d;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field public static a:Lcom/meituan/robust/ChangeQuickRedirect;


# instance fields
.field final synthetic b:Lcom/ss/android/ugc/live/video/d/d$5;


# direct methods
.method constructor <init>(Lcom/ss/android/ugc/live/video/d/d$5;)V
    .locals 0

    .prologue
    .line 257
    iput-object p1, p0, Lcom/ss/android/ugc/live/video/d/d$5$1;->b:Lcom/ss/android/ugc/live/video/d/d$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/16 v4, 0x3c13

    const/4 v3, 0x0

    new-array v0, v3, [Ljava/lang/Object;

    sget-object v2, Lcom/ss/android/ugc/live/video/d/d$5$1;->a:Lcom/meituan/robust/ChangeQuickRedirect;

    new-array v5, v3, [Ljava/lang/Class;

    sget-object v6, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    move-object v1, p0

    invoke-static/range {v0 .. v6}, Lcom/meituan/robust/PatchProxy;->isSupport([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZI[Ljava/lang/Class;Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-array v0, v3, [Ljava/lang/Object;

    sget-object v2, Lcom/ss/android/ugc/live/video/d/d$5$1;->a:Lcom/meituan/robust/ChangeQuickRedirect;

    new-array v5, v3, [Ljava/lang/Class;

    sget-object v6, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    move-object v1, p0

    invoke-static/range {v0 .. v6}, Lcom/meituan/robust/PatchProxy;->accessDispatch([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZI[Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/Object;

    .line 263
    :cond_0
    :goto_0
    return-void

    .line 260
    :cond_1
    iget-object v0, p0, Lcom/ss/android/ugc/live/video/d/d$5$1;->b:Lcom/ss/android/ugc/live/video/d/d$5;

    iget-object v0, v0, Lcom/ss/android/ugc/live/video/d/d$5;->b:Lcom/ss/android/ugc/live/video/d/d;

    iget-object v0, v0, Lcom/ss/android/ugc/live/video/d/d;->b:Lcom/ss/android/ugc/live/video/d/c$b;

    if-eqz v0, :cond_0

    .line 261
    iget-object v0, p0, Lcom/ss/android/ugc/live/video/d/d$5$1;->b:Lcom/ss/android/ugc/live/video/d/d$5;

    iget-object v0, v0, Lcom/ss/android/ugc/live/video/d/d$5;->b:Lcom/ss/android/ugc/live/video/d/d;

    iget-object v0, v0, Lcom/ss/android/ugc/live/video/d/d;->b:Lcom/ss/android/ugc/live/video/d/c$b;

    invoke-interface {v0}, Lcom/ss/android/ugc/live/video/d/c$b;->p()V

    goto :goto_0
.end method