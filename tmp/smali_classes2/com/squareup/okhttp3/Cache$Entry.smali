.class public final Lcom/squareup/okhttp3/Cache$Entry;
.super Ljava/lang/Object;
.source "Cache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/squareup/okhttp3/Cache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Entry"
.end annotation


# static fields
.field private static final RECEIVED_MILLIS:Ljava/lang/String;

.field private static final SENT_MILLIS:Ljava/lang/String;


# instance fields
.field private final code:I

.field private final handshake:Lcom/squareup/okhttp3/Handshake;

.field private final message:Ljava/lang/String;

.field private final protocol:Lcom/squareup/okhttp3/Protocol;

.field private final receivedResponseMillis:J

.field private final requestMethod:Ljava/lang/String;

.field private final responseHeaders:Lcom/squareup/okhttp3/Headers;

.field private final sentRequestMillis:J

.field private final url:Ljava/lang/String;

.field private final varyHeaders:Lcom/squareup/okhttp3/Headers;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 475
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/squareup/okhttp3/internal/platform/Platform;->get()Lcom/squareup/okhttp3/internal/platform/Platform;

    move-result-object v1

    invoke-virtual {v1}, Lcom/squareup/okhttp3/internal/platform/Platform;->getPrefix()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-Sent-Millis"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/squareup/okhttp3/Cache$Entry;->SENT_MILLIS:Ljava/lang/String;

    .line 478
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/squareup/okhttp3/internal/platform/Platform;->get()Lcom/squareup/okhttp3/internal/platform/Platform;

    move-result-object v1

    invoke-virtual {v1}, Lcom/squareup/okhttp3/internal/platform/Platform;->getPrefix()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-Received-Millis"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/squareup/okhttp3/Cache$Entry;->RECEIVED_MILLIS:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/squareup/okhttp3/Response;)V
    .locals 2

    .prologue
    .line 593
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 594
    invoke-virtual {p1}, Lcom/squareup/okhttp3/Response;->request()Lcom/squareup/okhttp3/Request;

    move-result-object v0

    invoke-virtual {v0}, Lcom/squareup/okhttp3/Request;->url()Lcom/squareup/okhttp3/HttpUrl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/squareup/okhttp3/HttpUrl;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/squareup/okhttp3/Cache$Entry;->url:Ljava/lang/String;

    .line 595
    invoke-static {p1}, Lcom/squareup/okhttp3/internal/http/HttpHeaders;->varyHeaders(Lcom/squareup/okhttp3/Response;)Lcom/squareup/okhttp3/Headers;

    move-result-object v0

    iput-object v0, p0, Lcom/squareup/okhttp3/Cache$Entry;->varyHeaders:Lcom/squareup/okhttp3/Headers;

    .line 596
    invoke-virtual {p1}, Lcom/squareup/okhttp3/Response;->request()Lcom/squareup/okhttp3/Request;

    move-result-object v0

    invoke-virtual {v0}, Lcom/squareup/okhttp3/Request;->method()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/squareup/okhttp3/Cache$Entry;->requestMethod:Ljava/lang/String;

    .line 597
    invoke-virtual {p1}, Lcom/squareup/okhttp3/Response;->protocol()Lcom/squareup/okhttp3/Protocol;

    move-result-object v0

    iput-object v0, p0, Lcom/squareup/okhttp3/Cache$Entry;->protocol:Lcom/squareup/okhttp3/Protocol;

    .line 598
    invoke-virtual {p1}, Lcom/squareup/okhttp3/Response;->code()I

    move-result v0

    iput v0, p0, Lcom/squareup/okhttp3/Cache$Entry;->code:I

    .line 599
    invoke-virtual {p1}, Lcom/squareup/okhttp3/Response;->message()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/squareup/okhttp3/Cache$Entry;->message:Ljava/lang/String;

    .line 600
    invoke-virtual {p1}, Lcom/squareup/okhttp3/Response;->headers()Lcom/squareup/okhttp3/Headers;

    move-result-object v0

    iput-object v0, p0, Lcom/squareup/okhttp3/Cache$Entry;->responseHeaders:Lcom/squareup/okhttp3/Headers;

    .line 601
    invoke-virtual {p1}, Lcom/squareup/okhttp3/Response;->handshake()Lcom/squareup/okhttp3/Handshake;

    move-result-object v0

    iput-object v0, p0, Lcom/squareup/okhttp3/Cache$Entry;->handshake:Lcom/squareup/okhttp3/Handshake;

    .line 602
    invoke-virtual {p1}, Lcom/squareup/okhttp3/Response;->sentRequestAtMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/squareup/okhttp3/Cache$Entry;->sentRequestMillis:J

    .line 603
    invoke-virtual {p1}, Lcom/squareup/okhttp3/Response;->receivedResponseAtMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/squareup/okhttp3/Cache$Entry;->receivedResponseMillis:J

    .line 604
    return-void
