#ifndef SYSTEM_H
#define SYSTEM_H

#include <QObject>

class System : public QObject
{
    Q_OBJECT
    Q_PROPERTY(bool carLocked READ carLocked WRITE setcarLocked NOTIFY carLockedChanged FINAL)
    Q_PROPERTY(int outdoorTemp READ outdoorTemp WRITE setoutdoorTemp NOTIFY outdoorTempChanged FINAL)
    Q_PROPERTY(QString userName READ userName WRITE setuserName NOTIFY userNameChanged FINAL)
    Q_PROPERTY(QString currentTime READ currentTime WRITE setcurrentTime NOTIFY currentTimeChanged FINAL)

public:
    explicit System(QObject *parent = nullptr);

    bool carLocked() const;
    void setcarLocked(bool newCarLocked);

    int outdoorTemp() const;
    void setoutdoorTemp(int newOutdoorTemp);

    QString userName() const;
    void setuserName(const QString &newUserName);

    QString currentTime() const;
    void setcurrentTime(const QString &newCurrentTime);

signals:
    void carLockedChanged();
    void outdoorTempChanged();

    void userNameChanged();
    void currentTimeChanged();

private:
    bool m_carLocked;
    int m_outdoorTemp;
    QString m_userName;
    QString m_currentTime;
};

#endif // SYSTEM_H
