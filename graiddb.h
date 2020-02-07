#ifndef GRAIDDB_H
#define GRAIDDB_H

#include <QObject>

class GraidDB : public QObject
{
    Q_OBJECT
public:
    explicit GraidDB(QObject *parent = nullptr);

signals:

};

#endif // GRAIDDB_H