.end method

.method public constructor <init>(Lcom/squareup/okio/Source;)V
    .locals 9

    .prologue
    const-wide/16 v2, 0x0

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 539
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 541
    :try_start_0
    invoke-static {p1}, Lcom/squareup/okio/Okio;->buffer(Lcom/squareup/okio/Source;)Lcom/squareup/okio/BufferedSource;

    move-result-object v6

    .line 542
    invoke-interface {v6}, Lcom/squareup/okio/BufferedSource;->readUtf8LineStrict()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/squareup/okhttp3/Cache$Entry;->url:Ljava/lang/String;

    .line 543
    invoke-interface {v6}, Lcom/squareup/okio/BufferedSource;->readUtf8LineStrict()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/squareup/okhttp3/Cache$Entry;->requestMethod:Ljava/lang/String;

    .line 544
    new-instance v5, Lcom/squareup/okhttp3/Headers$Builder;

    invoke-direct {v5}, Lcom/squareup/okhttp3/Headers$Builder;-><init>()V

    .line 545
    # invokes: Lcom/squareup/okhttp3/Cache;->readInt(Lcom/squareup/okio/BufferedSource;)I
    invoke-static {v6}, Lcom/squareup/okhttp3/Cache;->access$1000(Lcom/squareup/okio/BufferedSource;)I

    move-result v7

    move v4, v1

    .line 546
    :goto_0
    if-ge v4, v7, :cond_0

    .line 547
    invoke-interface {v6}, Lcom/squareup/okio/BufferedSource;->readUtf8LineStrict()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Lcom/squareup/okhttp3/Headers$Builder;->addLenient(Ljava/lang/String;)Lcom/squareup/okhttp3/Headers$Builder;

    .line 546
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 549
    :cond_0
    invoke-virtual {v5}, Lcom/squareup/okhttp3/Headers$Builder;->build()Lcom/squareup/okhttp3/Headers;

    move-result-object v4

    iput-object v4, p0, Lcom/squareup/okhttp3/Cache$Entry;->varyHeaders:Lcom/squareup/okhttp3/Headers;

    .line 551
    invoke-interface {v6}, Lcom/squareup/okio/BufferedSource;->readUtf8LineStrict()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/squareup/okhttp3/internal/http/StatusLine;->parse(Ljava/lang/String;)Lcom/squareup/okhttp3/internal/http/StatusLine;

    move-result-object v4

    .line 552
    iget-object v5, v4, Lcom/squareup/okhttp3/internal/http/StatusLine;->protocol:Lcom/squareup/okhttp3/Protocol;

    iput-object v5, p0, Lcom/squareup/okhttp3/Cache$Entry;->protocol:Lcom/squareup/okhttp3/Protocol;

    .line 553
    iget v5, v4, Lcom/squareup/okhttp3/internal/http/StatusLine;->code:I

    iput v5, p0, Lcom/squareup/okhttp3/Cache$Entry;->code:I

    .line 554
    iget-object v4, v4, Lcom/squareup/okhttp3/internal/http/StatusLine;->message:Ljava/lang/String;

    iput-object v4, p0, Lcom/squareup/okhttp3/Cache$Entry;->message:Ljava/lang/String;

    .line 555
    new-instance v7, Lcom/squareup/okhttp3/Headers$Builder;

    invoke-direct {v7}, Lcom/squareup/okhttp3/Headers$Builder;-><init>()V

    .line 556
    # invokes: Lcom/squareup/okhttp3/Cache;->readInt(Lcom/squareup/okio/BufferedSource;)I
    invoke-static {v6}, Lcom/squareup/okhttp3/Cache;->access$1000(Lcom/squareup/okio/BufferedSource;)I

    move-result v4

    .line 557
    :goto_1
    if-ge v1, v4, :cond_1

    .line 558
    invoke-interface {v6}, Lcom/squareup/okio/BufferedSource;->readUtf8LineStrict()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v5}, Lcom/squareup/okhttp3/Headers$Builder;->addLenient(Ljava/lang/String;)Lcom/squareup/okhttp3/Headers$Builder;

    .line 557
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 560
    :cond_1
    sget-object v1, Lcom/squareup/okhttp3/Cache$Entry;->SENT_MILLIS:Ljava/lang/String;

    invoke-virtual {v7, v1}, Lcom/squareup/okhttp3/Headers$Builder;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 561
    sget-object v4, Lcom/squareup/okhttp3/Cache$Entry;->RECEIVED_MILLIS:Ljava/lang/String;

    invoke-virtual {v7, v4}, Lcom/squareup/okhttp3/Headers$Builder;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 562
    sget-object v4, Lcom/squareup/okhttp3/Cache$Entry;->SENT_MILLIS:Ljava/lang/String;

    invoke-virtual {v7, v4}, Lcom/squareup/okhttp3/Headers$Builder;->removeAll(Ljava/lang/String;)Lcom/squareup/okhttp3/Headers$Builder;

    .line 563
    sget-object v4, Lcom/squareup/okhttp3/Cache$Entry;->RECEIVED_MILLIS:Ljava/lang/String;

    invoke-virtual {v7, v4}, Lcom/squareup/okhttp3/Headers$Builder;->removeAll(Ljava/lang/String;)Lcom/squareup/okhttp3/Headers$Builder;

    .line 564
    if-eqz v1, :cond_3

    .line 565
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    :goto_2
    iput-wide v4, p0, Lcom/squareup/okhttp3/Cache$Entry;->sentRequestMillis:J

    .line 567
    if-eqz v8, :cond_2

    .line 568
    invoke-static {v8}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    :cond_2
    iput-wide v2, p0, Lcom/squareup/okhttp3/Cache$Entry;->receivedResponseMillis:J

    .line 570
    invoke-virtual {v7}, Lcom/squareup/okhttp3/Headers$Builder;->build()Lcom/squareup/okhttp3/Headers;

    move-result-object v1

    iput-object v1, p0, Lcom/squareup/okhttp3/Cache$Entry;->responseHeaders:Lcom/squareup/okhttp3/Headers;

    .line 572
    invoke-direct {p0}, Lcom/squareup/okhttp3/Cache$Entry;->isHttps()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 573
    invoke-interface {v6}, Lcom/squareup/okio/BufferedSource;->readUtf8LineStrict()Ljava/lang/String;

    move-result-object v1

    .line 574
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_4

    .line 575
    new-instance v0, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "expected \"\" but was \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 589
    :catchall_0
    move-exception v0

    invoke-interface {p1}, Lcom/squareup/okio/Source;->close()V

    throw v0

    :cond_3
    move-wide v4, v2

    .line 565
    goto :goto_2

    .line 577
    :cond_4
    :try_start_1
    invoke-interface {v6}, Lcom/squareup/okio/BufferedSource;->readUtf8LineStrict()Ljava/lang/String;

    move-result-object v1

    .line 578
    invoke-static {v1}, Lcom/squareup/okhttp3/CipherSuite;->forJavaName(Ljava/lang/String;)Lcom/squareup/okhttp3/CipherSuite;

    move-result-object v1

    .line 579
    invoke-direct {p0, v6}, Lcom/squareup/okhttp3/Cache$Entry;->readCertificateList(Lcom/squareup/okio/BufferedSource;)Ljava/util/List;

    move-result-object v2

    .line 580
    invoke-direct {p0, v6}, Lcom/squareup/okhttp3/Cache$Entry;->readCertificateList(Lcom/squareup/okio/BufferedSource;)Ljava/util/List;

    move-result-object v3

    .line 581
    invoke-interface {v6}, Lcom/squareup/okio/BufferedSource;->exhausted()Z

    move-result v4

    if-nez v4, :cond_5

    .line 582
    invoke-interface {v6}, Lcom/squareup/okio/BufferedSource;->readUtf8LineStrict()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/squareup/okhttp3/TlsVersion;->forJavaName(Ljava/lang/String;)Lcom/squareup/okhttp3/TlsVersion;

    move-result-object v0

    .line 584
    :cond_5
    invoke-static {v0, v1, v2, v3}, Lcom/squareup/okhttp3/Handshake;->get(Lcom/squareup/okhttp3/TlsVersion;Lcom/squareup/okhttp3/CipherSuite;Ljava/util/List;Ljava/util/List;)Lcom/squareup/okhttp3/Handshake;

    move-result-object v0

    iput-object v0, p0, Lcom/squareup/okhttp3/Cache$Entry;->handshake:Lcom/squareup/okhttp3/Handshake;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 589
    :goto_3
    invoke-interface {p1}, Lcom/squareup/okio/Source;->close()V

    .line 591
    return-void

    .line 586
    :cond_6
    const/4 v0, 0x0

    :try_start_2
    iput-object v0, p0, Lcom/squareup/okhttp3/Cache$Entry;->handshake:Lcom/squareup/okhttp3/Handshake;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_3
