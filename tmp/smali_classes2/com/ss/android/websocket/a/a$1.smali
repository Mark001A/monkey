.class public final Lcom/ss/android/websocket/a/a$1;
.super Ljava/lang/Object;
.source "OkHttpUtils.java"

# interfaces
.implements Ljava/util/concurrent/ThreadFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/android/websocket/a/a;->a(Ljava/lang/String;Z)Ljava/util/concurrent/ThreadFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Z


# direct methods
.method constructor <init>(Ljava/lang/String;Z)V
    .locals 0

    .prologue
    .line 34
    iput-object p1, p0, Lcom/ss/android/websocket/a/a$1;->a:Ljava/lang/String;

    iput-boolean p2, p0, Lcom/ss/android/websocket/a/a$1;->b:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .locals 2

    .prologue
    .line 37
    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lcom/ss/android/websocket/a/a$1;->a:Ljava/lang/String;

    invoke-direct {v0, p1, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 38
    iget-boolean v1, p0, Lcom/ss/android/websocket/a/a$1;->b:Z

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 40
    new-instance v1, Lcom/ss/android/websocket/a/a$1$1;

    invoke-direct {v1, p0}, Lcom/ss/android/websocket/a/a$1$1;-><init>(Lcom/ss/android/websocket/a/a$1;)V

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 48
    return-object v0
.end method