.end method

.method private isHttps()Z
    .locals 2

    .prologue
    .line 657
    iget-object v0, p0, Lcom/squareup/okhttp3/Cache$Entry;->url:Ljava/lang/String;

    const-string v1, "https://"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private readCertificateList(Lcom/squareup/okio/BufferedSource;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/squareup/okio/BufferedSource;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/security/cert/Certificate;",
            ">;"
        }
    .end annotation

    .prologue
    .line 661
    # invokes: Lcom/squareup/okhttp3/Cache;->readInt(Lcom/squareup/okio/BufferedSource;)I
    invoke-static {p1}, Lcom/squareup/okhttp3/Cache;->access$1000(Lcom/squareup/okio/BufferedSource;)I

    move-result v2

    .line 662
    const/4 v0, -0x1

    if-ne v2, v0, :cond_1

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 673
    :cond_0
    return-object v0

    .line 665
    :cond_1
    :try_start_0
    const-string v0, "X.509"

    invoke-static {v0}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v3

    .line 666
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 667
    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_0

    .line 668
    invoke-interface {p1}, Lcom/squareup/okio/BufferedSource;->readUtf8LineStrict()Ljava/lang/String;

    move-result-object v4

    .line 669
    new-instance v5, Lcom/squareup/okio/Buffer;

    invoke-direct {v5}, Lcom/squareup/okio/Buffer;-><init>()V

    .line 670
    invoke-static {v4}, Lcom/squareup/okio/ByteString;->decodeBase64(Ljava/lang/String;)Lcom/squareup/okio/ByteString;

    move-result-object v4

    invoke-virtual {v5, v4}, Lcom/squareup/okio/Buffer;->write(Lcom/squareup/okio/ByteString;)Lcom/squareup/okio/Buffer;

    .line 671
    invoke-virtual {v5}, Lcom/squareup/okio/Buffer;->inputStream()Ljava/io/InputStream;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 667
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 674
    :catch_0
    move-exception v0

    .line 675
    new-instance v1, Ljava/io/IOException;

    invoke-virtual {v0}, Ljava/security/cert/CertificateException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private writeCertList(Lcom/squareup/okio/BufferedSink;Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/squareup/okio/BufferedSink;",
            "Ljava/util/List",
            "<",
            "Ljava/security/cert/Certificate;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 682
    :try_start_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    int-to-long v0, v0

    invoke-interface {p1, v0, v1}, Lcom/squareup/okio/BufferedSink;->writeDecimalLong(J)Lcom/squareup/okio/BufferedSink;

    move-result-object v0

    const/16 v1, 0xa

    .line 683
    invoke-interface {v0, v1}, Lcom/squareup/okio/BufferedSink;->writeByte(I)Lcom/squareup/okio/BufferedSink;

    .line 684
    const/4 v0, 0x0

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_0

    .line 685
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/cert/Certificate;

    invoke-virtual {v0}, Ljava/security/cert/Certificate;->getEncoded()[B

    move-result-object v0

    .line 686
    invoke-static {v0}, Lcom/squareup/okio/ByteString;->of([B)Lcom/squareup/okio/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/squareup/okio/ByteString;->base64()Ljava/lang/String;

    move-result-object v0

    .line 687
    invoke-interface {p1, v0}, Lcom/squareup/okio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lcom/squareup/okio/BufferedSink;

    move-result-object v0

    const/16 v3, 0xa

    .line 688
    invoke-interface {v0, v3}, Lcom/squareup/okio/BufferedSink;->writeByte(I)Lcom/squareup/okio/BufferedSink;
    :try_end_0
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 684
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 690
    :catch_0
    move-exception v0

    .line 691
    new-instance v1, Ljava/io/IOException;

    invoke-virtual {v0}, Ljava/security/cert/CertificateEncodingException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 693
    :cond_0
    return-void
.end method


# virtual methods
.method public matches(Lcom/squareup/okhttp3/Request;Lcom/squareup/okhttp3/Response;)Z
    .locals 2

    .prologue
    .line 696
    iget-object v0, p0, Lcom/squareup/okhttp3/Cache$Entry;->url:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/squareup/okhttp3/Request;->url()Lcom/squareup/okhttp3/HttpUrl;

    move-result-object v1

    invoke-virtual {v1}, Lcom/squareup/okhttp3/HttpUrl;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/squareup/okhttp3/Cache$Entry;->requestMethod:Ljava/lang/String;

    .line 697
    invoke-virtual {p1}, Lcom/squareup/okhttp3/Request;->method()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/squareup/okhttp3/Cache$Entry;->varyHeaders:Lcom/squareup/okhttp3/Headers;

    .line 698
    invoke-static {p2, v0, p1}, Lcom/squareup/okhttp3/internal/http/HttpHeaders;->varyMatches(Lcom/squareup/okhttp3/Response;Lcom/squareup/okhttp3/Headers;Lcom/squareup/okhttp3/Request;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 696
    :goto_0
    return v0

    .line 698
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public response(Lcom/squareup/okhttp3/internal/cache/DiskLruCache$Snapshot;)Lcom/squareup/okhttp3/Response;
    .locals 5

    .prologue
    .line 702
    iget-object v0, p0, Lcom/squareup/okhttp3/Cache$Entry;->responseHeaders:Lcom/squareup/okhttp3/Headers;

    const-string v1, "Content-Type"

    invoke-virtual {v0, v1}, Lcom/squareup/okhttp3/Headers;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 703
    iget-object v1, p0, Lcom/squareup/okhttp3/Cache$Entry;->responseHeaders:Lcom/squareup/okhttp3/Headers;

    const-string v2, "Content-Length"

    invoke-virtual {v1, v2}, Lcom/squareup/okhttp3/Headers;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 704
    new-instance v2, Lcom/squareup/okhttp3/Request$Builder;

    invoke-direct {v2}, Lcom/squareup/okhttp3/Request$Builder;-><init>()V

    iget-object v3, p0, Lcom/squareup/okhttp3/Cache$Entry;->url:Ljava/lang/String;

    .line 705
    invoke-virtual {v2, v3}, Lcom/squareup/okhttp3/Request$Builder;->url(Ljava/lang/String;)Lcom/squareup/okhttp3/Request$Builder;

    move-result-object v2

    iget-object v3, p0, Lcom/squareup/okhttp3/Cache$Entry;->requestMethod:Ljava/lang/String;

    const/4 v4, 0x0

    .line 706
    invoke-virtual {v2, v3, v4}, Lcom/squareup/okhttp3/Request$Builder;->method(Ljava/lang/String;Lcom/squareup/okhttp3/RequestBody;)Lcom/squareup/okhttp3/Request$Builder;

    move-result-object v2

    iget-object v3, p0, Lcom/squareup/okhttp3/Cache$Entry;->varyHeaders:Lcom/squareup/okhttp3/Headers;

    .line 707
    invoke-virtual {v2, v3}, Lcom/squareup/okhttp3/Request$Builder;->headers(Lcom/squareup/okhttp3/Headers;)Lcom/squareup/okhttp3/Request$Builder;

    move-result-object v2

    .line 708
    invoke-virtual {v2}, Lcom/squareup/okhttp3/Request$Builder;->build()Lcom/squareup/okhttp3/Request;

    move-result-object v2

    .line 709
    new-instance v3, Lcom/squareup/okhttp3/Response$Builder;

    invoke-direct {v3}, Lcom/squareup/okhttp3/Response$Builder;-><init>()V

    .line 710
    invoke-virtual {v3, v2}, Lcom/squareup/okhttp3/Response$Builder;->request(Lcom/squareup/okhttp3/Request;)Lcom/squareup/okhttp3/Response$Builder;

    move-result-object v2

    iget-object v3, p0, Lcom/squareup/okhttp3/Cache$Entry;->protocol:Lcom/squareup/okhttp3/Protocol;

    .line 711
    invoke-virtual {v2, v3}, Lcom/squareup/okhttp3/Response$Builder;->protocol(Lcom/squareup/okhttp3/Protocol;)Lcom/squareup/okhttp3/Response$Builder;

    move-result-object v2

    iget v3, p0, Lcom/squareup/okhttp3/Cache$Entry;->code:I

    .line 712
    invoke-virtual {v2, v3}, Lcom/squareup/okhttp3/Response$Builder;->code(I)Lcom/squareup/okhttp3/Response$Builder;

    move-result-object v2

    iget-object v3, p0, Lcom/squareup/okhttp3/Cache$Entry;->message:Ljava/lang/String;

    .line 713
    invoke-virtual {v2, v3}, Lcom/squareup/okhttp3/Response$Builder;->message(Ljava/lang/String;)Lcom/squareup/okhttp3/Response$Builder;

    move-result-object v2

    iget-object v3, p0, Lcom/squareup/okhttp3/Cache$Entry;->responseHeaders:Lcom/squareup/okhttp3/Headers;

    .line 714
    invoke-virtual {v2, v3}, Lcom/squareup/okhttp3/Response$Builder;->headers(Lcom/squareup/okhttp3/Headers;)Lcom/squareup/okhttp3/Response$Builder;

    move-result-object v2

    new-instance v3, Lcom/squareup/okhttp3/Cache$CacheResponseBody;

    invoke-direct {v3, p1, v0, v1}, Lcom/squareup/okhttp3/Cache$CacheResponseBody;-><init>(Lcom/squareup/okhttp3/internal/cache/DiskLruCache$Snapshot;Ljava/lang/String;Ljava/lang/String;)V

    .line 715
    invoke-virtual {v2, v3}, Lcom/squareup/okhttp3/Response$Builder;->body(Lcom/squareup/okhttp3/ResponseBody;)Lcom/squareup/okhttp3/Response$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/squareup/okhttp3/Cache$Entry;->handshake:Lcom/squareup/okhttp3/Handshake;

    .line 716
    invoke-virtual {v0, v1}, Lcom/squareup/okhttp3/Response$Builder;->handshake(Lcom/squareup/okhttp3/Handshake;)Lcom/squareup/okhttp3/Response$Builder;

    move-result-object v0

    iget-wide v2, p0, Lcom/squareup/okhttp3/Cache$Entry;->sentRequestMillis:J

    .line 717
    invoke-virtual {v0, v2, v3}, Lcom/squareup/okhttp3/Response$Builder;->sentRequestAtMillis(J)Lcom/squareup/okhttp3/Response$Builder;

    move-result-object v0

    iget-wide v2, p0, Lcom/squareup/okhttp3/Cache$Entry;->receivedResponseMillis:J

    .line 718
    invoke-virtual {v0, v2, v3}, Lcom/squareup/okhttp3/Response$Builder;->receivedResponseAtMillis(J)Lcom/squareup/okhttp3/Response$Builder;

    move-result-object v0

    .line 719
    invoke-virtual {v0}, Lcom/squareup/okhttp3/Response$Builder;->build()Lcom/squareup/okhttp3/Response;

    move-result-object v0

    .line 709
    return-object v0
.end method

.method public writeTo(Lcom/squareup/okhttp3/internal/cache/DiskLruCache$Editor;)V
    .locals 7

    .prologue
    const/4 v0, 0x0

    const/16 v6, 0xa

    .line 607
    invoke-virtual {p1, v0}, Lcom/squareup/okhttp3/internal/cache/DiskLruCache$Editor;->newSink(I)Lcom/squareup/okio/Sink;

    move-result-object v1

    invoke-static {v1}, Lcom/squareup/okio/Okio;->buffer(Lcom/squareup/okio/Sink;)Lcom/squareup/okio/BufferedSink;

    move-result-object v2

    .line 609
    iget-object v1, p0, Lcom/squareup/okhttp3/Cache$Entry;->url:Ljava/lang/String;

    invoke-interface {v2, v1}, Lcom/squareup/okio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lcom/squareup/okio/BufferedSink;

    move-result-object v1

    .line 610
    invoke-interface {v1, v6}, Lcom/squareup/okio/BufferedSink;->writeByte(I)Lcom/squareup/okio/BufferedSink;

    .line 611
    iget-object v1, p0, Lcom/squareup/okhttp3/Cache$Entry;->requestMethod:Ljava/lang/String;

    invoke-interface {v2, v1}, Lcom/squareup/okio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lcom/squareup/okio/BufferedSink;

    move-result-object v1

    .line 612
    invoke-interface {v1, v6}, Lcom/squareup/okio/BufferedSink;->writeByte(I)Lcom/squareup/okio/BufferedSink;

    .line 613
    iget-object v1, p0, Lcom/squareup/okhttp3/Cache$Entry;->varyHeaders:Lcom/squareup/okhttp3/Headers;

    invoke-virtual {v1}, Lcom/squareup/okhttp3/Headers;->size()I

    move-result v1

    int-to-long v4, v1

    invoke-interface {v2, v4, v5}, Lcom/squareup/okio/BufferedSink;->writeDecimalLong(J)Lcom/squareup/okio/BufferedSink;

    move-result-object v1

    .line 614
    invoke-interface {v1, v6}, Lcom/squareup/okio/BufferedSink;->writeByte(I)Lcom/squareup/okio/BufferedSink;

    .line 615
    iget-object v1, p0, Lcom/squareup/okhttp3/Cache$Entry;->varyHeaders:Lcom/squareup/okhttp3/Headers;

    invoke-virtual {v1}, Lcom/squareup/okhttp3/Headers;->size()I

    move-result v3

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_0

    .line 616
    iget-object v4, p0, Lcom/squareup/okhttp3/Cache$Entry;->varyHeaders:Lcom/squareup/okhttp3/Headers;

    invoke-virtual {v4, v1}, Lcom/squareup/okhttp3/Headers;->name(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Lcom/squareup/okio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lcom/squareup/okio/BufferedSink;

    move-result-object v4

    const-string v5, ": "

    .line 617
    invoke-interface {v4, v5}, Lcom/squareup/okio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lcom/squareup/okio/BufferedSink;

    move-result-object v4

    iget-object v5, p0, Lcom/squareup/okhttp3/Cache$Entry;->varyHeaders:Lcom/squareup/okhttp3/Headers;

    .line 618
    invoke-virtual {v5, v1}, Lcom/squareup/okhttp3/Headers;->value(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/squareup/okio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lcom/squareup/okio/BufferedSink;

    move-result-object v4

    .line 619
    invoke-interface {v4, v6}, Lcom/squareup/okio/BufferedSink;->writeByte(I)Lcom/squareup/okio/BufferedSink;

    .line 615
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 622
    :cond_0
    new-instance v1, Lcom/squareup/okhttp3/internal/http/StatusLine;

    iget-object v3, p0, Lcom/squareup/okhttp3/Cache$Entry;->protocol:Lcom/squareup/okhttp3/Protocol;

    iget v4, p0, Lcom/squareup/okhttp3/Cache$Entry;->code:I

    iget-object v5, p0, Lcom/squareup/okhttp3/Cache$Entry;->message:Ljava/lang/String;

    invoke-direct {v1, v3, v4, v5}, Lcom/squareup/okhttp3/internal/http/StatusLine;-><init>(Lcom/squareup/okhttp3/Protocol;ILjava/lang/String;)V

    invoke-virtual {v1}, Lcom/squareup/okhttp3/internal/http/StatusLine;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v1}, Lcom/squareup/okio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lcom/squareup/okio/BufferedSink;

    move-result-object v1

    .line 623
    invoke-interface {v1, v6}, Lcom/squareup/okio/BufferedSink;->writeByte(I)Lcom/squareup/okio/BufferedSink;

    .line 624
    iget-object v1, p0, Lcom/squareup/okhttp3/Cache$Entry;->responseHeaders:Lcom/squareup/okhttp3/Headers;

    invoke-virtual {v1}, Lcom/squareup/okhttp3/Headers;->size()I

    move-result v1

    add-int/lit8 v1, v1, 0x2

    int-to-long v4, v1

    invoke-interface {v2, v4, v5}, Lcom/squareup/okio/BufferedSink;->writeDecimalLong(J)Lcom/squareup/okio/BufferedSink;

    move-result-object v1

    .line 625
    invoke-interface {v1, v6}, Lcom/squareup/okio/BufferedSink;->writeByte(I)Lcom/squareup/okio/BufferedSink;

    .line 626
    iget-object v1, p0, Lcom/squareup/okhttp3/Cache$Entry;->responseHeaders:Lcom/squareup/okhttp3/Headers;

    invoke-virtual {v1}, Lcom/squareup/okhttp3/Headers;->size()I

    move-result v1

    :goto_1
    if-ge v0, v1, :cond_1

    .line 627
    iget-object v3, p0, Lcom/squareup/okhttp3/Cache$Entry;->responseHeaders:Lcom/squareup/okhttp3/Headers;

    invoke-virtual {v3, v0}, Lcom/squareup/okhttp3/Headers;->name(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/squareup/okio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lcom/squareup/okio/BufferedSink;

    move-result-object v3

    const-string v4, ": "

    .line 628
    invoke-interface {v3, v4}, Lcom/squareup/okio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lcom/squareup/okio/BufferedSink;

    move-result-object v3

    iget-object v4, p0, Lcom/squareup/okhttp3/Cache$Entry;->responseHeaders:Lcom/squareup/okhttp3/Headers;

    .line 629
    invoke-virtual {v4, v0}, Lcom/squareup/okhttp3/Headers;->value(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/squareup/okio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lcom/squareup/okio/BufferedSink;

    move-result-object v3

    .line 630
    invoke-interface {v3, v6}, Lcom/squareup/okio/BufferedSink;->writeByte(I)Lcom/squareup/okio/BufferedSink;

    .line 626
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 632
    :cond_1
    sget-object v0, Lcom/squareup/okhttp3/Cache$Entry;->SENT_MILLIS:Ljava/lang/String;

    invoke-interface {v2, v0}, Lcom/squareup/okio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lcom/squareup/okio/BufferedSink;

    move-result-object v0

    const-string v1, ": "

    .line 633
    invoke-interface {v0, v1}, Lcom/squareup/okio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lcom/squareup/okio/BufferedSink;

    move-result-object v0

    iget-wide v4, p0, Lcom/squareup/okhttp3/Cache$Entry;->sentRequestMillis:J

    .line 634
    invoke-interface {v0, v4, v5}, Lcom/squareup/okio/BufferedSink;->writeDecimalLong(J)Lcom/squareup/okio/BufferedSink;

    move-result-object v0

    .line 635
    invoke-interface {v0, v6}, Lcom/squareup/okio/BufferedSink;->writeByte(I)Lcom/squareup/okio/BufferedSink;

    .line 636
    sget-object v0, Lcom/squareup/okhttp3/Cache$Entry;->RECEIVED_MILLIS:Ljava/lang/String;

    invoke-interface {v2, v0}, Lcom/squareup/okio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lcom/squareup/okio/BufferedSink;

    move-result-object v0

    const-string v1, ": "

    .line 637
    invoke-interface {v0, v1}, Lcom/squareup/okio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lcom/squareup/okio/BufferedSink;

    move-result-object v0

    iget-wide v4, p0, Lcom/squareup/okhttp3/Cache$Entry;->receivedResponseMillis:J

    .line 638
    invoke-interface {v0, v4, v5}, Lcom/squareup/okio/BufferedSink;->writeDecimalLong(J)Lcom/squareup/okio/BufferedSink;

    move-result-object v0

    .line 639
    invoke-interface {v0, v6}, Lcom/squareup/okio/BufferedSink;->writeByte(I)Lcom/squareup/okio/BufferedSink;

    .line 641
    invoke-direct {p0}, Lcom/squareup/okhttp3/Cache$Entry;->isHttps()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 642
    invoke-interface {v2, v6}, Lcom/squareup/okio/BufferedSink;->writeByte(I)Lcom/squareup/okio/BufferedSink;

    .line 643
    iget-object v0, p0, Lcom/squareup/okhttp3/Cache$Entry;->handshake:Lcom/squareup/okhttp3/Handshake;

    invoke-virtual {v0}, Lcom/squareup/okhttp3/Handshake;->cipherSuite()Lcom/squareup/okhttp3/CipherSuite;

    move-result-object v0

    invoke-virtual {v0}, Lcom/squareup/okhttp3/CipherSuite;->javaName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Lcom/squareup/okio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lcom/squareup/okio/BufferedSink;

    move-result-object v0

    .line 644
    invoke-interface {v0, v6}, Lcom/squareup/okio/BufferedSink;->writeByte(I)Lcom/squareup/okio/BufferedSink;

    .line 645
    iget-object v0, p0, Lcom/squareup/okhttp3/Cache$Entry;->handshake:Lcom/squareup/okhttp3/Handshake;

    invoke-virtual {v0}, Lcom/squareup/okhttp3/Handshake;->peerCertificates()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v2, v0}, Lcom/squareup/okhttp3/Cache$Entry;->writeCertList(Lcom/squareup/okio/BufferedSink;Ljava/util/List;)V

    .line 646
    iget-object v0, p0, Lcom/squareup/okhttp3/Cache$Entry;->handshake:Lcom/squareup/okhttp3/Handshake;

    invoke-virtual {v0}, Lcom/squareup/okhttp3/Handshake;->localCertificates()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v2, v0}, Lcom/squareup/okhttp3/Cache$Entry;->writeCertList(Lcom/squareup/okio/BufferedSink;Ljava/util/List;)V

    .line 648
    iget-object v0, p0, Lcom/squareup/okhttp3/Cache$Entry;->handshake:Lcom/squareup/okhttp3/Handshake;

    invoke-virtual {v0}, Lcom/squareup/okhttp3/Handshake;->tlsVersion()Lcom/squareup/okhttp3/TlsVersion;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 649
    iget-object v0, p0, Lcom/squareup/okhttp3/Cache$Entry;->handshake:Lcom/squareup/okhttp3/Handshake;

    invoke-virtual {v0}, Lcom/squareup/okhttp3/Handshake;->tlsVersion()Lcom/squareup/okhttp3/TlsVersion;

    move-result-object v0

    invoke-virtual {v0}, Lcom/squareup/okhttp3/TlsVersion;->javaName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Lcom/squareup/okio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lcom/squareup/okio/BufferedSink;

    move-result-object v0

    .line 650
    invoke-interface {v0, v6}, Lcom/squareup/okio/BufferedSink;->writeByte(I)Lcom/squareup/okio/BufferedSink;

    .line 653
    :cond_2
    invoke-interface {v2}, Lcom/squareup/okio/BufferedSink;->close()V

    .line 654
    return-void
.end method